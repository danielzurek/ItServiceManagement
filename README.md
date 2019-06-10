# IT Service Management

It Service Management is an an issue tracking system for IT Help Desks.
Idea based on ServiceNow application concept with ITIL practices implemented.

## Heroku Live Demo
If you would like to check this app you can vist live demo via below link. 

Click => https://itservicemanagement.herokuapp.com

<img src="https://imgur.com/OdvMFYF.png" width="1000" />  <img src="https://imgur.com/eOcXvui.png" width="1000" /> 
<img src="https://imgur.com/iNZi0eL.png" width="1000" /> 



## Built With

* [Java]
* [Maven]
* [Spring MVC]
* [JSP]

## Features

### Admin Panel
Admin is responsible for delivery all necessary data about users and permissions. Only user with admin role is permitted to access this panel. 

* Account creator
Admin could create an account for the user and grant suitable roles and groups .

* User Management
 This panel allows administrators to manage all the user accounts.

 * Role Managment
Allows administrators to manage and create new roles which could be assign to the each user. 

* Group Managment
Administrators are able to manage all avalaible groups, modify them and create a new one. 

* Customer Managment
This feature allows administrators to create and modify customers. This entity contains necessary information about each customer

* Company Managment
Administrators are able to add a new company and modify existing data. Each customer must be assign to the company. 

### User Features

* Simple and intuitive ladning page which displays all active incidents which are assigned to the logged user. 
* Maipage shows all active critical incidents which should be solved on priority. 
* A simplified ticket creation screen with a minimum of required fields. Requestor is choose from the list and after ticket has been saved user can see all information about customer like comopany, location, phone numner etc. 
* Simple and eficent work notes field provides control of resolving an incident. User known what has been done in each case. 
* Ticket could be re-assigned to the another resolving group member. 
* Tickets historiy including active incidents, assigned to the user, high priority tickets and solved by the help desk. 

## Deployment

### Database configuration

Database setting are stored in persistence.xml file -> resources - > META-INF -> persistence.xml
Put your's local database url with port, username and password. 

### Working with Petclinic in your IDE

The following items should be installed in your system:

Java 8 or newer.
git command line tool (https://help.github.com/articles/set-up-git)
Your prefered IDE for example:
Eclipse: http://www.eclipse.org/
IntelliJ IDEA

Steps (Based Intellij IDEA Ultimate Edition):
1. On the command line
git clone https://github.com/spring-projects/spring-petclinic.git

2. Inside IntelliJ IDEA
In the main menu, choose File -> Open and select the ITServiceManagement main directory.

3. Go to the server configuration and delete existing artefact then click on a fix button and choose war exploded option. 
Application context please set up as /

4. Run Tomcat

5. http://localhost:8080 in your browser.

Project contains data.sql file which load initial data for the application. If you would like to not insert any data into app you can change settings in persistance.xml file. 

## Credentials:

### Admin role:
Username: admin.admin
Password: admin123456

### User role:
Username: user.user
Password: user23456


