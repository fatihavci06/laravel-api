<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Validator;

class UserStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required | min:3',
            'email'=>'required|email',
            'password'=>'required|min:6',
        ];
    }
    public function messages(){ //burada örneğin ad inputunun required özelliği için kendi mesajımızı oluşturduk
        return ['name.required'=>'Bu alanı boş bırakamam',
                'name.min'=>'Minimum bu kadar olsun'
            ];

    }
    
}
