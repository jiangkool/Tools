<?php

namespace App\Http\Controllers;

use App\Models\FrontUser;
use App\Models\Article;
use App\Models\Feature;
use Illuminate\Http\Request;
use EasyWeChat\Foundation\Application;

class WechatController extends Controller
{
	protected $miniProgram; 

	public function __construct()
	{
		$app = new Application(config('wechat'));
		$this->miniProgram = $app->mini_program;
	}

    public function login(Request $request)
    {
    	$data=$this->miniProgram->sns->getSessionKey($request->code);
 		$fronUser=FrontUser::updateOrCreate(['openid'=>$data->openid],['openid'=>$data->openid,'token'=>md5($data->session_key)]);
 		return response()->json(['token'=>$fronUser->token]);
    }

    public function getArticleList(Request $request)
    {	
    	if (!empty($request->token) && FrontUser::isLoginedUser($request->token)) {
	    		$articles=Article::getArticleList($request->cat_id);
	    		return response()->json($articles);		
    	}

    }

    public function show(Request $request,Article $article)
    {
    	if (!empty($request->token) && FrontUser::isLoginedUser($request->token)) {
    		$data=$article->load('items');
    		$sitems=collect($data['items'])->map(function($sitem){
	                $feature=Feature::find($sitem['feature_id']);
	                return [
	                    'feature' => $feature->name,
	                    'iscan'   => $sitem['iscan'],
	                    'content' => $sitem['content']
	                ];
	            });

	            $sdata= [
	                'id'=>$data->id,
	                'title'=>$data->title,
	                'other_name'=>$data->other_name,
	                'type'=>$data->type,
	                'thumb'=>config('admin.upload.host').$data->thumb,
	                'banner'=>config('admin.upload.host').$data->banner,
	                'items'=>$sitems
	            ];


    		return response()->json($sdata);
    	}
    }


    public function search(Request $request)
    {

    	if (!empty($request->token) && FrontUser::isLoginedUser($request->token)) {
	    		$articles=Article::search($request->keywords);
	    		return response()->json($articles);		
    	}
    }

}
