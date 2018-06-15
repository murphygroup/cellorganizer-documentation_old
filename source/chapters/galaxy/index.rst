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

The following instructions describe

* How to register for user account on the Cellorganizer-for-Galaxy public server
* How to use various basic features of the Galaxy GUI

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

Basic features of Galaxy
------------------------

Home Page
*********

The home page is divided into four parts

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

The History window lists all the jobs that the user has submitted and indicates their respective statuses via color coding. Whenever the user executes a tool, he/she submits a new job that will appear at the top of the History window as a rectangular box with a designed number and a descriptive name. The color of box indicates the status of the corresponding job.

* Gray means that the job has been submitted but not yet added to the job queue
* Yellow means that the job has been submitted to the job queue
* Red means that the job either exited before completion, or did not produce the expected output
* Green means that the job ran successfully to completion and is ready to be viewed

The Main Content window is the CellOrganizer-for-Galaxy workspace. Once a tool or workflow (this term will be explained later) has been selected from the Tool Window, the user can specify the input parameters via the Main Content window.  

Making a Work History
*********************

Work Histories are Galaxy's way of enabling users to create multiple isolated workspaces. You can think of your current Work History as your current workspace. At any point in time, your History window displays all the data you have either downloaded or produced in your current workspace.

Let's say you download some data into your current Work History. That data is now accessible to tools in your Tools Window. You can apply any tool on that data, provided that it considers the data as valid input. The output of this operation will get saved to your current Work History, and now you can even apply tools to this newly accessible data as well.

If you now want to work on unrelated data, you can simply create a new Work History, switch your workspace to that newly created Work History, and work on that data without having to see the clutter of the previous workspace. Of course you can always switch between Work Histories whenever you like. 

Work Histories can be shared between Galaxy users, allowing them to see each others outputs/errors.

Submitting a Job
****************

Whenever you manage to execute a tool, you are essentially submitting a job to the server. And to execute a tool, you need to both provide the minimal set of inputs and to provide valid inputs. Whenever you click on one of the tools in the Tools Window, you should also see accompanying documentation in the Main Content window specifying what sort of inputs you need to provide to the tool. 

Creating a Workflow
*******************

Workflows are Galaxy's way of enabling users to automate particular pipelines (which can even be shared among users). You can also think of them as a means to construct more complex tools by piecing together simpler ones.

Let's say you keep on repeating a certain procedure. You download data, run a tool on it to produce some output, then visualize the output. Each time you repeat the procedure, you first have to click on the tool to download data and fill up the necessary input values, then you have to wait for the data to be downloaded, then you have to click on the tool you wanted to run on the data and fill up the necessary input values, then .... and so on. This is unecessarily tedious. 

Instead, we can link streamline the procedure by linking the intermediate stages together via a Workflow (which essentially resembles a longer tool). We get to fill up all the necessary parameter settings that the intermediate stages require at the same time. Then we can simply click run and wait for the final output.   

Creating a Work History
-----------------------

We will create a work history titled "2D Hela".

#. Click on the small gear next to the History header for History Options.

    .. image:: ../images/galaxy_bridges/historyGear.png
        :align: center
        :width: 300px


#. Click on "Create New" from the drop-down menu.

    .. image:: ../images/galaxy_bridges/historyDropdown.png
        :align: center
        :width: 300px


#. Click on the "Unnamed history" title to rename the working history to “2D Hela” and then press return/enter.

    .. image:: ../images/galaxy_bridges/renameHistory.png
        :align: center
        :width: 300px


Accessing a Work History
------------------------

At another time, if you would like to switch to a saved history

#. Click on the small gear next to the History header for History Options.

    .. image:: ../images/galaxy_bridges/historyGear.png
        :align: center
        :width: 300px

#. Click on "Saved Histories" from the drop-down menu.

    .. image:: ../images/galaxy_bridges/savedHistories.png
        :align: center
        :width: 300px

#. Click on the small downward facing arrow on the saved history you would like to switch to and select “Switch” from the drop-down menu in the Main Content window.

    .. image:: ../images/galaxy_bridges/switchHistories.png
        :align: center

Submitting a Job
----------------
Now, we are going to submit our first job to the scheduler, which will be the Training of a 2D Diffeomorphic Model. To do this, 

#. Go to the Tools window, and click on the Training category.

#. Select “train_2D_diffeomorphic_model” under the Training category.

    .. image:: ../images/galaxy_bridges/train2DJob.png
        :align: center
        :width: 240px
        :height: 240px


#. In the Main Content window, ensure the default input parameters are set to the LAMP2 dataset, 9 images, and 5 as the downsample factor.

    .. image:: ../images/galaxy_bridges/defaultParameters.png
        :align: center

#. Click on “Execute” in order to send the task to the queue.

Successful submission of the train_2D_diffeomorphic_model results in the following two things: 1) a green banner displayed in the Main Content window, and 2) the job is added to the scheduler in the History window.

    .. image:: ../images/galaxy_bridges/successfulSubmission.png
        :align: center

    .. image:: ../images/galaxy_bridges/jobScheduled.png
        :align: center
        :width: 240px
        :height: 240px


Once the job has been successfully completed (the job will turn green in the History window), you have a trained 2D diffeomorphic model in the form of a Matlab file. Accessing this file is not possible through Galaxy+Bridges, but another CellOrganizer tool can take the model as an input and output a PNG visible in Galaxy+Bridges. 

Under the Useful Tools category in the Tools window, “show_shape_space” depicts a visualization of the shape space of a trained 2D diffeomorphic model. Repeat steps 1 - 4 above to submit “show_shape_space” as a job, with your input parameter being the trained 2D diffeomorphic model from our first job.

To access the show_shape_space PNG image, you only need to click on the small eye icon next to the job title in the scheduler. The following image should appear in the Main Content window:

    .. image:: ../images/galaxy_bridges/showShapeSpace.png
        :align: center

Now, that you have been able to create a work history and submit a couple of jobs to the queue, it is time to talk about workflows. If you would like to recycle a process, perhaps run the visualization of diffeomorphic models many times with different parameters, without having to constantly click through all of the categories, then it is much easier to create a workflow.

Creating and Submitting a Workflow
----------------------------------

Let’s create our first workflow using the two tools we are familiar with: 1) train a 2D diffeomorphic model, and 2) show the shape space of that model.

#. In the top navigation bar, click on the Workflow tab.

    .. image:: ../images/galaxy_bridges/workflowButton.png
        :align: center

#. Click on the Create New Workflow button in the top right corner.

    .. image:: ../images/galaxy_bridges/createNewWorkflow.png
        :align: center
        :width: 240px
        :height: 240px


#. Click on “Create” after naming and annotating the workflow.
    * In this example, let’s name the Workflow “Shape Space of Trained 2D Diffeo Model“ and annotate it as “Visualizing the shape space of a trained 2D diffeomorphic model”.

    .. image:: ../images/galaxy_bridges/nameWorkflow.png
        :align: center

#. Click on the “train_2D_diffeomorphic_model” tool in the Tools window under the Training category and a box with this title should appear in your Workflow Canvas (Main Content window).

#. Click on the “show_shape_space” tool in the Tools window under the Useful Tools category and a second box should appear in your Workflow Canvas.

#. Arrange the boxes in the order/organization desired within the workspace.

    .. image:: ../images/galaxy_bridges/workflowBoxes.png
        :align: center

#. Connect the two boxes together by clicking on the output arrow of the “train 2D diffeomorphic model” box and dragging your cursor to the input arrow of the “show shape space” box.

    .. image:: ../images/galaxy_bridges/connectedBoxes.png
        :align: center

#. Click on the small gear next to the Workflow Canvas title, and choose “Save” on the drop-down menu.

    .. image:: ../images/galaxy_bridges/workflowSave.png
        :align: center
        :width: 240px
        :height: 240px


#. Click on the same gear to choose “Run” on the drop-down menu.

    .. image:: ../images/galaxy_bridges/workflowRun.png
        :align: center
        :width: 240px
        :height: 240px


#. By click on each step in the workflow, you can change the inputs.

    .. image:: ../images/galaxy_bridges/workflowInputs.png
        :align: center

#. Click “Run workflow” to send it to the queue.

Let’s reuse this workflow to visualize the shape space of a different trained diffeomorphic model. Submit the workflow again; however, this time change the input parameters for the “train 2D diffeomorphic model” box by clicking on the small pencil next to each parameter. Options include:

    * **Datasets:** LAMP2 (default), Nucleoli, Mitochondria, or Transference protein (Tfr)
    * **Number of Images:** Any number up to 50
    * **Downsample Factor:** 1 (no downsample, higher resolution), 5 (default), or 10 (lower resolution)

Extra Tasks
***********

Now, that you have been able to successfully create a new work history, submit a couple of jobs to the queue, and create and submit workflows, test your skills with the following tasks:

*Note: Each tool can be found under the designated category (indicated within the parentheses immediately following the title).*

* In the 2D Hela Work History,
    * Train a 2D diffeomorphic model (Training) → Synthesize a 2D diffeomorphic instance (Synthesis)

* In  a 3D Hela Work History
    * Train a 3D vesicular model (Training) → Synthesize a 3D vesicular instance (Synthesis)

* In a 2D Demo Work History
    * demo2D00 (Demos) → Show 2D Image Reshape (Useful Tools)
    * demo2D00 (Demos) → Export to VCell (Useful Tools)

* In a 3D Demo Work History
    * demo3D00 (Demos) → Show 3D Image Reshape (Useful Tools)
    * demo3D00 (Demos) → Export to Blender (Useful Tools)
    * demo3D00 (Demos) → Show 3D Surface Plot (Useful Tool)
