REM - Description: stop all QlikView Related Services
REM -------------------------------------------------------
echo stop QlikView Services
echo ======================================================
NET stop "QlikView Directory Service Connector"
NET stop "QlikView Distribution Service"
NET stop "Qlikview Management Service"
NET stop "QlikView Server"
NET stop "QlikView WebServer"
REM NET stop "World Wide Web Publishing Service"
echo ======================================================
echo All QlikView related services have been stoped...