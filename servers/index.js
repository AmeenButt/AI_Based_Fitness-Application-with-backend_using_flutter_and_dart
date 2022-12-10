//IMPORT FROM PACKAGES
const express = require('express');
const mongoose = require('mongoose');

//IMPORT FROM FILES
const authRouter = require('./routes/auth.js');

//INITIALIZATION
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://ameenbutt:Lolipop1122@cluster0.sh2vvjv.mongodb.net/?retryWrites=true&w=majority"
mongoose.set('strictQuery', true);

//MIDDLEWARE
app.use(express.json());
app.use('/auth', authRouter);
//connections
mongoose
.connect(DB)
.then(function(){
    console.log('Connection successful');
}).catch(function(e){
    console.log(e);
});
app.listen(PORT, "0.0.0.0", function(){
    console.log('Connected to port ' + PORT );
});

