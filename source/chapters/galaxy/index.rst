About CellOrganizer for Galaxy
==============================

CellOrganizer for Galaxy is a set of tools that enables users to train generative models of the cell from microscopy images, analyze trained models, and synthesize model instances by accessing CellOrganizer through the Galaxy GUI.

Using CellOrganizer for Galaxy
==============================

Currently, you can get started with CellOrganizer for Galaxy by the following ways (more to come)

Cloning repository and setting environment variables
****************************************************

Clone the repository::

    git clone git@repositories.compbio.cs.cmu.edu:cellorganizer/galaxy-tools.git

and copy the contents of the folder 

Accessing the CellOrganizer for Galaxy public server
====================================================

The CellOrganizer for Galaxy public server can be accessed at `galaxy.compbio.cs.cmu.edu <http://galaxy.compbio.cs.cmu.edu:8080/>`_.

Getting started
===============

The following subsections describe

* How to register for a user account on the CellOrganizer for Galaxy public server
* The essential features of the Galaxy GUI

Galaxy Registration
-------------------
In order to use CellOrganizer for Galaxy, you must register for a user account.

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

    .. image:: ../images/galaxyinterface.png

The Tools window lists all the tools that are available to the user. For user convenience, we have grouped the tools into six categories

* Get Data (E.g under the Get Data section we have the following three tools)
    * Upload File from your computer
    * Imports image from a URL
    * Imports generative model from a URL
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

The Main Content window is the CellOrganizer for Galaxy workspace. Once a tool or workflow (this term will be explained later) has been selected from the Tool Window, the user can specify the input parameters via the Main Content window.  

Work Histories
**************

Work Histories are Galaxy's way of enabling users to create multiple isolated workspaces. You can think of your current Work History as your current workspace. At any point in time, your History window displays all the data you have either downloaded or produced in your current workspace.

Let's say you download some data into your current Work History. That data is now accessible to tools in your Tools Window. You can apply any tool on that data, provided that it considers the data as valid input. The output of this operation will get saved to your current Work History, and now you can even apply tools to this newly accessible data as well.

If you now want to work on unrelated data, you can simply create a new Work History, switch your workspace to that newly created Work History, and work on that data without having to see the clutter of the previous workspace. Of course, you can always switch between Work Histories whenever you like. 

Work Histories can be shared between Galaxy users, allowing them to see each other's outputs/errors.

For more information click `here <https://galaxyproject.org/tutorials/histories/>`_. 

Jobs
****

Whenever you manage to execute a tool, you are essentially submitting a job to the server. And to execute a tool, you need to both provide the minimal set of inputs and to provide valid inputs. Whenever you click on one of the tools in the Tools Window, you should also see accompanying documentation in the Main Content window specifying what sort of inputs you need to provide to the tool. 

For more information click `here <https://galaxyproject.org/support/how-jobs-execute/>`_.

Workflows
*********

Workflows are Galaxy's way of enabling users to automate particular pipelines (which can even be shared among users). You can also think of them as a means to construct more complex tools by piecing together simpler ones.

Let's say you keep on repeating a certain procedure. You download data, run a tool on it to produce some output, then visualize the output. Each time you repeat the procedure, you first have to click on the tool to download data and fill up the necessary input values, then you have to wait for the data to be downloaded, then you have to click on the tool you wanted to run on the data and fill up the necessary input values, then ... and so on. This is unnecessarily tedious. 

Instead, we can streamline the procedure by linking the intermediate stages together via a Workflow (which essentially resembles a longer tool). We get to fill up the necessary parameter settings that the intermediate stages require all at once. Then we can simply click run and wait for the final output.   

For more information click `here <https://galaxyproject.org/learn/advanced-workflow/>`_.

In the table below, we have provided links to sample workflows constructed using CellOrganizer for Galaxy tools.

+--------------------------------------------------------------------+
| Workflow Name                                                      |
+====================================================================+
| Train-2D-PCA-framework-generative-model_                           |
+--------------------------------------------------------------------+
| Train-2D-classic-generative-model_                                 |
+--------------------------------------------------------------------+
| Train-2D-classic-framework-generative-model_                       |
+--------------------------------------------------------------------+
| Train-2D-diffeomorphic-framework-generative-model_                 |
+--------------------------------------------------------------------+
| Train-2D-diffeomorphic-framework-and-vesicular-pattern-model_      |
+--------------------------------------------------------------------+

.. _Train-2D-PCA-framework-generative-model: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/w/train-2d-pca-framework
.. _Train-2D-classic-generative-model: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/w/train-2d-classic-model
.. _Train-2D-classic-framework-generative-model: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/w/train-2d-classic-framework
.. _Train-2D-diffeomorphic-framework-generative-model: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/w/train-2d-diffeo-framework
.. _Train-2D-diffeomorphic-framework-and-vesicular-pattern-model: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/w/train-2d-diffeo-vesicle-model

Links to Demo Histories
***********************
This table contains information about CellOrganizer demos.
Click on the demo name to open the demo history in CellOrganizer for Galaxy tools.

+-----------+---------+------------+-------------+
| Name      | 2D/3D   | Training   | Synthesis   |
+===========+=========+============+=============+
| demo2D00_ | 2D      |            | True        |
+-----------+---------+------------+-------------+
| demo2D01_ | 2D      | True       |             |
+-----------+---------+------------+-------------+
| demo2D04_ | 2D      | True       |             |
+-----------+---------+------------+-------------+
| demo2D05_ | 2D      | True       |             |
+-----------+---------+------------+-------------+
| demo2D06_ | 2D      |            | True        |
+-----------+---------+------------+-------------+
| demo2D07_ | 2D      |            | True        |
+-----------+---------+------------+-------------+
| demo3D00_ | 3D      |            | True        |
+-----------+---------+------------+-------------+
| demo3D01_ | 3D      |            | True        |
+-----------+---------+------------+-------------+
| demo3D04_ | 3D      |            | True        |
+-----------+---------+------------+-------------+
| demo3D05_ | 3D      |            | True        |
+-----------+---------+------------+-------------+
| demo3D11_ | 3D      | True       |             |
+-----------+---------+------------+-------------+
| demo3D12_ | 3D      | True       |             |
+-----------+---------+------------+-------------+

.. _demo2D00: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo2d00
.. _demo2D01: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo2d01
.. _demo2D04: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo2d04
.. _demo2D05: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo2d05
.. _demo2D06: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo2d06
.. _demo2D07: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo2d07
.. _demo3D00: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo3d00
.. _demo3D01: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo3d01
.. _demo3D04: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo3d04
.. _demo3D05: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo3d05
.. _demo3D11: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo3d11
.. _demo3D12: http://galaxy.compbio.cs.cmu.edu:8080/u/cellorganizer/h/demo3d12

Additional Resources
====================
`Galaxy Community Hub <https://galaxyproject.org/learn/>`_ provides a list of instructive tutorials on how to use the various features of `Galaxy-Main <https://usegalaxy.org/>`_. Although Galaxy-Main differs from Galaxy-for-CellOrganizer in some aspects (e.g. the set of tools available), the essential features are the same and so these tutorials will likely be helpful to read anyway.

Further Exercises 
=================

We have prepared a series of exercises to demonstrate how you might go about using CellOrganizer for Galaxy.

Data Importing Exercises
------------------------

Exercise 1. Importing image files that are already in CellOrganizer for Galaxy

1. Go to the navigation bar at the top of the homepage, click on "Shared Data", and then choose "Data Libraries".
2. Go to Images -> HeLa -> 2D -> 2D HeLa LAMP2
3. Tick the box next to "2D HeLa LAMP2".
4. Click on "To History", select the history you would like to send the image dataset to, and then click "Import". 

Exercise 2. Importing a model that is already in CellOrganizer for Galaxy

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
2. Import the "2D HeLa LAMP2" image dataset from "Shared Data" (See Exercise 1), and create a dataset collection called "2D HeLa LAMP2" from these image files (See section **Creating a collection from datasets in your history** in `link <https://galaxyproject.org/tutorials/collections/>`_).
3. Under the "Training" section of the Tools window, select "Trains a generative model".
4. Directly under "Choose a data set for training a generative model", there should be two icons. If you hover your cursor over them, one says "Multiple datasets" and the other says "Dataset collections". Click on the icon for "Dataset collections" and select the "2D HeLa LAMP2" dataset collection as the input dataset collection. 
5. Select the following settings

* Select the cellular components desired for modeling: Nuclear and cell shape (framework)
* Dimensionality: 2D
* Nuclear shape model class: Framework
* Nuclear shape model type: PCA
* Cell shape model class: Framework
* Cell shape model type: PCA

6. Under the "Advanced options" section, click "Insert Options", and then fill in latent_dim for "Name" and 15 for "Values". 
7. Fill in 2D-HeLa-LAMP2-PCA under "Provide a name for the model".
8. Do not change any other default settings, and click "Execute". 

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
6. Repeat steps 3-5, but this time select the "2D HeLa vesicle model of nucleoli" as the input model, and select the "Synthesis option" as "Synthesize nuclear and cell membrane (framework)". 

Model Combination Exercises
---------------------------

Exercise 8. Combine the Nuclear shape component of one model with the Cell shape component of another model into a single model 

1. Select or create a history that contains at least two models. For this exercise, we will use the models "2D HeLa - medial axis and ratio models of the cell and nucleus - vesicle model of endosomes" and "2D HeLa - medial axis and ratio models of the cell and nucleus - vesicle model of lysosomes" from the curated model repository (See Exercise 2). 
2. Under "Useful tools for models" select "Combine multiple generative model files into a single file". 
3. Click on "Insert Models" twice to open two model selection sections.
4. In the first model selection section, select the model whose Nuclear shape component we want to use.
5. In the second model selection section, select the model whose Cell shape component we want to use.
6. (Optional) If you want to add additional documentation to the combined model, click "Insert Documentation". Under the "Name" section, fill in (without quotes) the word 'documentation'. Under the "Values" section, fill in any additional information you want to store within the model and enclose that information in quotes (E.g. 'This model was created by combining model A's Nuclear shape component with model B's Cell shape component').     
7. Click "Execute". The tool will now produce a new model with the Nuclear shape component of the first model, and the Cell shape component of the second model.

Exercise 9. Combine the Nuclear shape and Cell shape components of one model with the Protein distribution component of another model into a single model

1. Select or create a history that contains at least two models. For this exercise, we will use the models "2D HeLa - medial axis and ratio models of the cell and nucleus - vesicle model of endosomes" and "2D HeLa - medial axis and ratio models of the cell and nucleus - vesicle model of lysosomes" from the curated model repository (See Exercise 2).
2. Under "Useful tools for models" select "Combine multiple generative model files into a single file". 
3. Click on "Insert Models" thrice to open three model selection sections.
4. In both the first and second model selection sections, select the model whose Nuclear shape and Cell shape components we want to use.
5. In the third model selection section, select the model whose Protein distribution component we want to use.
6. (Optional) If you want to add additional documentation to the combined model, click "Insert Documentation". Under the "Name" section, fill in (without quotes) the word 'documentation'. Under the "Values" section, fill in any additional information you want to store within the model and enclose that information in quotes (E.g. 'This model was created by combining model A's Nuclear shape and Cell shape components with model B's Protein distribution component'). 
7. Click "Execute". The tool will now produce a new model with the Nuclear shape and Cell shape components of the first model, and the Protein distribution component of the third model.

Visualization Exercises
-----------------------

Exercise 10. Retrieve and display information about a model

1. Select or create a history that contains a diffeomorphic model.
2. Under the "Useful tools for models" section of the Tools window, select "Print information about a generative model file". 
3. Click "Execute".
