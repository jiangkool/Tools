<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Feature;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ArticleController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('文档管理');
            $content->description('列表');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('文档管理');
            $content->description('编辑');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('文档管理');
            $content->description('新增');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Article::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->title('标题');
            $grid->category()->name('所属分类');
            $grid->thumb('列表缩略图')->image('',80,80);
            $grid->banner('内容banner图')->image('',80,80);
            $grid->other_name('又名');
            $grid->type('类型')->display(function($type){
                return $type===0?'饮食':'生活';
            })->label('success');

            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Article::class, function (Form $form) {

            $form->display('id', 'ID');
            if (!request()->route()->parameter('article')) {
                $form->text('title','标题')->rules('required|unique:articles');
            }else{
                $form->text('title','标题')->rules('required');
            }
            $form->text('other_name','又名');
            $form->select('category_id','所属栏目')->options(Category::pluck('name','id'))->setWidth(3,2);
            $form->image('thumb','列表缩略图')->removable()->rules('required');
            $form->image('banner','内容banner图')->removable()->rules('required');
            $form->radio('type','类型')->options(['0'=>'饮食类','1'=>'生活类'])->default(0);
            $form->hasMany('items', '选项', function (Form\NestedForm $form) {  
                    $form->select('feature_id','特征名称')->options(Feature::pluck('name','id'));
                    $form->radio('iscan','能OR不能')->options(['0'=>'不能','1'=>'能','2'=>'谨慎'])->default(1);
                    $form->textarea('content','解释');
            });

        });
    }
}
