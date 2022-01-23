# oxstreet
# For Assignment 1, create test case for sign up, log in, forget password
Please check the execl file at the location :/oxstreet/OXStreet- Testcases.xlsx.

![can not load pic](/img/img0.png )

# For Assignment 2: Automation task.
## Pre-condition to run the test: install python first
We are using robot framework to write our test case.
Due to robot framework is built on python then we have to install python before run the test case.
to check if your computer is already installed python or not:
+ on window: open cmd and run command : python --version
+ on macos: open the terminal and run command: python --version

If your computer already installed then above command will print the output version. of it will print "command not found". if you want to install python you can follow step in this site: https://www.w3computing.com/python/installing-python-windows-macos-linux/
In case your computer already have python, then no need to install python.

## Step 1: clone source to your local

## Step 2: Edit data for own test
you can edit your data for testing like:
+ email
+ password
+ site url
+ browser: valid values are: firefox, chromium, webkit
+ headless: if you want to run in headless set this value to True, otherwise set to False
you can find these constant at the file: oxstreet/Resources/Constant.robot

![can not load pic](/img/img1.png )

## Step 3: How to check the test script detail
you can find the test script in location: /oxstreet/Testsuites/SearchTestSuite.robot

![can not load pic](/img/img2.png )

## Step 4: How to run the test case
Install the library framework first:
+ step 4.1: open terminal/cmd and go to root folder: oxstreet

![can not load pic](/img/img3.png )

+ step 4.2: run the command: pip3 install -r requirement.txt

![can not load pic](/img/img4.png )

note: if you use macos: you use "pip3 install -r requirement.txt" , if you use window : you use "pip install -r requirement.txt"  and make sure you are in the root folder where has the file "requirement.txt"

+ step 4.3: next you run the command (this command will take sometime): rfbrowser init

![can not load pic](/img/img5.png )

+ step 4.4: last command you can run is: robot --outputdir Report Testsuites/

![can not load pic](/img/img6.png )

## Step 5: How to check the report
To check the report, you can go to this folder: oxstreet/Report.
In the 'Report' folder there are 4 files: report.html, log.html, playwright-log.txt.
you just open file report.hmtl by browser and check the report there.

![can not load pic](/img/img7.png )

