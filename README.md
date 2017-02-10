RHEL-LABS
=========
**Current State:** *partially functional* <sup>1</sup>

Create a virtual training environment <sup>2</sup> that consists of a server and desktop virtual machine <sup>3</sup> running Red Hat Enterprise Linux 7.2 which is based on a similar training environments <sup>4</sup> used to help study for the RHCSA and RHCE examination certifications.

In the present state rhel-labs will download an image archive, <sup>5</sup> check md5sums, extract the archive, then return to an tui interface. The user is prompted to install server.example.com and md5sum checks are completed for base image, <sup>6</sup> then provisioned through virsh and allowing additional menus to unlock.

Subproccess are used in a controlled fashion handed off when navigating through dialog menus based on changes to state file conditionals <sup>7</sup> indicating which dialog menu to use. The first vm server.example.com is close to being full functionality; at the present moment snapshots <sup>8</sup> are outstanding. Both vms will have a control menu <sup>9</sup> with start, stop, reboot, snapshot and revert functionality. Once core functionality <sup>10</sup> is complete additional labs will be created (chapter 1 and chapter 2) are already created. To check out current progress see install instructions below.

Dependencies
===========
|

### Fedora 24+
~~~
        ## Required rpm packages:
  
      # yum install git wget pv dialog findutils gawk sed grep coreutils -y && yum group install with-optional virtualization -y
~~~

~~~
        ##  Inital checks should generate /dev/random and /dev/urandom 
        ##  (used for random mac address assignment) however if this 
        ##  fails manaul creation is needed.
      
      # mknod -m 666 /dev/random c 1 8 && mknod -m 666 /dev/urandom c 1 9 && chown root:root /dev/random /dev/urandom
~~~

### RHEL 7
~~~
        ## Required rpm packages:

     # yum install git wget pv dialog findutils gawk sed grep coreutils -y && yum group install with-optional virtualization -y
~~~
~~~
        ##  Inital checks should generate /dev/random and /dev/urandom 
        ##  (used for random mac address assignment) however if this 
        ##  fails manaul creation is needed.
 
     # mknod -m 666 /dev/random c 1 8 && mknod -m 666 /dev/urandom c 1 9 && chown root:root /dev/random /dev/urandom
~~~

|
|

**All-In-One Install** <sup>11</sup>
~~~
 # git clone https://github.com/vidurous/rhel-labs && cd rhel-labs/ && mkdir -p /home/root/bin && cp -af lab-tui initialize-lab /home/root/bin/ && cd /home/root/bin/ && chmod +x {lab-tui,initialize-lab} && ./lab-tui || git clone https://github.com/vidurous/rhel-labs && cd rhel-labs/ && mkdir -p /home/root/bin && cp -af lab-tui initialize-lab /home/root/bin/ && cd /home/root/bin/ && chmod +x {lab-tui,initialize-lab} && ./lab-tui
~~~
|
|


--------  -----------------------------------------------------------
keyword   text
--------  -----------------------------------------------------------
<sup>1</sup> *RHEL-LABS's current functionality is limited to 
            server.example.com. Premade virtual based qemu images are 
            prepared to provide users with throw away practice 
            environments with additional unique supplemental lab 
            execises that will be graded remotely automatically 
            returning results or possibly displayed on an 
            auto-generated python flash http page. Scoring will 
            be based on 300 point scale and correct answers will 
            not be provided, only your total score once all 16 
            chapters are completed. The idea is to become familiar 
            in understanding and evaluating where things may have 
            gone wrong which is similiar in form to how Red Hat 
            certifications exam work.*     

<sup>2</sup>

<sup>3</sup>

<sup>4</sup>

<sup>5</sup>

<sup>6</sup>

<sup>7</sup>

<sup>8</sup>

<sup>9</sup>

<sup>10</sup>

<sup>11</sup> gain root user first
--------  -----------------------------------------------------------


**Todo List**
---

  * Additional testing of encryption methods and how the application delivers a lab users a grading script; honest grading 
and attempt count are highest priority and currently I have a working method to deal with both. This intergration partially exists and satisfies the apache license. 

  * Intergrate delivery of completed lab exercises to the grading server(code coming soon) presenting the results on a dynamic python flask webpage.

  * Menu design for desktop.example.com that mirrors server.example.com.

  * Changes to the server.example.com cloud image with internal snapshots (possibly re-provisioned using implantisomd5).

  * Snapshot functionality for server.example.com.

  * Lab intergration of the tui based on dynamic state files.

  * All current error handling logic migrated to proper error functions in initialize-lab.

  * Screenshots and video overview added to README.

  * Adpative server functionality menu based on dynamic state files.

  * Set -e failed function review.

  * Some type of consistent logging for traps.

  * Proper formatting for both lab-tui and initialize-lab.
