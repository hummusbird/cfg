#!/bin/sh
# dell 7430
# disables bluetooth to prevent suspend issues

# add fingerprint drivers if you have them

if [ "${1} == "pre" ]; then
	echo "Disable broken xhci module before suspending at $(date)..." > /tmp/system_suspend_test
	rfkill block 0
	grep XHC.*enable /proc/acpi/wakeup && echo XHC > /proc/acpi/wakeup
elif [ "${1}" == post ]; then
	echo "Enable broken xhci module at resume from $(date)" >> /tmp/systemd_suspend_test
	grep XHC.*disable /proc/acpi/wakeup && echo XHC > /proc/acpi/wakeup
	rfkill unblock 0
fi
