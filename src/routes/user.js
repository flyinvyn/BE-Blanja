const express = require("express");
const router = express.Router();
const userController = require("../controller/user");
router
  .post("/register", userController.registerUser)
  .post("/login", userController.loginUser)
  .put("/update/:id", userController.updateUser)
  .get("/", userController.getAllUser)
  .get("/:id", userController.getDetailUser);

module.exports = router;