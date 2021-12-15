<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
class product_categoriesSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('product_categories')->insert(['product_id'=>1,'category_id'=>1]);
        DB::table('product_categories')->insert(['product_id'=>1,'category_id'=>2]);
        DB::table('product_categories')->insert(['product_id'=>2,'category_id'=>1]);
        DB::table('product_categories')->insert(['product_id'=>2,'category_id'=>2]);
        DB::table('product_categories')->insert(['product_id'=>2,'category_id'=>3]);

    }
}
