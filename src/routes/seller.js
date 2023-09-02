const express = require("express");
const router = express.Router();
const sellerController = require("../controller/seller");
const upload = require("../middlewares/uploadSeller");
router
  .post("/register", sellerController.registerSeller)
  .post("/login", sellerController.loginSeller)
  .put("/update/:id", upload, sellerController.updateSeller)
  .get("/profile", sellerController.getAllSeller)
  .get("/:id", sellerController.getDetailSeller);

module.exports = router;
