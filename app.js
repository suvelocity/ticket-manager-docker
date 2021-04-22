const express = require("express");
const morgan = require("morgan");
const app = express();
const ticketsRoutes = require("./routes/tickets");

app.use(express.static("client/build"));

app.use("/api/tickets", ticketsRoutes);

module.exports = app;
