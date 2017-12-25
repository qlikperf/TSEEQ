REM - Description: start all Qlik Sense Related Services
REM -------------------------------------------------------
echo start Qlik Sense Services
echo ======================================================
net start "Qlik Sense Repository Database"
net start "Qlik Sense Repository Service"
net start "Qlik Sense Printing Service"
net start "Qlik Sense Proxy Service"
net start "Qlik Sense Engine Service"
net start "Qlik Sense Scheduler Service"
net start "Qlik Sense Service Dispatcher"
echo ======================================================
echo All Qlik Sense related services have been started...
