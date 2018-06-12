//Todo: Implement this file as a module according to the revealing module pattern
var employeeDatabase = (function () {
    var employeeList = [];

    function createEmployee(name, email, room) {
        var nextId = employeeList.length;
        var employee = new Employee(nextId, name, email, room);
        
        employeeList[nextId] = employee;

        return employee;
    };

    function updateEmployee(id, name, email, room) {
        if ((employeeList.length - 1) < id) {
            console.log(`Invalid ID ${id}. Cannot update employee.`)
            return undefined;
        } else {
            var newEmployee = new Employee(id, name, email, room);
            employeeList[id] = newEmployee;
            return newEmployee;
        }
    };

    return {
        createEmployee: createEmployee,
        updateEmployee: updateEmployee
    };
})();