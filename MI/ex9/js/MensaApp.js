var MensaApp = function () {

    // doc: http://132.199.139.24/~baa56852/www/mensa/
    var baseURL = "http://132.199.139.24:9001/mensa/uni/"
    var days = ['mo', 'di', 'mi', 'do', 'fr']

    var request = null;

    function privateInit() {
        // TODO error handling
        if (typeof (fetch) !== 'undefined') {
            request = function (day) {
                return function () {
                    fetch(baseURL + day).then(x => {
                        return x.json();
                    }).then(j => {
                        return showMensaPlan(j);
                    });
                };
            };
        }
        else if (typeof (jQuery) !== 'undefined') {
            request = function (day) {
                return function () {
                    $.ajax({
                        url: baseURL + days,
                        dataType: "json",
                        succes: function (data) { showMensaPlan(data); },
                    });
                };
            };
        }

        if (typeof (jQuery) !== 'undefined') {
            $("#get_monday_button").on("click", request(days[0]));
            $("#get_tuesday_button").on("click", request(days[1]));
            $("#get_wednesday_button").on("click", request(days[2]));
            $("#get_thursday_button").on("click", request(days[3]));
            $("#get_friday_button").on("click", request(days[4]));
        } else {
            document.getElementById("get_monday_button").addEventListener("click", request(days[0]));
            document.getElementById("get_tuesday_button").addEventListener("click", request(days[1]));
            document.getElementById("get_wednesday_button").addEventListener("click", request(days[2]));
            document.getElementById("get_thursday_button").addEventListener("click", request(days[3]));
            document.getElementById("get_friday_button").addEventListener("click", request(days[4]));
        }
    }

    function showMensaPlan(data) {
        // console.log(data);
        // TODO render as html
        $("#mensa_results").text(JSON.stringify(data));
    }

    return {
        init: privateInit
    };
}();

function initMensaApp() {
    MensaApp.init();
}