const express = require("express");

const router = express.Router();

const loginController = require("../controllers/LoginController");

router.get("/", loginController.getLoginUserPage);

router.get("/login", loginController.getLoginUserPage);

router.post("/login", loginController.login);

module.exports = router;