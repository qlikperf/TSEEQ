REM
REM	MAIN BATCH FILE PROGRAM
REM
call :GetNewAppName
call :CreateFolders
call :CopyIncludeFiles
call :CopyRuleFiles
call :CopyQVWs
call :ReloadQVWs

explorer "..\..\Source Documents\%NewAppName%\"

exit /b

REM
REM	SUBROUTINE Get New App Name
REM
:GetNewAppName
	set /p NewAppName=Please enter the name of your new app, for example, Marketing or Finance:
exit /b


REM
REM	SUBROUTINE Copy QVWs
REM
:CopyQVWs
REM	erase "..\..\Source Documents\%NewAppName%\1_Extract\%NewAppName% Extract.qvw
REM	erase "..\..\Source Documents\%NewAppName%\2_Transform\%NewAppName% Transform.qvw"
REM	erase "..\..\Source Documents\%NewAppName%\3_Load\%NewAppName% DataModel.qvw"

	Copy  "..\..\Source Documents\TSEEQ Sales Sample\1_Extract\Sales Extract.qvw"  		"..\..\Source Documents\%NewAppName%\1_Extract\%NewAppName% Extract.qvw"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\2_Transform\Sales Transform.qvw" 		"..\..\Source Documents\%NewAppName%\2_Transform\%NewAppName% Transform.qvw"
 	Copy  "..\..\Source Documents\TSEEQ Sales Sample\3_Load\Sales DataModel.qvw"  		"..\..\Source Documents\%NewAppName%\3_Load\%NewAppName% DataModel.qvw"
 	Copy  "..\..\Source Documents\TSEEQ Sales Sample\4_App\Sales Dashboard.qvw"  			"..\..\Source Documents\%NewAppName%\4_App\%NewAppName% Dashboard.qvw" 
exit /b

REM
REM	SUBROUTINE Reload QVWs
REM
:ReloadQVWs
	"%PROGRAMFILES%\QlikView\Qv.exe" /r /vvPurge=1 /vvApp=%NewAppName% 	/vvRulesSourceFile=..\ETL_Rules\%NewAppName%ExtractRules.xls		"..\..\Source Documents\%NewAppName%\1_Extract\%NewAppName% Extract.qvw"
	"%PROGRAMFILES%\QlikView\Qv.exe" /r /vvPurge=1 /vvApp=%NewAppName% 	/vvRulesSourceFile=..\ETL_Rules\%NewAppName%TransformRules.xls		"..\..\Source Documents\%NewAppName%\2_Transform\%NewAppName% Transform.qvw"
	"%PROGRAMFILES%\QlikView\Qv.exe" /r /vvPurge=1 /vvApp=%NewAppName% 	/vvRulesSourceFile=..\ETL_Rules\%NewAppName%LoadRules.xls		"..\..\Source Documents\%NewAppName%\3_Load\%NewAppName% DataModel.qvw"
	"%PROGRAMFILES%\QlikView\Qv.exe" /r /vvPurge=1 /vvApp=%NewAppName%  										"..\..\Source Documents\%NewAppName%\4_App\%NewAppName% Dashboard.qvw"
exit /b


REM
REM	SUBROUTINE Copy Include Files
REM
:CopyIncludeFiles
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\Connections\Sales_View.txt"   			"..\..\Source Documents\%NewAppName%\include\Connections\%NewAppName%_View.txt"

	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\SalesExtractInclude_PreProcessing.txt"   		"..\..\Source Documents\%NewAppName%\include\%NewAppName%ExtractInclude_PreProcessing.txt"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\SalesExtractInclude_PostProcessing.txt"   		"..\..\Source Documents\%NewAppName%\include\%NewAppName%ExtractInclude_PostProcessing.txt"

	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\SalesTransformInclude_PreProcessing.txt"   		"..\..\Source Documents\%NewAppName%\include\%NewAppName%TransformInclude_PreProcessing.txt"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\SalesTransformInclude_PostProcessing.txt"   	"..\..\Source Documents\%NewAppName%\include\%NewAppName%TransformInclude_PostProcessing.txt"

	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\SalesLoadInclude_PreProcessing.txt"   		"..\..\Source Documents\%NewAppName%\include\%NewAppName%LoadInclude_PreProcessing.txt"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\SalesLoadInclude_PostProcessing.txt"   		"..\..\Source Documents\%NewAppName%\include\%NewAppName%LoadInclude_PostProcessing.txt"


exit /b

REM
REM	SUBROUTINE Copy Rule Files
REM
:CopyRuleFiles
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\ETL_Rules\SalesExtractRules.xls"   	"..\..\Source Documents\%NewAppName%\ETL_Rules\%NewAppName%ExtractRules.xls"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\ETL_Rules\SalesTransformRules.xls"  "..\..\Source Documents\%NewAppName%\ETL_Rules\%NewAppName%TransformRules.xls"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\ETL_Rules\SalesLoadRules.xls"   	"..\..\Source Documents\%NewAppName%\ETL_Rules\%NewAppName%LoadRules.xls"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\Variables\Sales_Variables.xls"   	"..\..\Source Documents\%NewAppName%\Variables\%NewAppName%_Variables.xls"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\Variables\Sales_Extract_Variables.xls"   	"..\..\Source Documents\%NewAppName%\Variables\%NewAppName%_Extract_Variables.xls"

	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesExtractRules_TABLES_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%ExtractRules_TABLES_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesExtractRules_INCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%ExtractRules_INCLUDE_FIELDS_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesExtractRules_EXCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%ExtractRules_EXCLUDE_FIELDS_Worksheet.csv"

	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_TABLES_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_TABLES_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_INCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_INCLUDE_FIELDS_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_EXCLUDE_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_EXCLUDE_FIELDS_Worksheet.csv"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesTransformRules_TRANSFORM_FIELDS_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%TransformRules_TRANSFORM_FIELDS_Worksheet.csv"

	Copy  "%vTSEEQSalesFolder%ETL_Rules\CSV\SalesLoadRules_TABLES_Worksheet.csv"   "%vNewAppFolder%\ETL_Rules\CSV\%vNewAppName%LoadRules_TABLES_Worksheet.csv"
exit /b


REM
REM	SUBROUTINE Create Folders
REM
:CreateFolders
	mkdir "..\..\Source Documents\%NewAppName%\1_Extract"
	mkdir "..\..\Source Documents\%NewAppName%\2_Transform"
	mkdir "..\..\Source Documents\%NewAppName%\3_Load
	mkdir "..\..\Source Documents\%NewAppName%\4_App"
	mkdir "..\..\Source Documents\%NewAppName%\ETL_Rules" 
	mkdir "..\..\Source Documents\%NewAppName%\Include"
	mkdir "..\..\Source Documents\%NewAppName%\Include\Connections"
	mkdir "..\..\Source Documents\%NewAppName%\Variables"
	mkdir "..\..\Source Documents\%NewAppName%\QVDs\Extracted"
	mkdir "..\..\Source Documents\%NewAppName%\QVDs\Transformed\tmp"
	mkdir "..\..\Source Documents\%NewAppName%\External Data\XLS"
	mkdir "..\..\Source Documents\%NewAppName%\External Data\CSV"
exit /b
