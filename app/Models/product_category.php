<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\category;

class product_category extends Model
{
    use HasFactory;
    public function category_name()
    {
      return $this->hasMany(category::class, 'id', 'category_id');//category classı ve product tablosundaki ilişki product_Categories de tutulmaktadır.
    }
    public function product_name()
    {
      return $this->hasMany(product::class, 'id', 'product_id');//category classı ve product tablosundaki ilişki product_Categories de tutulmaktadır.
    }

}
