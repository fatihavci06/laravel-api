<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Laravel Vue JS File Upload Example - ItSolutionStuff.com</div>
    
                    <div class="card-body">
                        <div v-if="success != ''" class="alert alert-success" role="alert">
                          {{success}}
                        </div>
                        <form @submit="formSubmit" enctype="multipart/form-data">
                        
                        <strong>File:</strong>
                        <input type="file" class="form-control" v-on:change="onFileChange">
    
                        <button class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
   
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
            console.log(this.token)
        },
        data() {
            return {
              name: '',
              file: '',
              success: '',
              token:this.$cookies.get("user")

            };
        },
        options:{
      
      processData: false, 
      contentType: false 
    },
        methods: {
            onFileChange(e){
                console.log(e.target.files[0]);
                this.file = e.target.files[0];
            },
            formSubmit(e) {
                e.preventDefault();
                let currentObj = this;
                if(this.file===''){
                    currentObj.success = 'lütfen dosya seçiniz';
                }
   
                const config = {
                    headers: { 'content-type': 'multipart/form-data' }
                }
    
                let formData = new FormData();
                formData.append('file', this.file);

                
                axios.post('http://laravelapi.test/api/upload', formData, config)
                .then(function (response) {
                    currentObj.success = response.data.success;
                    console.log(response);
                })
                .catch(function (error) {
                    currentObj.output = error;
                    console.log(error);


                });
            }
        }
    }
</script>