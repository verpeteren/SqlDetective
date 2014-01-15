The SQL Detective Game

H1. IBM

IBM has a nice game to let people get familiar with sql.
The game teaches relational database concepts and shows how technology can be applied to solving real-life problems.

H1. Non IBM
This is available for DB2 and informix, I wanted to play it on a postgresql db. Let's see how far I can get.

H1. See also

http://www.ibm.com/developerworks/data/tutorials/dm0804moffatt/

H1. Game scenario

You are an intern working in a security department for a large enterprise. As part of your training,
you have been asked to participate in a crime investigation simulation to help locate a missing
ThinkPad computer.
Learn the basics of Informix and relational database management by playing the
Informix
Detective Game
. Uncover how database technology can be applied to business situations to help
you manage your company information.

H1. Data model

The of the Detective Game database consists of four tables: employee, hardware, lobby, and security. It also shows you the type of information stored in each of these tables:

* The *employee* table stores information about each employee such as their employee number, name, manager, office number, phone number, and badge number.
* The *security* table stores information as to when each employee or visitor badged in and out of the building (date and time).
* The *lobby* table stores the badge number assigned to each visitor by name.
* The *hardware* table stores the serial number and type number for every computer along with its location and the ID of the employee who is its primary user.

```
                                               +------------------+  +-----------------+
                                               | Employee         |  | Hardware        |
                                               |------------------|  |-----------------|
                                               | Employee ID      |  | Employee Id     |
                                               | Last name        |  | Location        |
                           +----------------+  | First name       |  | Type number     |
                           | Security       |  | Manager ID       |  | Serial number   |
                           |----------------|  | Location         |  +-----------------+
   +------------------+    | Sign out date  |  | Extension        |
   | Lobby            |    | Sign out time  |  | Gender           |
   |------------------|    | Sign in time   |  | Hair colour      |
   | Badge number     |    | Badge number   |  | Badge number     |
   | Last name        |    +----------------+  | Restricted access|
   | First name       |                        +------------------+
   +------------------+
```
