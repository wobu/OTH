var url = require("url");

var EXCHANGE_RATE_EUR_USD = 1.0693;

function handleCurrencyConversion(request, response) {
    var originalCurrency = parseRequestData(request);
    var targetCurrency = convertCurrencies(originalCurrency);
    
    writeHead(200, response);
    
    var responseDataCurrencies = {
        "usd": targetCurrency
    };
    
    var responseDataString = JSON.stringify(responseDataCurrencies);
    response.end(responseDataString);
}

function writeHead(statusCode, response) {
    response.writeHead(statusCode,
            {"Content-Type": "text/plain",
             "Access-Control-Allow-Origin": "*"  
            });
}

function parseRequestData(request) {
    var parsedUrl = url.parse(request.url, true);
    var originalCurrency = parsedUrl.query.originalCurrency;
    return originalCurrency;
}

function convertCurrencies(originalCurrency) {
    // we always assume that we are converting from Euro to USD
    return originalCurrency * EXCHANGE_RATE_EUR_USD;
}

exports.convertCurrencies = handleCurrencyConversion;
