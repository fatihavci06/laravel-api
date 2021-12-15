@extends('layouts.app')

@section('content')
<div id="app">
      <upload-component></upload-component>

        
    </div>
@endsection

@section('footer')
<!--<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <script type="text/javascript">
       $(document).ready(function() {
        var output = document.getElementById('output');
            $("#uploadBtn").click(function(){
                var data = new FormData();
                data.append('userId', '1');
                data.append('uploadFile', document.getElementById('uploadFile').files[0]);
                var config = {
                    headers: { 'Content-Type': 'multipart/form-data' },
                    onUploadProgress: function(progressEvent) {
                        var percentCompleted = Math.round( (progressEvent.loaded * 100) / progressEvent.total );
                    }
                };
                axios.post('http://laravelapi.test/api/upload', data, config)
                    .then(function (res) {
                        output.innerHTML = res.data.url;
                    })
                    .catch(function (err) {
                        output.className = 'text-danger';
                        output.innerHTML = err.message;
                    });
            });
            
});
    </script>-->
@endsection