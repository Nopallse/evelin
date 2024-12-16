const express = require("express");
const { verifyToken } = require("../middleware/VerifyToken.js");
const { getUser } = require("../controllers/Users.js");
const Users = require("../models/UserModel.js");
const router = express.Router();


router.get('/', (req, res) => {
    res.redirect('/dashboard'); 
  });
  
  
router.get("/dashboard", verifyToken('mahasiswa'), async function (req, res) {
      const user = await getUser(req, res); 
      res.render("user/dashboard", { user , page:'dashboard' });
    });


module.exports = router;


