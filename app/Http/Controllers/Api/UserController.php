<?php

namespace App\Http\Controllers\Api;
use App\Http\Resources\UserResource;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\UserStoreRequest;
use Validator;
class UserController extends ApiController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        

        $data=User::all();
        $data->each(function($item){
            $item->setAppends(['fullname']);
        });
        return response()->json($data);
    }
    public function index2()
    {   
        
        
        $data=User::all();
        return response()->json($data);
    }
    public function index3()
    {   
        
        
        return view('vue');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserStoreRequest $request)
    {
        
        
        $user=new User;
         $user->name=$request->name;
         $user->email=$request->email;
         $user->email_verified_at=now();
         $user->password=bcrypt($request->password);
         

         $user->save();
         $token=$user->createToken('myapptoken')->plainTextToken;
        return response()->json(['message'=>'kaydedildi','data'=>$user,'token'=>$token]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return response()->json($user);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        
        $user->name=$request->name;
         $user->email=$request->email;
         $user->email_verified_at=now();
          $user->password=bcrypt($request->password);
         
         $user->save();


        return response()->json(['message'=>'kaydedildi','data'=>$user]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        return response()->json(['message'=>'kullanıcı silindi']);
    }
    public function custom1(Request $request)
    {
       return response()->json(['message'=>'$request->s']);
    }
     public function custom2()
    {
        $data=User::all();
        UserResource::withoutWrapping();
        return UserResource::collection($data);
    }
    public function custom3()
    {
        $data=User::all();

        return UserResource::collection($data)->additional([
            'meta'=>[
                'total_users'=>$data->count(),
                'custom'=>'val'
            ]
        ]);
    }
}
