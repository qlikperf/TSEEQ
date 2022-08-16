
# **__TSEEQ__** ("seek"), The Structured ETL Engine for Qlik

## Latest Release == [6.0.1](https://github.com/qlikperf/TSEEQ/releases/latest)

## Documentation
Please see the **__TSEEQ__** **[documentation](https://github.com/qlikperf/TSEEQ/blob/master/TSEEQ%20Documentation.pdf)** for step-by-step instructions for installation and configuration.

## Minimum Requirements (one of the following):
Qlik Sense® Business, Qlik Sense® Enterprise SaaS, Qlik Sense® Enterprise Client-Managed and QlikView 

**__TSEEQ__** works with Cloud (SaaS), Desktop and on-premise Windows Server product variants of Qlik Sense and QlikView.


## Install
To install **__TSEEQ__**, first download the **[Source code (zip) file for the newest release](https://github.com/qlikperf/TSEEQ/releases)**. After you download the file, please check **Unblock** in the file properties and then click **OK**.

![Unblock](https://github.com/qlikperf/TSEEQ/blob/master/img/unblock_zip_file.png) 

After unblocking the ZIP file, please follow the Instructions for the **__TSEEQ Sales Sample__** on page 5 of the  **[documentation](https://github.com/qlikperf/TSEEQ/blob/master/TSEEQ%20Documentation.pdf)**. 

This documentation is also contained as a PDF in the **[Source code (zip) file for the newest release](https://github.com/qlikperf/TSEEQ/releases)**.


## Description
**__TSEEQ__** implements centralized management of Extract, Transform and Load (ETL) operations that provide data to QlikView and Qlik Sense applications. 
 
Primary benefits of **__TSEEQ__** are: 

* Governance:     ETL operations are defined in externalized (and therefore readily manageable) rule sets.
* Self-Service:   Business users may easily define and modify ETL operations in sandbox environments.
* Performance:    A profiler enables efficient ETL execution.
* Productivity:   A common code base promotes reuse and streamlines ETL development.


![TSEEQ](https://github.com/qlikperf/TSEEQ/blob/master/img/TSEEQ%203-stage%20newer.png) 

## **__TSEEQ__** In Comparison to Traditional Embedded Scripting
The distinguishing characteristic of **__TSEEQ__** versus Traditional Embedding Scripting (**TES**) is that in **__TSEEQ__**, externalized rules (diagram above) provides a structured source of ETL control; in **TES**, free-form textual ETL script is embedded within Qlik application files (QVWs in QlikView and QVFs in Qlik Sense). We can conceptualize **TES** as shown in the diagram below:

![TES](https://github.com/qlikperf/TSEEQ/blob/master/img/SEEQ_vs_TES.png) 

Note: **__TSEEQ__** and TES are not mutually exclusive; a hybrid approach is useful in many cases. 

## License
**[MIT](https://github.com/qlikperf/TSEEQ/blob/master/LICENSE)**

If you experience an issue, do not contact Qlik Support.  Please open an issue here: **[Issues](https://github.com/qlikperf/TSEEQ/issues)**
