<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    public function book_book_cate(){
    	return $this->hasOne('App\Http\Model\Book_book_cate');
    }
}
