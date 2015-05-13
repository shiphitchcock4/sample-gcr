
## sample-gcr-nodejs

A sample dockerized app to demonstrate Google Container Registry (GCR) functionality within Shippable. This specific sample demonstrates how to pull a public image from Docker and push to GCR.

To read more about GCR, check out the [google documentation] (https://cloud.google.com/tools/container-registry/) or our [announcement blog] (http://googlecloudplatform.blogspot.com/2015/01/secure-hosting-of-private-Docker-repositories-in-Google-Cloud-Platform.html)

## Pre-requisites 

1. Create a Project in Google Dev Console (GDC)
       If you already have a project you want to use, skip to step 2.
     * Sign in to the [Google Developers Console] (https://console.developers.google.com/)
     * Click on `Create Project`
     * Enter a name and project ID or accept the defaults.
     * Click `Create`

1. Set up OAuth for your GDC project
     * On the [Google Developers Console] (https://console.developers.google.com/) , select the project you just created
     * In the sidebar on the left, expand `APIs & auth` and select `Credentials`
     * Click `Create new Client ID` and select `Service Account` in the pop-up window
     * Click on `Create Client ID`. A dialog box appears. To proceed, click `Okay, got it`
     * Your new Public/Private key pair is generated and downloaded to your machine. **Please store this carefully since you will not be able to retrieve this from your GDC account. You will need this key pair to set up GCR integration on Shippable.**

1. Set up GCR Integration 
If you want to interact with GCR in any part of your build workflow for your Shippable project, such as using your private images for your builds or pushing images to your repository, you need to connect your GCR project to your Shippable account. 

    * Login to Shippable
    * Click on `Settings` on the top bar of your dashboard
    * On the Settings page, click on `Integrations`
    * From the options presented, click on GCR
    * Enter an Integration name, which will be used to refer to this integration on Shippable
    * Copy the key pair generated during the last step and paste into the jsonKey field.
    * Click on `Save`

You have now set up GCR integration at an account level in Shippable.  Read on for further instructions on how to set up a project level integration

-------
## Set up Project Level Integration

To enable GCR integration for the repository for which you want to pull a custom image:

* Go to your repository page on Shippable and click on `Integrations` on the right sidebar
* Click on the dropdown for `Hub` and select the GCR Integration name you want to use (the same Integration Name you had created this as part of the pre-requisites above)

## Update Project Settings to pull from Docker and push to GCR 

* On the repo page, go to 'Settings'. 
* Choose a public image from Docker from the dropdown shown for "Pull Image from"
* Choose Push Build : Yes
* Push image to : gcr.io/gcr_project_id/image_name
* Cache: You can choose to turn this on or off based on whether you would like a fresh install of the image between builds

An example of how your project settings should look for this scenario:

![screen shot 2015-05-13 at 10 37 15 am](https://cloud.githubusercontent.com/assets/9526532/7616801/14685e34-f95c-11e4-836d-6e0eef8a293d.png)




