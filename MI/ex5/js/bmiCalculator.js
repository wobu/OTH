function initBMICalculator() {
    document.getElementById("input_field_weight").addEventListener("keyup", updateBMI);
    document.getElementById("input_field_height").addEventListener("keyup", updateBMI);
}

function calculateBMI(weightInKG, heightInCM) {
    var heightInM = heightInCM / 100;
    return weightInKG / (heightInM * heightInM);
}

function updateBMI() {
    document.getElementById("bmi_result_value").innerHTML = calculateBMI(
        document.getElementById("input_field_weight").value, 
        document.getElementById("input_field_height").value);
}