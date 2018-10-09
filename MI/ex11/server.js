var express = require("express");
var app = express();
var currencyConverter = require("./currencyConverter");

app.use("/", express.static("public_html"));

app.use("/currencty_converter", express.static("currency_converter"));

app.use("/convertcurrency", currencyConverter.convertCurrencies);



var server = app.listen(8080);

