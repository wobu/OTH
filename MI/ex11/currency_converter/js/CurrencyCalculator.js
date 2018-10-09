var urlCurrencyConverter = "../convertcurrency";

var resultsHTMLList;
var currencyInputFieldEUR;
var currencyInputFieldUSD;

function initCurrencyConverter() {
    setupClickHandlers();
    setupTargetFields();
}

function setupClickHandlers() {
    $("#getUSDValue").click(convertCurrencies);
}

function setupTargetFields() {
    currencyInputFieldEUR = document.getElementById("input_EUR_value");
    currencyInputFieldUSD = document.getElementById("input_USD_value");
}

function convertCurrencies(event) {
    //identify original and target currency
    var conversionRequest = createConversionrequest(event);
    
    $.ajax({
        url: urlCurrencyConverter,
        dataType: "json",
        data: {
            "originalCurrency": conversionRequest.originalCurrency
        },
        success: resultsReceived,
        error: errorRequestingData
    });
}

function createConversionrequest(event) {
    return {
            "originalCurrency": currencyInputFieldEUR.value,
            "targetCurrency": currencyInputFieldUSD.value
    };
}

function resultsReceived(data) {
    console.log("Results from currency comnverter webservice received...");
    updatePage(data);
}

function updatePage(data) {
    currencyInputFieldUSD.value = data.usd;
}

function errorRequestingData(requestObject, textStatus, errorThrown) {
    alert("Error fetching mensa data..." + textStatus + ":" + errorThrown);
}