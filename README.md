Current State: Not Complete
---------------------------

In the present state rhel-labs will download the image archive, check
md5sums, extract the archive, then return to an updated tui interface.
The user is prompted to install the server and md5sum checks are
completed for server.img, then the server is provisioned through virsh
and additional menu's unlock.

Multiple subproccess are handed off when navigating through dialog menus
based on changes to state file tests to indicate which dialog menu is
used. The server menu is close to having full functionality. The vm
control menu's server will have start, stop, reboot, snapshot and revert
functionality. Once this functionality is complete additional labs will
be created (chapter 1 and chapter 2) are already created. To check out
current progress install instructions below.

Dependencies
------------

Known Issues: No current fs disk space checks (coming soon after I
sleep). Images are 2.4GB when downloaded as an archive and 20GB after
uncompressed utilizing space in /home.

Fedora 24+
------

`# dnf install wget pv dialog findutils gawk sed grep coreutils -y && dnf group install with-optional virtualization -y`

The inital check should generate /dev/random and /dev/urandom (used for
random mac address assignment) however if this fails manaul creation
maybe needed.

`# mknod -m 666 /dev/random c 1 8 && mknod -m 666 /dev/urandom c 1 9 && chown root:root /dev/random /dev/urandom`

RHEL 7
-------

`# yum install wget pv dialog findutils gawk sed grep coreutils -y && yum group install with-optional virtualization -y`

The inital check should generate /dev/random and /dev/urandom (used for
random mac address assignment) however if this fails manaul creation
maybe needed.

`# mknod -m 666 /dev/random c 1 8 && mknod -m 666 /dev/urandom c 1 9 && chown root:root /dev/random /dev/urandom`

Install commands (copy all in one line): as root:

`# git clone https://github.com/vidurous/rhel-labs && cd rhel-labs/ && mkdir -p /home/root/bin && cp -af lab-tui initialize-lab /home/root/bin/ && cd /home/root/bin/ && chmod +x {lab-tui,initialize-lab} && ./lab-tui`

### ToDo ###

-   Improve the README w/ proper md.

-   Additional testing of encryption methods and how the application
    delivers a lab users a grading script; honest grading and attempt
    count are highest priority and currently I have a working method to
    deal with both. This intergration partially exists and satisfies 
    the apache license. 

-   Intergrate delivery of completed lab exercises to the grading
    server(code coming soon) presenting the results on a dynamic python
    flask webpage.

-   Menu design for desktop.example.com that mirrors server.example.com.

-   Changes to the server.example.com cloud image with internal
    snapshots (possibly re-provisioned using implantisomd5).

-   Snapshot functionality for server.example.com.

-   Lab intergration of the tui based on dynamic state files.

-   All current error handling logic migrated to proper error functions
    in initialize-lab.

-   Screenshots and video overview added to README.

-   Adpative server functionality menu based on dynamic state files.

-   Set -e failed function review.

-   Some type of consistent logging for traps.

-   Proper formatting for both lab-tui and initialize-lab.



~~~
define foobar() {
    print "Testing logic";
}
~~~
