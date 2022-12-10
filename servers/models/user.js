//IMPORT FROM PACKAGESconst 
mongoose = require('mongoose');
const userSchema = mongoose.Schema(
    {
        firstname:
        {
            required: true,
            trim:true, //remove comas
            type: String
        },
        lastname:
        {
            required: true,
            type: String,
            trim: true
        },
        email:{
            required: true,
            trim: true, //remove comas
            type: String,
            validate:{
                validator: function(value){
                    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
                    return value.match(re);
                },
                message:'Email not valid',
            }
        },
        password:{
            required: true,
            type: String,
            validate:{
                validator: function(value){
                    return value.length > 6;
                },
                message:'Please select a strong passowrd.',
            }
        },
        type: {
            type: String,
            default: 'user',
        }

    }
)
const User = mongoose.model("User", userSchema);
module.exports=User;