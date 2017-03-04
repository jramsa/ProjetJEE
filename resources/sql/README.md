# *README*
## **The Project MySQL DB - `How To`**

### **I. Credentials**
The database used in the application is located in my UPEM account. So if you want to run your code you need some informations.

#### I.i UPEM
All credentials are printed in `credentials` file in `resources/sql` folder.

#### I.ii Database connector
Here's the connector informations found in PhP MyAdmin:
> Serveur : sqletud.u-pem.fr via TCP/IP
> Type de serveur : MySQL
> Version du serveur : 5.5.54-0+deb8u1-log - (Debian)
> Version du protocole : 10
> Utilisateur : jbidet@etudiant.univ-mlv.fr
> Jeu de caractères du serveur : UTF-8 Unicode (utf8)

The password used for the user login is the same as the PhP MyAdmin password printed in the `credentials` file.

### **II. Database import**
First of all, open `resources/sql/scripts` folder. There are two ways to perform this import :

#### II.i. First method (way-1)
Open `way-1` folder and follow every instructions contained in files:
> **1.sql**
> **2.sql**
> **3.sql**

#### II.ii. Second method (way-2)
Open `way-2`folder and import all sql files contained into:
> cafe.sql
> history.sql
> hotspot_wifi.sql
> user.sql

------

> ***N.B.:*** *to execute scripts, just copy/paste text in the `Request` console on your database (i.e. jbidet_db). The `Request` console can be found in `Request` tab.*
> ***N.B.:*** *to import scripts, go in `Import` tab in your database (i.e. jbidet_db) then select the file.*

### **III. Backups**
There are several backups from the current state of the database. These backups are stored in `resources/sql/backup` folder.
