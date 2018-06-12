//Todo: Implement this file as object with prototype
var Employee = function (id, name, email, room) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.room = room;

    this.getId();
    this.getName();
    this.getEmail();
    this.getRoom();
    this.toString();
};

Employee.prototype.getId = function () { return this.id; };
Employee.prototype.getName = function () { return this.name; };
Employee.prototype.getEmail = function () { return this.email; };
Employee.prototype.getRoom = function () { return this.room; };
Employee.prototype.toString = function () {
    return `ID: ${this.id} Name: ${this.name} email: ${this.email} room: ${this.room}`;
};