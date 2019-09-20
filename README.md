
# **__TSEEQ__** ("seek"), The Structured ETL Engine for Qlik

## Latest Release == [4.0.2](https://github.com/qlikperf/TSEEQ/releases/latest)

## Documentation
Please read the **__TSEEQ__** **[documentation](https://github.com/qlikperf/TSEEQ/blob/master/TSEEQ%20Documentation.pdf)** for step-by-step instructions.

## Minimum Requirements:
QlikView (v11 or 12); OR Qlik Sense 2.1 or higher (including all releases named after dates, for example, the "June 2017" and later releases).  **__TSEEQ__** works with both Desktop and Server product variants.

## Install
To install **__TSEEQ__**, first download the **[Source code (zip) file for the newest release](https://github.com/qlikperf/TSEEQ/releases)**. Unzip that file, and follow instructions in the contained __TSEEQ Documentation.PDF__.

## Description
**__TSEEQ__** implements centralized management of Extract, Transform and Load (ETL) operations that provide data to QlikView and Qlik Sense applications. 
 
Primary benefits of **__TSEEQ__** are: 

* Governance:     ETL operations are defined in externalized (and therefore readily manageable) rule sets.
* Self-Service:   Business users may easily define and modify ETL operations in sandbox environments.
* Performance:    A profiler enables efficient ETL execution.
* Productivity:   A common code base promotes reuse and streamlines ETL development.


![TSEEQ](https://github.com/qlikperf/TSEEQ/blob/master/img/SEEQ_basic_flow.png) 

## **__TSEEQ__** In Comparison to Traditional Embedded Scripting
The distinguishing characteristic of **__TSEEQ__** versus Traditional Embedding Scripting (**TES**) is that in **__TSEEQ__**, externalized rules (diagram above) provides a structured source of ETL control; in **TES**, free-form textual ETL script is embedded within Qlik application files (QVWs in QlikView and QVFs in Qlik Sense). We can conceptualize **TES** as shown in the diagram below:

![TES](https://github.com/qlikperf/TSEEQ/blob/master/img/SEEQ_vs_TES.png) 

Note: **__TSEEQ__** and TES are not mutually exclusive; a hybrid approach is useful in many cases. 

## License
**[MIT](https://github.com/qlikperf/TSEEQ/blob/master/LICENSE)**

If you experience an issue, do not contact Qlik Support.  Please open an issue here: **[Issues](https://github.com/qlikperf/TSEEQ/issues)**
