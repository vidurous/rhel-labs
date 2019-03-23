### RHEL-LABS
| **Alpha demo:**  | *project overview* |
| :---:            | :--- |
| [![](https://img.youtube.com/vi/GPLBP6I-8ck/0.jpg)](https://www.youtube.com/watch?v=GPLBP6I-8ck) | Linux based virtual training environment for the RHCSA and RHCE examination certifications. **goals:** *32 chapters = ( 16 chapters RHCSA ) + ( 16 chapters RHCE )* **current state:** *partial functionality* <sup>1</sup> 

Create a virtual training environment<sup>2</sup> that consists of a server and desktop virtual machines<sup>3</sup> running Red Hat Enterprise Linux 7.2. This environment is based on other similar training environments<sup>4</sup> used at Red Hat and other learning institutes as a study aid for the RHCSA and RHCE certification examinations.

In the present state rhel-labs will download an image archive,<sup>5</sup> validate checksums, extract the archive, then return to an tui interface. The user is then prompted to install server.example.com and checksums are completed for base image,<sup>6</sup> then provisioned through virsh which allows additional menus to unlock.

Subproccess are used in a controlled fashion handed off when navigating through dialog menus based on changes to state file conditionals<sup>7</sup> indicating which dialog menu to use. The first vm server.example.com is fully functionality; at the present moment snapshots<sup>8</sup> are also implemented. Both vms will have a control menu<sup>9</sup> with start, stop, reboot, snapshot and revert functionality. Once core functionality<sup>10</sup> is complete additional labs will be created (chapter 1 and chapter 2) are already created. To check out current progress see install instructions below.

#### Fedora 24+
```
## Required rpm packages:
  
# dnf install git wget rsync pv dialog findutils gawk sed grep coreutils -y && dnf group install virtualization -y
```

```
## Inital checks should generate /dev/random and /dev/urandom (used for random mac address assignment) however if this fails manaul creation is needed.
      
# mknod -m 666 /dev/random c 1 8 && mknod -m 666 /dev/urandom c 1 9 && chown root:root /dev/random /dev/urandom
```

#### RHEL / CentOS 7
```
## Required rpm packages:

# yum install git wget rsync pv dialog findutils gawk sed grep coreutils -y && yum group install virtualization -y
```
```
## Inital checks should generate /dev/random and /dev/urandom (used for random mac address assignment) however if this fails manaul creation is needed.
 
# mknod -m 666 /dev/random c 1 8 && mknod -m 666 /dev/urandom c 1 9 && chown root:root /dev/random /dev/urandom
```

#### **All-In-One Install** <sup>11</sup>
~~~
 ## -->> user: rhel-labs pass: redhat requires sudo or root to install

 # git clone https://github.com/vidurous/rhel-labs && cd rhel-labs/ && sudo ./rhel-labs-functions.cfg install && su - rhel-labs
~~~

#### **Footnotes**
| *note*       | *info*        |
| :---:        |     :---      |
| 1 | *RHEL-LABS's current functionality is limited to server.example.com. Lab execises are coming soon.* |
| 2 | *Premade virtual based qemu images are prepared to provide users with throw away practice environments with additional unique supplemental lab execises that will be graded remotely automatically returning results or possibly displayed on an auto-generated python flash http page.* |
| 3 | *Server and Desktop virtual machines are running RHEL 7.2.* | 
| 4 | *Similar use and behavior for Red Hat's instructor lead classroom certification courses.* |
| 5 | *The image archive ( 518MB ) contains a server.img ( 1.3GB ) once uncompressed.* |
| 6 | *Each virtual machine image will have an internal snapshot defining a default base state to revert back to.* |
| 7 | *The program was written for the target audience only having linux end user experience and bash for additional transparency concerning learning.* | 
| 8 | *Snapshot states for reverting back to the base image state and whatever user progressed saved state will be available.* |
| 9 | *The control menu allows for basic control of the virtual machine.* |
| 10 | *Delivery of compressed virtual machine images, checksum verification, installation of virtual machines, full control menu and snapshot functionality.* | 
| 11 | *root or proper sudo access while using rhel-labs.*

#### **Upcoming Features**
---
[Feature list moved to issue tracker (tagged with enhancement).](https://github.com/vidurous/rhel-labs/issues)
