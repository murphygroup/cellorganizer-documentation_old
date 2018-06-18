About CellOrganizer-for-Galaxy
==============================

CellOrganizer-for-Galaxy is a set of tools that enables users to train generative models of the cell from microscopy images, analyze trained models, and synthesize model instances by accessing CellOrganizer through the Galaxy GUI.

Using CellOrganizer-for-Galaxy
==============================

You can get started with CellOrganizer-for-Galaxy by one of the following ways

* Access CellOrganizer-for-Galaxy through the public server that we host


Accessing the CellOrganizer-for-Galaxy public server
====================================================

The CellOrganizer-for-Galaxy public server can be accessed at `galaxy.compbio.cs.cmu.edu <http://galaxy.compbio.cs.cmu.edu:8080/>`_.

Getting started
===============

The following subsections describe

* How to register for a user account on the Cellorganizer-for-Galaxy public server
* The essential features of the Galaxy GUI

Galaxy Registration
-------------------
In order to use CellOrganizer-for-Galaxy, you must register for a user account.

#. Open a web browser, and go to `galaxy.compbio.cs.cmu.edu <http://galaxy.compbio.cs.cmu.edu:8080/>`_.

#. Go to the "Login or Register" link at the top of the Galaxy interface and select "Register". If you already have an account, then select "Login". 

    .. image:: ../images/galaxy_bridges/registerbutton.png
        :align: center
        :width: 240px
        :height: 240px

#. You will need to provide an email address, a password, and a public name (optional) for registration. After you have entered your information, click "Submit".

You will be redirected to the home page of the Galaxy interface for your account.

Essential features of Galaxy
----------------------------

Homepage
*********

The homepage is divided into four parts

* Navigation bar (top of the page)
* Tools window (left side of the page)
* History window (right side of the page)
* Main Content window ( center of the page)

    .. image:: ../images/galaxy_bridges/galaxyinterface.png

The Tools window lists all the tools that are available to the user. For user convenience, we have grouped the tools into six categories

* Get Data (E.g under the Get Data section we have the following three tools)
    * Upload File from your computer
    * Imports image or model from a URL
    * Imports model from the curated model repository
* Training 
* Synthesis
* Useful tools for images
* Useful tools for models
* File Validators

The History window lists all the jobs that the user has submitted and indicates their respective statuses via color coding. Whenever the user executes a tool, he/she submits a new job that will appear at the top of the History window as a rectangular box with a designed number and a descriptive name. The color of the box indicates the status of the corresponding job.

* Gray means that the job has been submitted but not yet added to the job queue
* Yellow means that the job has been submitted to the job queue
* Red means that the job either exited before completion, or did not produce the expected output
* Green means that the job ran successfully to completion and is ready to be viewed

The Main Content window is the CellOrganizer-for-Galaxy workspace. Once a tool or workflow (this term will be explained later) has been selected from the Tool Window, the user can specify the input parameters via the Main Content window.  

Work Histories
**************

Work Histories are Galaxy's way of enabling users to create multiple isolated workspaces. You can think of your current Work History as your current workspace. At any point in time, your History window displays all the data you have either downloaded or produced in your current workspace.

Let's say you download some data into your current Work History. That data is now accessible to tools in your Tools Window. You can apply any tool on that data, provided that it considers the data as valid input. The output of this operation will get saved to your current Work History, and now you can even apply tools to this newly accessible data as well.

If you now want to work on unrelated data, you can simply create a new Work History, switch your workspace to that newly created Work History, and work on that data without having to see the clutter of the previous workspace. Of course you can always switch between Work Histories whenever you like. 

Work Histories can be shared between Galaxy users, allowing them to see each other's outputs/errors.

For more information click `here <https://galaxyproject.org/tutorials/histories/>`_. 

Jobs
****

Whenever you manage to execute a tool, you are essentially submitting a job to the server. And to execute a tool, you need to both provide the minimal set of inputs and to provide valid inputs. Whenever you click on one of the tools in the Tools Window, you should also see accompanying documentation in the Main Content window specifying what sort of inputs you need to provide to the tool. 

For more information click `here <https://galaxyproject.org/support/how-jobs-execute/>`_.

Workflows
*********

Workflows are Galaxy's way of enabling users to automate particular pipelines (which can even be shared among users). You can also think of them as a means to construct more complex tools by piecing together simpler ones.

Let's say you keep on repeating a certain procedure. You download data, run a tool on it to produce some output, then visualize the output. Each time you repeat the procedure, you first have to click on the tool to download data and fill up the necessary input values, then you have to wait for the data to be downloaded, then you have to click on the tool you wanted to run on the data and fill up the necessary input values, then .... and so on. This is unecessarily tedious. 

Instead, we can streamline the procedure by linking the intermediate stages together via a Workflow (which essentially resembles a longer tool). We get to fill up the necessary parameter settings that the intermediate stages require all at once. Then we can simply click run and wait for the final output.   

For more information click `here <https://galaxyproject.org/learn/advanced-workflow/>`_.

Additional Resources
====================
`Galaxy Community Hub <https://galaxyproject.org/learn/>`_ provides a list of instructive tutorials on how to use the various features of `Galaxy-Main <https://usegalaxy.org/>`_. Although Galaxy-Main differs from Galaxy-for-CellOrganizer in some aspects (e.g. the set of tools available), the essential features are the same and so these tutorials will likely be helpful to read anyway.

Further Exercises 
=================

We have prepared a series of exercises to demonstrate how you might go about using CellOrganizer-for-Galaxy.

Data Importing Exercises
------------------------

Exercise 1. Importing image files that are already in CellOrganizer-for-Galaxy

1. Go to the navigation bar at the top of the homepage, click on "Shared Data", and then choose "Data Libraries".
2. Go to Images -> HeLa.
3. Tick the box next to "2D HeLa LAMP2".
4. Click on "To History", select the history you would like to send the image dataset to, and then click "Import". 

Exercise 2. Importing a model that is already in CellOrganizer-for-Galaxy

1. Under the "Get Data" section of the Tools window, select "Downloads model from the curated model repository".
2. Select the model you would like to import to the current history, and click "Execute". 

Exercise 3. Uploading image files / generative models from your computer

1. Under the "Get Data" section of the Tools window, select "Upload File from your computer". 
2. Click on "Choose local file" and then select image/model files that you wish to upload. 
3. For every OMETIFF image that you upload, you should change the Type from "Auto-detect" to "tiff". Similarly, for every model MAT-file that you upload, you should change the Type to "mat". If all files that you are uploading have the same type, then you can simply use the "Type (set all)" option instead of having to make changes one at a time.
4. Click on "Start". 


Model Training Exercises
------------------------

Exercise 4. Train a shape space model for 2D cell and nuclear shape using the PCA approach

1. Create a new history if desired.
2. Import the "2D HeLa LAMP2" dataset collection from "Shared Data" (See Exercise 1).
3. Under the "Training" section of the Tools window, select "Trains a generative model". 
4. Select the "2D HeLa LAMP2" dataset as the input dataset. And select the following settings

* Select the cellular components desired for modeling: Nuclear and cell shape (framework)
* Dimensionality: 2D
* Nuclear shape model class: Framework
* Nuclear shape model type: PCA
* Cell shape model class: Framework
* Cell shape model type: PCA

5. Under the "Advanced options" section, click "Insert Options", and then fill in latent_dim for "Name" and 15 for "Values". 
6. Fill in 2D-HeLa-LAMP2-PCA under "Provide a name for the model".
7. Do not change any other default settings, and click "Execute". 

Exercise 5. Train a model for punctate organelles (e.g. vesicles) from a subset of the 3D HeLa LAMP2 collection

1. Create a new history if desired.
2. Import the "3D HeLa LAMP2" dataset collection from "Shared Data" (See Exercise 1).
3. Under the "Training" section of the Tools window, select "Trains a generative model".
4. Select the "3D HeLa LAMP2" dataset as the input dataset. And select the following settings

* Select the cellular components desired for modeling: Nuclear shape, cell shape and protein pattern
* Dimensionality: 3D
* Protein model protein location: Nucleus and cytoplasm

5. Fill in 3D-HeLa-LAMP2-classic under "Provide a name for the model". 
6. Do not change any other default settings, and click "Execute". 

Exercise 6. Train a diffeomorphic shape space model for cell and nuclear shape from a subset of the 3D HeLa LAMP2 collection

1. Create a new history if desired.
2. Import the "3D HeLa LAMP2" dataset collection from "Shared Data" (See Exercise 1).
3. Under the "Training" section of the Tools window, select "Trains a generative model".
4. Select the "3D HeLa LAMP2" dataset as the input dataset. And select the following settings

* Select the cellular components desired for modeling: Nuclear and cell shape (framework)
* Dimensionality: 3D
* Nuclear shape model class: Framework
* Nuclear shape model type: Diffeomorphic
* Cell shape model class: Framework
* Cell shape model type: Diffeomorphic

5. Fill in 3D-HeLa-LAMP2-diffeo under "Provide a name for the model".
6. Do not change any other default settings, and click "Execute".

Model Synthesis Exercises
-------------------------

Exercise 7. Synthesize an image from an existing model

1. Create a new history if desired.
2. Import the "3D HeLa vesicle model of mitochondria" and the "2D HeLa vesicle model of nucleoli" from the curated model repository (See Exercise 2).
3. Under the "Synthesis" section of the Tools window, select "Generates a synthetic image ..."
4. Select the "3D HeLa vesicle model of mitochondria" as the input model, and select the "Synthesis option" as "Synthesize from all models". 
5. Click "Execute". 
6. Repeat steps 3-5, but this time select the "2D HeLa vesicle model of nucleoli" as the input model, and select the "Synthesis option" as "Synthesize nuclear and cell membrane (framework". 

Visualization Exercises
-----------------------

Exercise 8. Retrieve and display information about a model

1. Select or create a history that contains a diffeomorphic model.
2. Under the "Useful tools for models" section of the Tools window, select "Print information about a generative model file". 
3. Click "Execute".
