#!/bin/bash
SSHD_CONFIG="/etc/ssh/sshd_config"

if grep -q "^MaxAuthTries" $SSHD_CONFIG; then
	sed -i "s/^MaxAuthTries.*/MaxAuthTries 50/" $SSHD_CONFIG
else
	echo "MaxAuthTries 50" >> $SSHD_CONFIG
fi
