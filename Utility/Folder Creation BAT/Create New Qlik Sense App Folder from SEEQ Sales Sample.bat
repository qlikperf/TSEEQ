REM
REM	Create a new app folder under .\Source Documents\, using the TSEEQ Sales Sample as a template.
REM

	SET vSourceDocsFolder=..\..\Source Documents\
	SET vTSEEQSalesFolder=..\..\Source Documents\TSEEQ Sales Sample\

	call :GetvNewAppName
	call :CreateFolders
	call :CopyIncludeFiles
	call :CopyRuleFiles
	call :CopyQVFs
	explorer "%vNewAppFolder%"
exit /b

REM
REM	SUBROUTINE Get New App Name
REM
:GetvNewAppName
	set /p vNewAppName=Please enter the name of your new app, for example, Marketing or Finance:
	SET vNewAppFolder=..\..\Source Documents\%vNewAppName%\
exit /b


REM
REM	SUBROUTINE Copy QVFs
REM
:CopyQVFs
	
	Copy  "%vTSEEQSalesFolder%1_Extract\Sales Extract.QVF"  	"%vNewAppFolder%\1_Extract\%vNewAppName% Extract.QVF"
	Copy  "%vTSEEQSalesFolder%2_Transform\Sales Transform.QVF" 	"%vNewAppFolder%\2_Transform\%vNewAppName% Transform.QVF"
 	Copy  "%vTSEEQSalesFolder%3_Load\Sales DataModel.QVF"  		"%vNewAppFolder%\3_Load\%vNewAppName% DataModel.QVF"
 	Copy  "%vTSEEQSalesFolder%4_App\Sales Dashboard.QVF"  		"%vNewAppFolder%\4_App\%vNewAppName% Dashboard.QVF"
 	Copy  "%vTSEEQSalesFolder%4_App\Sales Datamodel and Dashboard Combined.QVF"  "%vNewAppFolder%\4_App\%vNewAppName% Sales Datamodel and Dashboard Combined.QVF"
exit /b


REM
REM	SUBROUTINE Copy Include Files
REM
:CopyIncludeFiles
	Copy  "%vTSEEQSalesFolder%include\SalesExtractInclude_PreProcessing.txt"   	"%vNewAppFolder%\include\%vNewAppName%ExtractInclude_PreProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesTransformInclude_PreProcessing.txt" 	"%vNewAppFolder%\include\%vNewAppName%TransformInclude_PreProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesLoadInclude_PreProcessing.txt" 		"%vNewAppFolder%\include\%vNewAppName%LoadInclude_PreProcessing.txt"

	Copy  "%vTSEEQSalesFolder%include\SalesExtractInclude_PostProcessing.txt"   	"%vNewAppFolder%\include\%vNewAppName%ExtractInclude_PostProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesTransformInclude_PostProcessing.txt" 	"%vNewAppFolder%\include\%vNewAppName%TransformInclude_PostProcessing.txt"
	Copy  "%vTSEEQSalesFolder%include\SalesLoadInclude_PostProcessing.txt" 		"%vNewAppFolder%\include\%vNewAppName%LoadInclude_PostProcessing.txt"

	Copy  "..\..\Source Documents\TSEEQ Sales Sample\include\SalesAppInclude_PostProcessing.txt"   		"..\..\Source Documents\%NewAppName%\include\%NewAppName%AppInclude_PostProcessing.txt"

exit /b

REM
REM	SUBROUTINE Copy Rule Files
REM
:CopyRuleFiles
	Copy  "%vTSEEQSalesFolder%ETL_Rules\SalesExtractRules.xls"   	"%vNewAppFolder%\ETL_Rules\%vNewAppName%ExtractRules.xls"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\SalesTransformRules.xls"   	"%vNewAppFolder%\ETL_Rules\%vNewAppName%TransformRules.xls"
	Copy  "%vTSEEQSalesFolder%ETL_Rules\SalesLoadRules.xls"   	"%vNewAppFolder%\ETL_Rules\%vNewAppName%LoadRules.xls"
	Copy  "%vTSEEQSalesFolder%Variables\Sales_Variables.xls"   	"%vNewAppFolder%\Variables\%vNewAppName%_Variables.xls"
	Copy  "%vTSEEQSalesFolder%Variables\Sales_Extract_Variables.xls"   	"%vNewAppFolder%\Variables\%vNewAppName%Extract__Variables.xls"

	Copy  "..\..\Source Documents\TSEEQ Sales Sample\Variables\Sales Dashboard Chart Dimensions.xlsx"   	"..\..\Source Documents\%NewAppName%\Variables\%NewAppName% Dashboard Chart Dimensions.xlsx"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\Variables\Sales Dashboard Chart Measures.xlsx"   	"..\..\Source Documents\%NewAppName%\Variables\%NewAppName% Dashboard Chart Measures.xlsx"
	Copy  "..\..\Source Documents\TSEEQ Sales Sample\Variables\Sales Dashboard Selection Pane Fields.xlsx"   "..\..\Source Documents\%NewAppName%\Variables\%NewAppName% Dashboard Selection Pane Fields.xlsx"

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
	mkdir "%vNewAppFolder%1_Extract"
	mkdir "%vNewAppFolder%2_Transform"
	mkdir "%vNewAppFolder%3_Load
	mkdir "%vNewAppFolder%4_App"
	mkdir "%vNewAppFolder%ETL_Rules"
	mkdir "%vNewAppFolder%ETL_Rules\CSV"
	mkdir "%vNewAppFolder%Include"
	mkdir "%vNewAppFolder%Variables"
	mkdir "%vNewAppFolder%QVDs\Extracted"
	mkdir "%vNewAppFolder%QVDs\Transformed\tmp"
	mkdir "%vNewAppFolder%External Data\XLS"
	mkdir "%vNewAppFolder%External Data\CSV"
exit /b