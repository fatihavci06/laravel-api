<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    </head>
    <body class="antialiased">
        <div class="col-md-4 mx-auto mt-3">
@if($errors->any()) //bu şekilde hatalar yakalanır kural bu
                        @foreach($errors->all() as $e)
                        <li>{{$e}}</li>
                        @endforeach
                    @endif
        <form method="post" action="{{route('auth.post')}}" >
            @csrf
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
               
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
              </div>
              
              <button type="submit" class="btn btn-primary">Submit</button>
         </form>
        </div>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    </body>
</html>
