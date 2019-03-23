# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#source ~/.autoenv/activate.sh
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export DISPLAY=":0"
xhost +localhost
/usr/local/sbin/rhel-labs
