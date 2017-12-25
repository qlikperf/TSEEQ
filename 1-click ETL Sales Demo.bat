REM This file automates end-to-end ETL for QlikView for the TSEEQ Sales Sample.


REM  The next line generates the Common Calendar:
REM  --------------------------------------------------------------------------------------------------
"%PROGRAMFILES%\QlikView\Qv.exe" /r   .\Source Documents\Common\1_Extract\CommonCalendarGenerator.qvw


REM  The next line runs the Extract step:
REM  --------------------------------------------------------------------------------------------------
"%PROGRAMFILES%\QlikView\Qv.exe" /r 	.\Source Documents\TSEEQ Sales Sample\1_Extract\Sales Extract.qvw


REM  The next line runs the Transform step:
REM  --------------------------------------------------------------------------------------------------
"%PROGRAMFILES%\QlikView\Qv.exe" /r 	.\Source Documents\TSEEQ Sales Sample\2_Transform\Sales Transform.qvw


REM  The next line runs the Data Model Load step:
REM  --------------------------------------------------------------------------------------------------
"%PROGRAMFILES%\QlikView\Qv.exe" /r 	.\Source Documents\TSEEQ Sales Sample\3_Load\Sales DataModel.qvw


REM  The next line loads the App from the Data Model:
REM  --------------------------------------------------------------------------------------------------
"%PROGRAMFILES%\QlikView\Qv.exe" /r 	.\Source Documents\TSEEQ Sales Sample\4_App\Sales Dashboard.qvw


REM  The next line simply opens the QVW for viewing:
REM  --------------------------------------------------------------------------------------------------
"%PROGRAMFILES%\QlikView\Qv.exe" 	.\Source Documents\TSEEQ Sales Sample\4_App\Sales Dashboard.qvw



