
# TSEEQ ("seek"), The Structured ETL Engine for Qlik

## Latest Release == [3.1.1](https://github.com/qlikperf/TSEEQ/releases/latest)

## Documentation
Please read the TSEEQ **[documentation](https://github.com/qlikperf/tseeq/blob/master/TSEEQ%20Documentation.pdf)** for step-by-step instructions.

## Minimum Requirements:
QlikView 11 or QlikView 12; Qlik Sense 2.1 or higher (including all released name after dates, for example, QlikSense June 2017 release).  TSEEQ works with both Desktop and Server product variants.

## Install
To install TSEEQ, first download the **[master ZIP file](https://github.com/qlikperf/tseeq/archive/master.zip)**. Unzip that file, and follow instructions in the resulting SEEQ Documentation.PDF.

## Description
TSEEQ implements centralized management of Extract, Transform and Load (ETL) operations that provide data to QlikView and Qlik Sense applications. 
 
Primary benefits of TSEEQ are: 
<li>•         Governance:        ETL operations are defined in externalized (and therefore readily manageable) rule sets.</li>
<li>•         Self-Service:        Business users may easily define and modify ETL operations in sandbox environments.</li>
<li>•         Performance:      A profiler enables efficient ETL execution.</li>
<li>•         Productivity:        A common code base promotes reuse and streamlines ETL development.</li>

![TSEEQ](https://github.com/qlikperf/tseeq/blob/master/img/SEEQ_basic_flow.png) 

## TSEEQ In Comparison to Traditional Embedded Scripting
The distinguishing characteristic of TSEEQ versus Traditional Embedding Scripting (TES) is that in TSEEQ, externalized rules (diagram above) provides a structured source of ETL control; in TES, free-form textual ETL script is embedded within Qlik application files (QVWs in QlikView and QVFs in Qlik Sense). We can conceptualize TES as shown in the diagram below:

![TES](https://github.com/qlikperf/tseeq/blob/master/img/SEEQ_vs_TES.png) 


Note: TSEEQ and TES are not mutually exclusive; a hybrid approach is useful in many cases. 

## License
**[MIT](https://github.com/qlikperf/tseeq/blob/master/license)**

If you experience an issue, do not contact Qlik Support.  Please open an issue here: **[Issues](https://github.com/qlikperf/TSEEQ/issues)**
