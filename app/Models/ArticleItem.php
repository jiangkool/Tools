<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ArticleItem extends Model
{
	protected $fillable = [
		'article_id',
		'feature_id',
		'iscan',
		'content',
	];

	public function feature()
	{
		return $this->hasOne(Feature::class,'id','feature_id');
	}

}
