REM - Description: stop all QlikSense related services
REM -------------------------------------------------------
echo stop Qlik Sense Services
echo ======================================================
net stop "Qlik Sense Printing Service"
net stop "Qlik Sense Proxy Service"
net stop "Qlik Sense Engine Service"
net stop "Qlik Sense Scheduler Service"
net stop "Qlik Sense Service Dispatcher"
net stop "Qlik Sense Repository Service"
net stop "Qlik Sense Repository Database"
echo ======================================================
echo All Qlik Sense related services have been stopped...
