REM - Description: stop all VMWARE related services
REM -------------------------------------------------------
echo stop VMWARE Services
echo ======================================================
net stop VMAuthdService
net stop VMnetDHCP
net stop "VMware NAT Service"
net stop "ftnlsv3hv"
net stop "ftscanmgr"
net stop "vmwsprrdpwks"
net stop  vmware-view-usbd
net stop "VMUSBArbService"
echo ======================================================
echo AllVMWARE  related services have been stopped...
