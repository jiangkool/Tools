<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FrontUser extends Model
{
    protected $fillable = [
    	'openid',
		'username',
		'password',
		'token'
	];

	public static function isLoginedUser($token)
	{
		if (self::where('token',$token)->first()) {
			return true;
		}else{
			return false;
		}
	}

}
