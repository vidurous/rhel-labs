<h1 id="current-state-not-complete.">Current State: Not Complete.</h1>
<p>In the present state rhel-labs will download the image archive, check md5sums, extract the archive, then return to an updated tui interface. The user is prompted to install the server and md5sum checks are completed for server.img, then the server is provisioned through virsh and additional menu's unlock.</p>
<p>Multiple subproccess are handed off when navigating through dialog menus based on changes to state file tests to indicate which dialog menu is used. The server menu is close to having full functionality. The vm control menu's server will have start, stop, reboot, snapshot and revert functionality. Once this functionality is complete additional labs will be created (chapter 1 and chapter 2) are already created. To check out current progress install instructions below:</p>
<h1 id="dependencies">Dependencies</h1>
<p>Known Issues: No current fs disk space checks (coming soon after I sleep). Images are 2.4GB when downloaded as an archive and 20GB after uncompressed utilizing space in /home.</p>
<h1 id="fedora">Fedora:</h1>
<h1 id="dnf-install-wget-pv-dialog-findutils-gawk-sed-grep-coreutils--y-dnf-group-install-with-optional-virtualization--y">dnf install wget pv dialog findutils gawk sed grep coreutils -y &amp;&amp; dnf group install with-optional virtualization -y</h1>
<p>The inital check should generate /dev/random and /dev/urandom (used for random mac address assignment) however if this fails manaul creation maybe needed:</p>
<h1 id="mknod--m-666-devrandom-c-1-8-mknod--m-666-devurandom-c-1-9-chown-rootroot-devrandom-devurandom">mknod -m 666 /dev/random c 1 8 &amp;&amp; mknod -m 666 /dev/urandom c 1 9 &amp;&amp; chown root:root /dev/random /dev/urandom</h1>
<h1 id="rhel-7">RHEL 7:</h1>
<h1 id="yum-install-wget-pv-dialog-findutils-gawk-sed-grep-coreutils--y-yum-group-install-with-optional-virtualization--y">yum install wget pv dialog findutils gawk sed grep coreutils -y &amp;&amp; yum group install with-optional virtualization -y</h1>
<p>The inital check should generate /dev/random and /dev/urandom (used for random mac address assignment) however if this fails manaul creation maybe needed:</p>
<h1 id="mknod--m-666-devrandom-c-1-8-mknod--m-666-devurandom-c-1-9-chown-rootroot-devrandom-devurandom-1">mknod -m 666 /dev/random c 1 8 &amp;&amp; mknod -m 666 /dev/urandom c 1 9 &amp;&amp; chown root:root /dev/random /dev/urandom</h1>
<h1 id="install-commands-copy-all-in-one-line">Install commands (copy all in one line):</h1>
<p>as root:</p>
<h1 id="git-clone-httpsgithub.comvidurousrhel-labs-cd-rhel-labs-mkdir--p-homerootbin-cp--af-lab-tui-initialize-lab-homerootbin-cd-homerootbin-chmod-x-lab-tuiinitialize-lab-.lab-tui">git clone https://github.com/vidurous/rhel-labs &amp;&amp; cd rhel-labs/ &amp;&amp; mkdir -p /home/root/bin &amp;&amp; cp -af lab-tui initialize-lab /home/root/bin/ &amp;&amp; cd /home/root/bin/ &amp;&amp; chmod +x {lab-tui,initialize-lab} &amp;&amp; ./lab-tui</h1>
<p>ToDo:</p>
<p>Improve the README w/ proper md</p>
<p>Additional testing of encryption methods and how the application delivers a lab users a grading script; honest grading and attempt count are highest priority and currently I have a working method to deal with both.</p>
<p>Intergrate delivery of completed lab exercises to the grading server(code coming soon) presenting the results on a dynamic python flask webpage</p>
<p>Menu design for desktop.example.com that mirrors server.example.com</p>
<p>Changes to the server.example.com cloud image with internal snapshots (possibly re-provisioned using implantisomd5)</p>
<p>Snapshot functionality for server.example.com</p>
<p>Lab intergration of the tui based on dynamic state files</p>
<p>All current error handling logic migrated to proper error functions in initialize-lab</p>
<p>Screenshots and video overview added to README</p>
<p>Adpative server functionality menu based on dynamic state files</p>
<p>Set -e failed function review</p>
<p>Some type of consistent logging for traps</p>
<p>Proper formatting for both lab-tui and initialize-lab</p>
