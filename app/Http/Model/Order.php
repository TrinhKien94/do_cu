<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function orderlines(){
    	return $this->hasMany('App\Http\Model\Orderline');
    }
    public function user(){
    	return $this->belongsTo('App\Http\Model\User');
    }
}
