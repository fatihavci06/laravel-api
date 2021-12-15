<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Example Component</div>

                    <div class="card-body">
                        Token:{{token}} 
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    
        
    export default {
        name:"users",
        
        data(){
            return {
            token:this.$cookies.get("user"),
             
            }
        },
        mounted(){
            console.log(this.token);
             axios.get(`kullanicilar`,{
                            headers: {
                        Authorization: 'Bearer '+this.token
                    }
                        }).then(({data})=>{
                    
                    console.log(data)
                }).catch(({ response })=>{
                    console.error(response)
                })
        },
        methods:{
            
                
            
            ac:function (id) {
                this.modalid=id;
               this.visible=true;
               
            },
        }
    }
    

</script>
