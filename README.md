
# TSEEQ (pronounced "seek"), The Structured ETL Engine for Qlik

## Latest Release == [3.1.1](https://github.com/qlikperf/TSEEQ/releases/latest)

## Documentation
Please read the TSEEQ **[documentation](http://eapowertools.github.io/GovernedMetricsService/)** for step-by-step instructions.

## Minimum Requirements:
QlikView 11 or QlikView 12; Qlik Sense 2.1 or higher (including all releases name after dates, for example, QlikSense June 2017 release).  TSEEQ works with both Desktop and Server product variants.

## Install
To install TSEEQ, first download the **[master ZIP file](https://s3.amazonaws.com/eapowertools/governedmetricsservice/bin/GovernedMetricsService.exe)**. Unzip that file, and follow instructions in the SEEQ Documentation.PDF.

## Description
<div class="WordSection1">
# **_<span style="color:#3B681A">TSEEQ</span>_** (pronounced “seek”), the Structured ETL Engine for Qlik
**_<span style="color:#3B681A">TSEEQ</span>_** implements centralized management of Extract, Transform and Load (ETL) operations that provide data to QlikView and Qlik Sense applications.
Primary benefits of **_<span style="color:#3B681A">TSEEQ</span>_** are:
<span style="font-family:Symbol">·</span><span style="font-size:7.0pt;font-family:&quot;Times New Roman&quot;,serif"></span> **Governance:** ETL operations are defined in externalized (and therefore readily manageable) rule sets.
<span style="font-family:Symbol">·</span><span style="font-size:7.0pt;font-family:&quot;Times New Roman&quot;,serif"></span> **Self-Service:** Business users may easily define and modify ETL operations in sandbox environments.
<span style="font-family:Symbol">·</span><span style="font-size:7.0pt;font-family:&quot;Times New Roman&quot;,serif"></span> **Performance:** A profiler enables efficient ETL execution.
<span style="font-family:Symbol">·</span><span style="font-size:7.0pt;font-family:&quot;Times New Roman&quot;,serif"></span> **Productivity:** A common code base promotes reuse and streamlines ETL development.
# <a name="_Toc488695340"></a><a name="_Toc478271052"></a>![](img/SEEQ_basic_flow.png)
# **_<span style="color:#3B681A">TSEEQ</span>_** In Comparison to Traditional Embedded Scripting
The distinguishing characteristic of **_<span style="color:#3B681A">TSEEQ</span>_** versus Traditional Embedding Scripting (**TES**) is that in **_<span style="color:#3B681A">TSEEQ</span>_**, externalized rules (diagram above) provides a structured source of ETL control; in **TES**, free-form textual ETL script is embedded within Qlik application files (**QVWs** in QlikView and **QVFs** in Qlik Sense). We can conceptualize **TES** as shown in the diagram below:
![](img/SEEQ_basic_flow.png)
Note: **_<span style="color:#3B681A">TSEEQ</span>_** and **TES** are not mutually exclusive; a hybrid approach is useful in many cases.
**_<span style="color:#3B681A">TSEEQ</span>_** test will be posting **_<span style="color:#3B681A">TSEEQ</span>_** as a project on QlikBranch.

<span style="color:#00006C"> </span>

</div>

## License
**[MIT](https://github.com/eapowertools/GovernedMetricsService/blob/master/license)**

If you experience an issue, do not contact Qlik Support.  Please open an issue here: **[Issues](https://github.com/qlikperf/TSEEQ/issues)**
