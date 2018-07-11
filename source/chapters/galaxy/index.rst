About CellOrganizer for Galaxy
==============================

CellOrganizer for Galaxy is a set of custom tools for training generative models, synthesizing instances and analyzing models using CellOrganizer.

Installing CellOrganizer for Galaxy
===================================

Requirements
************

To install CellOrganizer for Galaxy in a production server, you need

* `Galaxy instance <https://galaxyproject.org/>`_
* `Bioformats Tools <https://docs.openmicroscopy.org/bio-formats/5.8.2/users/comlinetools/>`_
* `Matlab 2016b or newer <https://www.mathworks.com/products/matlab.html>`_
    * Bioinformatics Toolbox
    * Computer Vision System Toolbox
    * Control System Toolbox
    * Curve Fitting Toolbox
    * Image Processing Toolbox
    * Mapping Toolbox
    * Optimization Toolbox
    * Robust Control Toolbox
    * Signal Processing Toolbox
    * Simulink
    * Simulink Design Optimization
    * Statistics and Machine Learning Toolbox
    * System Identification Toolbox
    * Wavelet Toolbox

Installing Galaxy in a production server instance
*************************************************

Installing Galaxy is beyond the scope of this document. For instructions on installing Galaxy please click `here <https://docs.galaxyproject.org/en/latest/admin/production.html>`_.

Installing Matlab
*****************

.. IMPORTANT::
   The ``matlab`` binary should be available in ``$PATH``.

Installing `Matlab <https://www.mathworks.com/products/matlab.html>`_ is beyond the scope of this document. To install Matlab, please follow the instructions on the Mathworks `site <https://docs.galaxyproject.org/en/latest/admin/production.html>`_. Make sure to install the toolboxes listed in the requirements section above.

Installing Bioformats Tools
***************************

Installing `Bioformats tools <https://docs.openmicroscopy.org/bio-formats/5.8.2/users/comlinetools/>`_ beyond the scope of this document. To install BFTools, please follow the instructions on the OpenMicroscopy `site <https://docs.openmicroscopy.org/bio-formats/5.8.2/users/comlinetools>`_.

Installing Pandoc
*****************

Installing `Pandoc <https://pandoc.org/>`_ is beyod the scope of this document. To install Pandoc, please follow the `instructions <https://pandoc.org/installing.html>`_ on their site.

Cloning repository and setting environment variables
****************************************************

Clone the repository::

    git clone git@repositories.compbio.cs.cmu.edu:cellorganizer/galaxy-tools.git

and copy the contents of the folder 

Using CellOrganizer for Galaxy
==============================

The CellOrganizer for Galaxy public server address is

* `galaxy.compbio.cs.cmu.edu <http://galaxy.compbio.cs.cmu.edu:9000/>`_

Prerequisites
*************

* A modern web browser

Setup
*****

#. Open a web browser and access the `site <galaxy.compbio.cs.cmu.edu>`_.
#. Register for a user account, or log onto a preexisting account.
#. Become familiar with different components of the Galaxy Home Interface.

Galaxy Registration
-------------------
In order to use CellOrganizer for Galaxy, you must have a registered account.

#. Open a web browser, and go to the Galaxy site `here <galaxy.compbio.cs.cmu.edu>`_.

#. Hover over ``User`` on the top navigation toolbar and choose ``Register`` from the dropdown menu.

    .. image:: ../images/galaxy_bridges/registerbutton.png
        :align: center
        :width: 240px
        :height: 240px

#. Fill out the registration form by entering an (1) email address, (2) password, and (3) public name (optional) for your account and hit ``Submit``.

You should now be registered onto Galaxy, logged in, and redirected to the home interface.

Galaxy Home Interface
---------------------

The Galaxy interface (Figure 1) is divided into four parts: the top navigation bar (top of the page), the Tools window (left side of the page), the History window (right side of the page), and the Main Content window (center of the page).

.. image:: ../images/galaxy_bridges/galaxyinterface.png

The Tools window allows the user to choose which job they are interested in scheduling. For this tutorial, the options are divided into four categories: Demos, Synthesis, Training, and Useful Tools. These four categories, and their components are further explained in the tutorial.

The History window depicts the user’s personal scheduler along with their current status through color coding. When a job is submitted to the queue, it appears at the top of the History window in the form of a small rectangle with a designated number and a descriptive name. The color of the box correlates with the current status of the job, with

    * a grey background meaning that the job has been submitted, but has not been accepted,
    * a red background meaning that the job failed to run,
    * a yellow background meaning that the job has been accepted by the queue, and
    * a green background meaning that the job is complete and is ready to be viewed.

The Main Content window is Galaxy+Bridges’ workspace. Once a job or workflow is chosen from the Tool Shed, any direct interaction with CellOrganizer occurs in the Main Content window.

Tutorial: Creating a Work History, Submitting a Job, Submitting a Workflow, and Visualizing Results
***************************************************************************************************

Creating a Work History
-----------------------

For this tutorial, we need to create a work history titled 2D Hela. In order to do this,

#. Click on the small gear next to the History header for History Options.

    .. image:: ../images/galaxy_bridges/historyGear.png
        :align: center
        :width: 240px
        :height: 240px


#. Click on "Create New" from the drop-down menu.

    .. image:: ../images/galaxy_bridges/historyDropdown.png
        :align: center
        :width: 240px
        :height: 240px


#. Click on the "Unnamed history" title to rename the working history to “2D Hela” and then press return/enter.

    .. image:: ../images/galaxy_bridges/renameHistory.png
        :align: center
        :width: 240px
        :height: 240px


Accessing a Work History
------------------------

At another time, if you would like to switch to a saved history,

#. Click on the small gear next to the History header for History Options.

    .. image:: ../images/galaxy_bridges/historyGear.png
        :align: center
        :width: 240px
        :height: 240px

#. Click on "Saved Histories" from the drop-down menu.

    .. image:: ../images/galaxy_bridges/savedHistories.png
        :align: center
        :width: 240px
        :height: 240px


#. Click the small arrow for the working history you would like to work on and choose “Switch” from the drop-down menu in the Main Content window.

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
