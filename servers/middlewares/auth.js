const jwt= require('jsonwebtoken');
const auth = async(req, res, next) => {
    try {
        const token = req.header('x-auth-token');
        if(!token){
            return res.status(401).json({msg: 'No auth Token, acess denied'});
        }
        const verified = jwt.verify(token, 'passwordkey');
        if(!verified) return res.status(401).json({msg: 'No auth Token, authorization denied'});
        req.user = verified.id;
        req.token = token;
        next();

    } catch (err) {
        res.status(500).json({error:error.message});
    }
}
const sendVerifyEmail = async(name, email, user_id) =>{
    try {
        nodemailer.createTransport({
            host: 'smtp.gmail.com',
            port: 587,
            secure: false,
            requireTLS: true,
            auth:{

            }
        })
    } catch (err) {
        res.status(500).json({error:error.message});
    }
}
module.exports = auth;