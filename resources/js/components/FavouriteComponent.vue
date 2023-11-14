<template>
    <div>

    <button v-if="show" @click.prevent="unsave()" class="btn btn-dark" style="width: 100%;">Unsave job</button>

    <button v-else @click.prevent="save()"   class="btn btn-info" style="width: 100%;">Save job</button>


        
    </div>
</template>

<script>
    export default {
        props:['jobid','favorited'],

        data(){
            return{
                show:true
            }
        },

        mounted(){
           this.show =  this.jobFavorited ? true:false;

        },


        computed:{
            jobFavorited(){
                return this.favorited
            }
        },

        methods:{
            save(){
                axios.post('/save/'+this.jobid).then(response=>this.show=true).catch(error=>alert('error'))

            },
            unsave(){

                axios.post('/unsave/'+this.jobid).then(response=>this.show=false).catch(error=>alert('error'))


            }
        }
        
    }
</script>
