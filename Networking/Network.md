**Problem 1** : To set up a repository such that everytime one of your team members pushes to the repository, the folder on your computer is automatically update with latest changes.

**Solution** :

Got started by reading the documentaion [here](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)<br>
Now I will start working on the post-recive shell script.

*Learnings*:
* There are 2 types of hooks: server-side and client-side. As the name suggests, client-side are triggered
by local operations such as commits and merges while server-side hooks are triggered by network operations, like
reciving pushed commits, etc.
* To enable a hook script, put a file in the hooks subdirectory of your .git directory that is named
appropriately (without any extension) and is executable.
* **post-recive** hooks is what we are looking for. The post-receive hook runs after the entire process is
completed and can be used to update other services or notify users.
* The *post-recive.sample* file was not there in my .git/hooks directory. So I made a new sh file. Here,
be sure to make it executable and there should be no extension of the file.


**Problem 2** : To find out the company which sold students.iitmandi.ac.in the domain.

**Solution** :

students.iitmandi.ac.in is a subdomain of iitmandi.ac.in . Doing a seach on *whois.domaintools* resulted
in following findings:
    * ServerType: Apache
    * Registrar URL: http://www.ernet.in (ERNET India)

iitmandi.ac.in's domain was bought from *MumbaiHosting* (As confirmed my Mr. Lalit Thakur).
