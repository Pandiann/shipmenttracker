# Background:
Merz Aesthetics Customer Service representatives must quickly get the updated status of a customer shipment. When viewing the standard Shipment page in Salesforce, the rep wants to be able to view a Lightning Web Component that displays the latest status of the Shipment based on the tracking number of the Shipment record.

# Project:
Develop an LWC that calls the mock shipping status service defined below and displays the response to the end user.

# Salesforce DX Project: Shipment Status

# Steps followed: 
Apex Class with method created for invoking the webservices. Enable the Remote Site Setting for the URL needs to be authorized to be invoked from Apex Class.
Web Service returns XML tag with the tag response, unpack the xml value the return as string value.
Create a LWC Component with accepting tracking number from the user and pass as paramter to Apex Class for invoking the Shipment URL and obtain the response. 
Upon receiving the response from the Apex method render the shipment status back to the user.
Add the LWC Component to the Sales and Contact pages for the visbility.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
