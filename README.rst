Security Engineering Lab 
====================================

This is a web application developed in Python / Flask / SQLite.


OWASP Application Security Verification Standard
------------------------------------------------

The "GOOD" version (not finished yet) will comply with the OWASP ASVS:

https://www.owasp.org/index.php/Category:OWASP_Application_Security_Verification_Standard_Project

This will permit learn how to develop python code following the best security practices.



Installation
------------

::

   git clone https://github.com/soumyamaity/CS2024.git

   cd CS2024

   pip3 install --user -r requirements.txt


Features
--------

- Login/Logout
- Read posts from other users
- Publish posts
- Multi-Factor Authentication (MFA)
- API for read and write posts
- Content Security Policy
- SSL/TLS Server


Vulnerabilities
---------------

Some of the vulnerabilities present:

- Cross-Site Scripting (XSS)
- SQL Injection
- Cross Site Request Forgery (CSRF)
- Session Impersonation
- Insecure Deserialization
- Authentication Bruteforce
- Authentication Bypass

**Note:** The "GOOD" version (not finished yet) is supposed to don't have vulnerabilities, but I'm a human being, so...


Database Initialization
-----------------------

The application requires an initialization of the database.

This is done with the script "db_init.py" inside each of the directories (bad, and good).

Each version has their own sqlite files for the users and posts.

The execution of the script is, for example:

::

   cd bad
   ./db_init.py

Running the application
-------------------------

run the vulpy.py file.

::
   
   cd bad
   ./vulpy.py



Default Credentials
-------------------

After database initialization, three users are created:

::

   Username    Password
   --------    -----------
   admin       SuperSecret
   elliot      123123123
   tim         12345678


You can login with any user, the application doesn't have a permissions system, so, the three have the same permissions.


