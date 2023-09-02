const express = require("express");
const router = express.Router();
const userController = require("../controller/user");
const upload = require("../middlewares/uploadSeller");

router
  .post("/register", userController.registerUser)
  .post("/login", userController.loginUser)
  .put("/update/:id",upload, userController.updateUser)
  .get("/", userController.getAllUser)
  .get("/:id", userController.getDetailUser);

module.exports = router;
