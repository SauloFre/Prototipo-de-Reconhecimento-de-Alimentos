const express = require("express");

const router = express.Router();

const userRegisterController = require("../controllers/UserRegisterController");

router.get("/user-register", userRegisterController.getUserRegisterPage);

router.post("/user-register", userRegisterController.saveUserRegister);

module.exports = router;