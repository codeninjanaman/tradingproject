//import from packages 

const express = require('express');
//similar to import 
const mongoose =require('mongoose');


//import from other files
const authRouter=require('./routes/auth');


const PORT = 3000;

const app = express(); // saving in constant
const DB = "mongodb+srv://namuv7:OeRIl9MU61one2DG@cluster0.ylq5h1b.mongodb.net/?retryWrites=true&w=majority";

//middleware
// client --> middleware --> server -->client

app.use(express.json());
app.use(authRouter);
 
mongoose
.connect(DB)
.then(()=>{
    console.log("Connected To Database");           
}).catch((e)=>{
    console.log(e);
});

// create API
app.listen(PORT,"0.0.0.0",()=>{
    console.log(`connected at port ${PORT}`);

});
//localhost if IP not specified
// 0.0.0.0 access anywhere 