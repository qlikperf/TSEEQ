REM - Description: start all QlikView Related Services
REM -------------------------------------------------------
echo start QlikView Services
echo ======================================================
NET START "QlikView Directory Service Connector"
NET START "QlikView Distribution Service"
NET START "Qlikview Management Service"
NET START "QlikView Server"
NET START "QlikView WebServer"
REM NET START "World Wide Web Publishing Service"
echo ======================================================
echo All QlikView related services have been started...