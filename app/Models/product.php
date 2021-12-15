<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\product_category;

class product extends Model
{
    use HasFactory;
    protected $guarded = [''];
   // protected $hidden = ['slug'];
    public function categories()
    {
      return $this->hasMany(product_category::class, 'product_id', 'id');//category classı ve product tablosundaki ilişki product_Categories de tutulmaktadır.
    }

}
