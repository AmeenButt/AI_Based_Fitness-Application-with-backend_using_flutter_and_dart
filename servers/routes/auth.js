//IMPORT FROM PACKAGES
const express = require("express");
const authRouter = express.Router();
const bcryptjs=require("bcryptjs");
const jwt= require("jsonwebtoken");
//IMPORT FROM FILES
const User= require('../models/user');
const auth = require("../middlewares/auth");

//EXPORTING
module.exports = authRouter;
authRouter.get("/user", (req, res)=>{
    res.json( {name: "Ameen Butt"});
})

authRouter.post("/api/signup", async function(req, res){
   try{
    const { 'firstname': firstname, 'lastname': lastname , email, password } = req.body;
    const exsistingUser = await User.findOne({ email });
    if (exsistingUser) {
        return res
        .status(400)
        .json({
            msg : "User with this email already exist! "
        })
    }
    const hashedPassword = await bcryptjs.hash(password,8);
    let user = new User({
        firstname,
        lastname,
        email,
        password : hashedPassword,
    });
    user = await user.save();
    res.json(user);
}catch(e){
    res.status(500).json({
        error : e.message
    });
}
})
authRouter.post("/api/signin", async (req, res) => {
    try{
     const {email, password}=req.body;
        const user=await User.findOne({email});
        if(!user){
            return res.status(400).json({
                msg: "User with this email does not exsist",
            })
        }
        const isMatch= await bcryptjs.compare(password,user.password);
        if(!isMatch){
            return res.status(400).json({
                msg: "Password Incorrect!",
            })
        }
        const token= jwt.sign({id: user._id}, "passwordKey");
        res.json({token, ...user._doc});
    }catch(e){
    res.status(500).json({
            error : e.message
    });
    }
})
authRouter.post("/api/tokenisValid", async (req, res) => {
    try{
        const token=req.header('x-auth-token');
        if(!token){
            return res.json(false);
        }
        const verified = jwt.verify(token, 'passwordkey');
        if(!verified) return res.json(false);
        const user= await User.findById(verified.id);
        if(!user) return res.json(false);
        res.json(true);
    }catch(e){
    res.status(500).json({
            error : e.message
    });
    }
})

authRouter.get("/", auth, async(req, res) => {
    const user= await User.findById(req.user);
    res.json({ ...user._doc, token:req.token });
});