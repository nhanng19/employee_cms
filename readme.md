 # 12_Employee_Tracker_NN
BootCamp Homework - 12 MySQL: Employee Tracker

## The Challenge
Developers frequently have to create interfaces that allow non-developers to easily view and interact with information stored in databases. These interfaces are called content management systems (CMS). Our client requires us to build a command-line application from scratch to manage a company's employee database, using Node.js, Inquirer, and MySQL.

We'll be using the following schema for our database:

![](./img/data.png)

## Installation

Before running the application, insert database by running the following commands in the MySQL shell (make sure navigation is in the root directory):

```bash
SOURCE db/schema.sql;
SOURCE db/seed.sql;
USE employee_db;
```

Install node dependencies by running the following command (make sure navigation is in the root directory):

```bash
npm i
```

The application will be invoked by using the following command (make sure navigation is in the root directory):

```bash
node index
```

[WALKTHROUGH VIDEO HERE](https://drive.google.com/file/d/1TlUQw-OOtIz8emAaQg5Sx1Ry-Y2LvlI7/view)

## User Story

```
AS A business owner
I WANT to be able to view and manage the departments, roles, and employees in my company
SO THAT I can organize and plan my business
```

## Acceptance Criteria

```
GIVEN a command-line application that accepts user input
WHEN I start the application
THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role
WHEN I choose to view all departments
THEN I am presented with a formatted table showing department names and department ids
WHEN I choose to view all roles
THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role
WHEN I choose to view all employees
THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to
WHEN I choose to add a department
THEN I am prompted to enter the name of the department and that department is added to the database
WHEN I choose to add a role
THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database
WHEN I choose to add an employee
THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database
WHEN I choose to update an employee role
THEN I am prompted to select an employee to update and their new role and this information is updated in the database 
``` 

## The Process
To satisfy the criteria, we had to:
- Install inquirer package
- Install path package
- Install gradient and figlet to initialize welcome scree
- Create a schema to represent database
- Create a seed to insert data into tables

Specific functions of index.js:

Initialize Welcome Screen
```javascript
const sleep = (ms = 2000) => new Promise((r) => setTimeout(r, ms))

function welcome() {
    const msg = "Employee \n Manager";
        figlet(msg, (err, data) => {
            console.log(gradient.pastel.multiline(data));
        });
         sleep();

}
welcome();
```

Set Connection with MySQL
```javascript
const db = mysql.createConnection({
    host: "localhost",
    user: 'root',
    password: 'USER_PW',
    database: "employee_db"
});
```

## The Result
User are able to view departments, roles, and employees from database. User can also add, delete, and update a department, employee, and role through terminal as well. User are also given an option to view employees either by manager or department. 

## Submission
This project was uploaded to GitHub at the following repository link:
[https://github.com/nhanng19/employee_cms](https://github.com/nhanng19/employee_cms)

Walkthrough Video Link:
[https://drive.google.com/file/d/1TlUQw-OOtIz8emAaQg5Sx1Ry-Y2LvlI7/view](https://drive.google.com/file/d/1TlUQw-OOtIz8emAaQg5Sx1Ry-Y2LvlI7/view)

