# undervoltWatch

### Ensure undervolt offsets are always applied.

This is just a watcher tool for undervolt.
*Get undervolt here: [https://github.com/georgewhewell/undervolt](https://github.com/georgewhewell/undervolt)*

Uses systemd service to automatically check the current undervolt offsets and re-apply them as needed. 

_Code is quick and dirty works for me, might not work for you. Feel free to let me know or just fix it yourself, it's pretty basic.  -Cheers, Xen_

#### To install:

*Warning*
*You MUST change the offsets in 'undervoltWatch' prior to running `sudo ./install.sh` to suit your system. Failure to do so could result in an unstable system and potential damage to your hardware.*

1. `git clone https://gitlab.com/xentradi/undervoltWatcher.git`
2. `cd undervoltWatcher`
3. Edit the offset and target temperature values in 'undervoltWatch'
4. `sudo chmod +x ./install.sh`
5. `sudo ./install.sh`
6. Start the service with `sudo systemctl start undervoltWatch.service`

#### To uninstall:

1. `sudo chmod +x ./uninstall.sh`
2. `sudo ./uninstall.sh`



