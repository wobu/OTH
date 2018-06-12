/* Uncomment the following code, after object and module were created
to test whether the app is working as expected */

employeeDatabase.createEmployee("Lester Nygard", "nygard@fargo.com", "Bemidji Diner");
employeeDatabase.createEmployee("Lorne Malvo", "lorne@fargo.com", "Bemidji Diner");

var resultUpdateSuccess = employeeDatabase.updateEmployee(1, "Lester Nygard", "nygard@fargo.com", "Office");
console.log(resultUpdateSuccess.toString());

var resultUpdateFail = employeeDatabase.updateEmployee(2, "Lester Nygard", "nygard@fargo.com", "Office");
console.log(resultUpdateFail);
