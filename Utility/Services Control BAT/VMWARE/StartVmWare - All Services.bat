REM - Description: start all VMWARE related services
REM -------------------------------------------------------
echo start VMWARE Services
echo ======================================================
net start VMAuthdService
net start VMnetDHCP
net start "VMware NAT Service"
net start "ftnlsv3hv"
net start "ftscanmgr"
net start "vmwsprrdpwks"
net start "VMUSBArbService"
net start  vmware-view-usbd
echo ======================================================
echo AllVMWARE  related services have been started...
