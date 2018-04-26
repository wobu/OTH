const Elements = { input_sentence: HTMLElement, pig_latin_output: HTMLElement, translate_button: HTMLButtonElement }

function initPigLatinGenerator() {
    Elements.input_sentence = document.getElementById("input_sentence");
    Elements.pig_latin_output = document.getElementById("pig_latin_output");
    Elements.translate_button = document.getElementById("generate_pig_latin_button");
    Elements.translate_button.addEventListener("click", generate_pig_latin_button_click);
}

function generate_pig_latin_button_click() {
    console.log("generate_pig_latin_button_click");
    Elements.pig_latin_output.innerHTML = translate_text(Elements.input_sentence.value);
}

/**
 * Translates a single token according to the pig latin rules.
 * @param {String} token 
 */
function translate_token(token) {
    var vocals = ['a', 'e', 'i', 'o', 'u'];

    if (vocals.indexOf(token[0]) > -1) {
        return (token + "yay");
    } else {
        var firstVocalIndex = Math.min(
            ...vocals
                .map(vocal => token.indexOf(vocal))
                .filter(index => index > 0)
        );

        console.log("Token: " + token + " vocalIndex: " + firstVocalIndex);

        var consonantCluster = token.substring(0, firstVocalIndex);

        return (token.substring(firstVocalIndex, token.length) + consonantCluster + "ay");
    }
}

/**
 * Translates a whole sentence to pig latin.
 * @param {String} text 
 */
function translate_text(text) {
    var tokens = text.trim().split(" ");
    // console.log(tokens);

    var translated = tokens.map(token =>
        translate_token(token)
    );

    // console.log(translated);

    return translated.join(" ");
}

