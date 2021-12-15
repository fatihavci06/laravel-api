<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ProductWithCategoriesResource;
class ProductController extends Controller
{
     
    public function index(Request $request)
    {
        
        $data=product::where('name','like','%'.$request->arama.'%')->orderBy('id','asc')->paginate(10);
        $data=product::with('categories.category_name')->paginate(2);
        $data->makeHidden(['slug','price']);
        return response()->json($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
         $product=new product;
         $product->name=$request->name;
         $product->slug=Str::slug($request->name);
         $product->price=$request->price;
         $product->description=$request->description;
         $product->save();


        return response()->json(['message'=>'kaydedildi','data'=>$product]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\product  $product
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try{ //eğer kayıt dbde varsa döner yoksa catche gider
            $data=product::findOrfail($id); 
            return response()->json($data);
        }
        catch (\Exception $e) {

               return response()->json(['message'=>'Kayıt Bulunamadı']);
            }        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, product $product)
    {
       /* $input=$request->all();
        $product->update($input);kısayol
        */
        $product->name=$request->name;
         $product->slug=Str::slug($request->name);
         $product->price=$request->price;
         $product->description=$request->description;
         $product->save();
        return response()->json(['data'=>$product,'message'=>'guncellendi']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(product $product)
    {
        $product->delete();
        return response()->json(['message'=>'urun silindi']);
    }
    public function custom1()
    {
        $data=product::selectRaw('id as product_id,name as product_name')->orderBy('id','desc')->limit(10)->get();
        return response()->json($data);
    }
    public function custom2()
    {
        $data=product::orderBy('id','desc')->limit(10)->get();
        $mapped=$data->map(function($data){
            return[
                'product_id'=>$data->id,
                'product_name'=>$data->name,
                'product_price'=>$data->price*1.03
            ];
        });
        return response()->json($mapped);
    }
    public function custom3()
    {
       $products=product::paginate(2);
      
       return ProductResource::collection($products);
    }

    public function listWithCategories(){
            $products=product::with('categories')->paginate(2);
            return ProductWithCategoriesResource::collection($products);
    }
}
