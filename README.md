CSE595_DataAnalyticsSoftwareStack
=================================

CSE 595 - Course Project - Health Care Data Analytics

Group No: 3
Dataset: 5

###Problem Statement
1)     Given sets of areas enclosed by polygons Si and Sj , generate area defined by intersection.  

2)     Generate set Sk of polygons that constitute this intersection

3)     For a user specified spatial region,  display Si,  Sj and Sk

4)     For a user specified spatial region, calculate the correspondence between sets of polygons Si and Sj .  There are a variety of ways of doing this – e.g.   2*area of Sk/(area of Si + area of Sj)

5)     Compute feature vectors Fi from Pathology images.  Be creative about choice of features.  Examples:  a) Mask area, perimeter,  shape, b) Within-mask texture,  c) Padded region texture

6)     Compute differences between each feature vector and for collections of feature vectors for overlapping nuclei

7)     Use color/shading to depict variation between different spatial regions of 1) nuclear  spatial overlap  2) various measures of  feature vector difference 

###Software:

####The Architecture Diagram: 
This is available in the Final presentation slides

####Technologies and Tools Used:
-Java, Python, Matlab, Bash Scripts
-Web Application built using Netbeans IDE
-Front End : HTML, Twitter Bootstrap

####System Specification:
This is the system where the application performed consistently
Processor: Intel Core i5 
Standard Memory 6 GB
Memory Technology	DDR3 SDRAM
Processor Speed	1.70 GHz
Processor Core	Dual-core (2 Core)
Cache	3 MB

####Process Flow
The flowchart is available in the final presentation.

###Installation Steps
####Install the softwares and dependent libraries
1. Install Python2.7 (stable)
2. Install the python libraries such as pandas, matplotlib, prettyplotlib, shapely,numpy, sys, sklearn, mpl_toolkits
3. Install Matlab
4. Install Netbeans
5. Download the web application source code from the repository and place it in your netbeans workplace
6. Folder Setup: Download the folder dass. This contains 3 folder: input, output, exec
  6.1 Input folder contains text(set of polygon text files), img (image segments of the big image)
  6.2 Process folder should be empty, this is used by the application to save the pre-processed files
  6.3 Output Folder: Consolidated files saved to this folder by
  6.4 Exec folder: contains all the batch, python, matlab scripts
7. Open config file, update the paths to reflect the local file system configuration
8. Do Build and Clean, Deploy the application
9. Run the index.jsp

