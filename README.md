ProjetJEE
========

### Preface
The states of this project is to use the learned technologies by the courses, by using public datasource.
We have decided to use two public datasources:

- the list of café bar in Paris selling café at one euro
- the list of wifi hotspot in Paris.

We design our databases in four tables:

- user, that keeps registered users
- history, that keeps users research and favorites
- hotspot_wifi, that keeps the lsit of wifi hotspot
- cafe, that keeps the list of café

The history table has a foreing key to user in order to map for each users their history.

In this project, the users can find café and/or wifi hotspot globally in Paris or in a range (50 and 100 meters) around a given position.
Then the markers show up on the Google Map centered on the given position.
The users is also allowed to favorite a research, and also manage his history and favorites (create, remove, use).
Finally, the user can log out from the session and keep his settings safe.


### Workflow
1. The user accesses to the login page (index.xhtml).
2. He has two options: log in or register.
3. In case of log in, he has to enter his informations (email and password). For next steps see step 6.
4. In case of register, he has to neter some informations (email, password (twice), firstname, lastname), then validate.
5. Once the user is registered, the application bring back him to the login page. See step 3.
6. If the user successfully log in, he's redirected to the main page (main.xhtml)
7. Here, he can do all the stuff that we have talked about in the Preface.


### Design
For the conception of the application, we have decided to use the MVC pattern.
So, we have:

- Four Models (entities) mapping the database structure (Cafe, History, HotspotWifi, User)
- Two Views (main.xhtml and main.xhtml) showing up to the users.
- Two Controllers (Login.java, Map.java) mapped with the Views (respectively, index.xhtml and main.xhtml).

- A security manager, that implements a simple SHA-1 hash method.
- Five DAO (Facade) interfacing Controllers and Models.
- An authentication filter which ensures that pages (other than index.html) cannot be reached without being logged in.
- A session manager that register the connected users in personnal session (and invalidate the session when logged out).


### Known issues
Currently the application is well deployed on the glassfish server using Netbeans.
But for some reasons, the application fails to run properly after the login page on some systems:

- works fine on MacOS and Windows
- fails on Linux

Thereby, the presentation will take place on our own system.
Furthermore, the database used is locally installed so the application cannot be used from the internet.
This issue is not critical cause a simple database and datasource migration is sufficient to fix it.


## Improvement
1. As improvement, we have thought about adding comments management for Café and Hotspot WiFi.
This module consist of allowing registered users to post comments for a wi-fi (such as bandwidth or range) or a café (attendance, service, rapidity, etc...).
The user is also able to see others users comments.
This adding haven't got been implemented cause of lack of time, but all the design has been already thought.
- Database implementation
- Entities generation
- Controllers implementation
- Views design

2. An other improvement is to determine the amount of users in a cafe or using a hotspot at a time.
In order to do that, the application geolocalise the user position and increment/decrement a counter.
Other users are then able to see the attendance in real-time.
