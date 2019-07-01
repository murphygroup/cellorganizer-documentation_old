Agenda
=======

1. Downloading Pre-Trained Model on Galaxy
2. Synthesizing synthetic images and SBML Instance from Model
3. Uploading and viewing your realistic geometry on CellBlender
4. Creating a Lotka-Volterra Simulation with your geometry

Questions
==========

* What do I need to run  CellOrganizer for Galaxy?
* How to create a history using CellOrganizer for Galaxy?
* How to import a pre-loaded model from CellOrganizer on my history?
* How to import my SBML instance into CellBlender?
* How to create a Lotka-Volterra simulation using our realistic geometry?
 
### Prerequisites
1. Galaxy ( 2 options)
   * Locally installed version of Galaxy ( https://github.com/murphygroup/cellorganizer-galaxy-tools) with Matlab R2018b
   * Access to the public server (http://galaxy3.compbio.cs.cmu.edu:9000)
2. Installed version of Blender with the CellBlender package (https://mcell.org/download.html)

## Generating SBML Instance from Pretrained SPHARM-RPDM Model on Galaxy

1. Log in on Galaxy
2. From the right panel (History panel) click on the **“Gear Icon”**
3. From the drop down menu click on **“Create a new history”**

    ![create_new_history](../source/Spharm_Tutorial/images/create_new_history.png)  

4. Select the **“unnamed history”** rename and annotate history
    
    ![renaming_history](../source/Spharm_Tutorial/images/renaming_history.png)

5. To rename the history. Double click on “Unnamed history” and rename it to **“SPHARM Model”**. Then click enter.
    
    ![Taggin_a_history](../source/Spharm_Tutorial/images/Tagging_a_history.png)

6. Annotate history. Click on the tag icon to add tags to this history. Add **“train”** and **“vesicle”** as tags. Click enter after each tag.
7. Import dataset from shared data. Click on **“Shared Data”** at the top of the screen then click on **“Data Libraries”** from the dropdown menu. 
    
    ![data_libraries](../source/Spharm_Tutorial/images/data_libraries.png)

8. In the following page, follow the links for:
    * Click **“Data Libraries”** from the drop down menu.
    * Click on **“Generative Models”**
   		* Click on **“HeLa”**
   	        *Click on **“3D”**
		    * Click on **“3D_HeLa_LAMP2_SPHARM_vesicle_model.mat”**. 
Then ticking off the box to the left of its name, then click on **“To History”** and select the history called **“SPHARM Model”**
    ![to_history](../source/Spharm_Tutorial/images/to_history.png)

10. Then click on **“to history”** button in the top menu. A dialog window with appear with the current history on board pre-selected or you can create a new one as it gives you that option as well.
         Click on the **“import”** button if your history is already pre-selected this will import both datasets into your history. Once the images are imported _a green box in the top right corner_ will appear, click on it so it will take you to the history with the images imported
11. Or you can also click on the ![galaxy_button](../source/Spharm_Tutorial/images/galaxy_button.png)   icon in the top left corner of the screen  to return to the home page. 
12. Then, click on **“Synthesis”** under the **“Tools”** menu, and follow the link to **“Synthesize an instance from multiple models trained in CellOrganizer”**
    
    ![Tools_panel](../source/Spharm_Tutorial/images/Tools_panel.png)

13. Select the model from the list and select **"Synthesize from all models"** as the synthesis option.

    ![Synthesis_from_all_models_option](../source/Spharm_Tutorial/images/Synthesis_from_all_models.png)

14. To save the output as an image and SBML mesh instance, click the YES button under Output Options for: OMETIFF, SBML Spatial 3, and Indexed Image

    ![Ome_tiff_options](../source/Spharm_Tutorial/images/Ome_tiff_options.png)

15. In the **“Advanced Options”**, match the following image:
    
    ![Advance_options](../source/Spharm_Tutorial/images/adv_options.png)

16. Once all the information is complete click on ![execute_button](../source/Spharm_Tutorial/images/execute_button.png) the button that will close the options panel. A green box will be displayed indicating that the demo is being run and a new item in the history will be added with the model ran. 
    * You should see your generated outputs in the right sidebar
    
        ![outputs1_right_sidebar](../source/Spharm_Tutorial/images/outputs1_right_sidebar.png)
    
* You can view the indexed image by clicking the eye icon next to the name
    ![view_result_right_sidebar](../source/Spharm_Tutorial/images/view_result_right_sidebar.png)

## Importing Generated SBML instance into CellBlender
1. Download the SBML instance from Galaxy clicking the eye icon

    ![SBML_Galaxy](../source/Spharm_Tutorial/images/SBML_Galaxy.png)

2. Next, open up Blender with CellBlender pre-installed. Initialize CellBlender.
     
    ![initialize_blender](../source/Spharm_Tutorial/images/initialize_blender.png)

3. Import the downloaded SBML instance by going to: **File > Import > BioNetGen/SBML Model(.bng, ./xml)**.  You should now see your imported SBML instance. Use the scroll-pad and mouse to move around and investigate the geometry.

    ![Import_blender](../source/Spharm_Tutorial/images/Import_blender.png)

## Create a Lotka-Volterra Simulation with our realistic geometry
1. Next step is to then import a .txt file that includes the preset reactions for our. Go to: **File >Import >CellBlender Model(text/pickle)**

    ![SBML_instance](../source/Spharm_Tutorial/images/SBML_instance.png) 

2. Next, we have to rescale and color our simulated particles. Under the **"Molecules"** button, set the scale of both **"prey"** and **"predator"** to 20.0. Set the color of **"prey"** to blue and **"predator"** to red. 

    ![color_properties_CB1](../source/Spharm_Tutorial/images/color_properties_CB1.png)  ![color_properties_CB2](../source/Spharm_Tutorial/images/color_properties_CB2.png)

3. Then, save the file as SPHARM_Model_Sim.blend. Next, you should see the Run button appear under the Run Simulation tab. Click that.

    ![run_simulation_CB](../source/Spharm_Tutorial/images/run_simulation_CB.png)

This should produce a simulation similar to the one below: (GIF)

    ![CellBlender_FullScreen](../source/Spharm_Tutorial/images/CellBlender_FullScreen_gif.gif)


