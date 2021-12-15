<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\category;
use App\Models\product_category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
class CategoryController extends ApiController //kalıtım aldığımız ApiControllerin fonksiyonlarından faydalancaz
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=category::with('products.product_name')->get();
        return $this->apiResponse(ResultType::Success,$data,'Categories fetched',200); //apiResponse kalıtım aldığımız ApiControllera ait bir fonksiyondur.REsultType ApiController içerisinde olduğu için burada kullanabildik,kalıtımdan ötürü
        //return response()->json($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $category=new category;
         $category->name=$request->name;
         $category->slug=Str::slug($request->name);
         
         $category->save();

          return $this->apiResponse($category,'Categories kaydedildi',200);//apiResponse kalıtım aldığımız ApiControllera ait bir fonksiyondur
       // return response()->json(['message'=>'kaydedildi','data'=>$category]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(category $category)
    {
       
       return $this->apiResponse($category,'Categories fetched',200);//apiResponse kalıtım aldığımız ApiControllera ait bir fonksiyondur
       // return response()->json($category);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, category $category)
    {
             $category->name=$request->name;
             $category->slug=Str::slug($request->name);
         
             $category->save();
             return $this->apiResponse($category,'Categories guncellendi',200);//apiResponse kalıtım aldığımız ApiControllera ait bir fonksiyondur
       // return response()->json(['data'=>$category,'message'=>'guncellendi']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(category $category)
    {
        $category->delete();
        return $this->apiResponse(null,'Categories silindi',200);//apiResponse kalıtım aldığımız ApiControllera ait bir fonksiyondur
        //return response()->json(['message'=>'urun silindi']);
    }
    public function custom1()
    {
        $data=category::pluck('id','name');

        return response()->json($data);
    }
    public function report1()
    {
        $data=DB::table('product_categories as pc')
        ->selectRaw('c.id,count(*) as total')
        ->join('categories as c', 'c.id', '=', 'pc.category_id')
        ->join('products as p', 'p.id', '=', 'pc.product_id')
        ->groupBy('c.id')
        ->orderByRaw('count(*) asc')
        ->get();
        return response()->json($data);
    }
}
