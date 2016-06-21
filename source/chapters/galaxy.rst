Using CellOrganizer on Galaxy+Bridges
=====================================

.. raw:: html

    <div style="margin-top:10px;">
      <iframe width="560" height="315" src="https://www.youtube.com/embed/ngtb4Sl1U5c" frameborder="0" allowfullscreen></iframe>
    </div>

Introduction
************
CellOrganizer is a software package that learns generative models of cell organization from fluorescence micrographs. These models are useful for modeling the dependency between compartments of the cell, allowing for a compact representation of cell geometries present in cell images and generation of images of geometries useful for spatially realistic biochemical simulations. This tutorial will primarily cover individual usage, along with shared usage amongst multiple Galaxy+Bridges accounts for CellOrganizer.

As of mid-2016, the CellOrganizer team has introduced a new interface for CellOrganizer called Galaxy+Bridges. This new interface expands the accessibility of CellOrganizer to users who have little to no programming experience or exhaustive resources in accessing Matlab and all of the required toolboxes.

For users interested in directly accessing CellOrganizer using Matlab, the link to download CellOrganizer is 'http://cellorganizer.org/Downloads/v2.5/index.html <http://cellorganizer.org/Downloads/v2.5/index.html>'_, and the documentation for loading CellOrganizer into Matlab can be found at 'http://cellorganizer.org/docs/v2.5/chapters/start.html <http://cellorganizer.org/docs/v2.5/chapters/start.html>_'along with a simple tutorial.

The Ideal Tutorial User
-----------------------

The ideal tutorial user would have some experience with fluorescence microscopy, limited to no experience with Matlab, and no experience with CellOrganizer. The user should be interested in learning how to use the Galaxy+Bridges interface for CellOrganizer to explore their image data.

A Disclaimer
------------

CellOrganizer is research code, and as such it is under constant development. Although we do our best to ensure our code is reliable, we distribute this code under the GNU public license without any type of warranty. For this reason, though we hope not, a feature may not work as expected. Please do not hesitate to contact us at cellorganizer@compbio.cmu.edu with any questions or issues you have.

Prerequisites
*************

* Any OS X, Linux, or Unix operating system
* Any web browser

Setup
*****

#. Open a web browser and access the 'Galaxy+Bridges <http://galaxy2.bridges.psc.edu>'_ site.
#. Register for a user account, or log onto a preexisting account.
#. Become familiar with different components of the Galaxy Home Interface.

Galaxy Registration
-------------------
In order to use CellOrganizer on Galaxy+Bridges, the user must have a registered account.

#. Open a web browser, and go to the Galaxy+Bridges site at 'http://galaxy2.bridges.psc.edu <http://galaxy2.bridges.psc.edu>'.

#. Hover over User on the top navigation toolbar and choose Register from the dropdown menu.
.. image:: ../images/galaxy_bridges/registerbutton.png

#. Fill out the registration form by entering an email address, password, and public name (optional), for your account and hit "Submit".

You should now be registered onto Galaxy, logged in, and redirected to the home interface.

Galaxy Home Interface
---------------------

The Galaxy interface (Figure 1) is divided into four parts: the top navigation bar (top of the page), the Tools window (left side of the page), the History window (right side of the page), and the Main Content window (center of the page).

.. image:: ../images/galaxy_bridges/galaxyinterface.png

The Tools window allows the user to choose which job they are interested in scheduling. For this tutorial, the options are divided into four categories: Demos, Synthesizing, Training, and Useful Tools. These four categories, and their components are further explained in the tutorial.

The History window depicts the user’s personal scheduler along with their current status through color coding. When a job is submitted to the queue, it appears at the top of the History window in the form of a small rectangle with a designated number and a descriptive name. The color of the box correlates with the current status of the job, with

    * a grey background meaning that the job has been submitted, but has not been accepted,
    * a yellow background meaning that the job has been accepted by the queue, and
    * a green background meaning that the job is complete and is ready to be viewed.

The Main Content window is Galaxy+Bridges’ workspace. Once a job or workflow is chosen from the Tool Shed, any direct interaction with CellOrganizer occurs in the Main Content window.

Tutorial: Creating a Work History, Submitting a Job, Submitting a Workflow, and Visualizing Results
*********

Creating a Work History
-----------------------

For this tutorial, we need to create a work history titled 2D Hela. In order to do this,

#. Click on the small gear next to the History header for History Options.
.. image:: ../images/galaxy_bridges/historyGear.png

#. Click on "Create New" from the drop-down menu.
.. image:: ../images/galaxy_bridges/historyDropdown.png

#. Click on the "unnamed history" title to rename the working history to “2D Hela”.
.. image:: ../images/galaxy_bridges/renameHistory.png

Accessing a Work History
------------------------

At another time, if you would like to switch to a saved history,

#. Click on the small gear next to the History header for History Options.
.. image:: ../images/galaxy_bridges/historyGear.png

#. Click on "Saved Histories" from the drop-down menu.
.. image:: ../images/galaxy_bridges/savedHistories.png

#. Click the small arrow the working history you would like to work on and choose “Switch” from the drop-down menu in the Main Content window.
.. image:: ../images/galaxy_bridges/switchHistories.png

Submitting a Job
----------------
Now, we are going to submit our first job to the scheduler, which will be the Training of a 2D Diffeomorphic Model. To do this, 

#. Go to the Tools window, and click on the Training category.

#. Select “train_2D_diffeomorphic_model” under the Training category.
.. image:: ../images/galaxy_bridges/train2DJob.png

#. In the Main Content window, ensure the default input parameters are set to the LAMP 2 dataset, 9 images, and 5 as the downsample factor.
.. image:: ../images/galaxy_bridges/defaultParameters.png

#. Click on “Execute” in order to send the task to the queue.

Successful submission of the train_2D_diffeomorphic_model results in the following two things: 1) a green banner across the Main Content window, and the 2) job added to the scheduler in the History window.
.. image:: ../images/galaxy_bridges/successfulSubmission.png
.. image:: ../images/galaxy_bridges/jobScheduled.png

Once the job has been successfully completed (the job will turn green in the History window), you have a trained 2D diffeomorphic model in the form of a Matlab file. Accessing this file is not possible through Galaxy+Bridges, but another CellOrganizer tool can take the model as an input and output a PNG visible in Galaxy+Bridges. 

Under the Useful Tools category in the Tools window, “show_shape_space” depicts a visualization of the shape space of a trained 2D diffeomorphic model. Repeat the steps above to submit “show_shape_space” as a job, with your input parameter being the trained 2D diffeomorphic model from our first job.

To access the show_shape_space PNG image, you only need to click on the small eye icon next to the job title in the scheduler. The following image should appear in the Main Content window:
.. image:: ../images/galaxy_bridges/showShapeSpace.png

Now, that you have been able to create a work history and submit a couple of jobs to the queue, it is time to talk about workflows. If you would like to recycle a process, perhaps run the visualization of diffeomorphic models many times with different parameters, without having to constantly click through all of the categories, then it is much easier to create a workflow.

Creating and Submitting a Workflow
----------------------------------

Let’s create our first workflow using the two tools we are familiar with: 1) train a 2D diffeomorphic model, and 2) show the shape space of that model.

#. In the top navigation bar, click on the Workflow tab.
.. image:: ../images/galaxy_bridges/workflowButton.png

#. Click on the Create New Workflow button in the top right corner.
.. image:: ../images/galaxy_bridges/createNewWorkflow.png

#. Click on “Create” after naming and annotating the workflow.

    * In this example, let’s name the Workflow “Shape Space of Trained 2D Diffeo Model“ and annotate it as “Visualizing the shape space of a trained 2D diffeomorphic model”.
.. image:: ../images/galaxy_bridges/nameWorkflow.png

#. Click on the “train_2D_diffeomorphic_model” tool in the Tools window under the Training category and a box with this title should appear in your Workflow Canvas (Main Content window).

#. Click on the “show_shape_space” tool in the Tools window under the Useful Tools category and a second box should appear in your Workflow Canvas.

#. Arrange the boxes in the order/organization desired within the workspace.
.. image:: ../images/galaxy_bridges/workflowBoxes.png

#. Connect the two boxes together by clicking on the output arrow of the “train 2D diffeomorphic model” box to the input arrow of the “show shape space” box.
.. image:: ../images/galaxy_bridges/connectedBoxes.png

#. Click on the small gear next to the Workflow Canvas title, and choose “Save” on the drop-down menu.
.. image:: ../images/galaxy_bridges/workflowSave.png

#. Click on the same gear to choose “Run” on the drop-down menu.
.. image:: ../images/galaxy_bridges/workflowRun.png

#. By click on each step in the workflow, you can change the inputs.
.. image:: ../images/galaxy_bridges/workflowInputs.png

#. Click “Run workflow” to send it to the queue.

Let’s reuse this workflow to visualize the shape space of two different trained diffeomorphic models. Submit the workflow again, however, this time change the input parameters for the “train 2D diffeomorphic model” box by clicking on the small pencil next to the parameter. Options include:
    * **Datasets:** LAMP2 (default), Nucleoli, Mitochondria, or Transference protein
    * **Number of Images:** Any number up to 50
    * **Downsample Factor:** 1 (no downsample, higher resolution), 5 (default) or 10 (lower resolution)

Extra Tasks
***********

Now, that you have been able to successfully create a new work history, submit a couple of jobs to the queue, and create and submit workflows, test your skills with the following tasks:

*Note: Each tool can be found in the designated category in the parentheses immediately following the title in the Tools window.*

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
    * demo3D01 (Demos) → Show 3D Image Reshape (Useful Tools)
    * demo3D00 (Demos) → Show 3D Surface Plot (Useful Tool)

**End of Tutorial**



