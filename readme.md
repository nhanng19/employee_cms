Employee Tracker

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

## The Process
To satisfy the criteria, we had to:
- Install inquirer package
- Install path package
- Install gradient and figlet to initialize welcome screen
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

This project was uploaded to GitHub at the following repository link:
[https://github.com/nhanng19/employee_cms](https://github.com/nhanng19/employee_cms)

Walkthrough Video Link:
[https://drive.google.com/file/d/1TlUQw-OOtIz8emAaQg5Sx1Ry-Y2LvlI7/view](https://drive.google.com/file/d/1TlUQw-OOtIz8emAaQg5Sx1Ry-Y2LvlI7/view)

