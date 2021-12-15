<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;

use App\Http\Requests\UploadRequest;
class UploadController extends Controller
{
    //
    public function upload(UploadRequest $request)
    {
        if ($request->file('file')->isValid()) { //isvalid()= uploadbaşarıyla gerçekleştiyse 
            $file                  = $request->file('file');//formdan gönderdiğimiz uploadFile isimlifile
            $path                  = $request->file->path();
            $extension             = $request->file->extension();//dosyanın uzantısı
            $fileNameWithExtension = $file->getClientOriginalName();//file name ve uzantısı
            $fileNameWithExtension = $request->userId . '-' . time() . '.' . $extension;

            $path = $request->file->storeAs('uploads/images', $fileNameWithExtension, 'public');

            return response()->json(['url' => asset("storage/$path"),'success'=>'Başarıyla kaydedildi']);
        }
    }
}
