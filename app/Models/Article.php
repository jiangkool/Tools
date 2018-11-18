<?php

namespace App\Models;

// use Nicolaslopezj\Searchable\SearchableTrait;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    // use SearchableTrait;

    protected $fillable = [
		'title',
		'category_id',
		'thumb',
		'banner',
		'other_name',
		'type',
    ];

    protected $searchable = [
        'columns' =>[
            'articles.title'=>10,
            'articles.other_name'=>10
        ],
        'joins' => [
            'article_items' => ['articles.id','article_items.article_id'],
        ],
    ];

    public function items()
    {
    	return $this->hasMany(ArticleItem::class);
    }

    public function category()
    {
    	return $this->belongsTo(Category::class);
    }

    public static function getArticleList($catid)
    {
        if (empty($catid)) {
            $articles=self::all()->load('items');

        }else{
            $articles=self::where('category_id',$catid)->get()->load('items');
        }
        $data=$articles->map(function($item,$key){
            $sitems=collect($item['items'])->map(function($sitem){
                $feature=Feature::find($sitem['feature_id']);
                return [
                    'feature_id' => $feature->name,
                    'iscan'      => $sitem['iscan']
                ];
            });
            return [
                'id'=>$item['id'],
                'title'=>$item['title'],
                'thumb'=>config('admin.upload.host').$item['thumb'],
                'article_items'=>$sitems
            ];
        });

        return $data;
    }

    public static function search($keywords)
    {

        if (empty($keywords)) {
            $articles=self::all()->load('items');

        }else{
            $articles=self::where('title','like','%'.$keywords.'%')->orWhere('other_name','like','%'.$keywords.'%')->get()->load('items');
        }
        //dd($articles);
        $data=$articles->map(function($item,$key){
            $sitems=collect($item['items'])->map(function($sitem){
                $feature=Feature::find($sitem['feature_id']);
                return [
                    'feature_id' => $feature->name,
                    'iscan'      => $sitem['iscan']
                ];
            });
            return [
                'id'=>$item['id'],
                'title'=>$item['title'],
                'thumb'=>config('admin.upload.host').$item['thumb'],
                'article_items'=>$sitems
            ];
        });

        return $data;
    }


}
