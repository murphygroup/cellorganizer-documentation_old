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
		    * Click on **“3D_HeLa_LAMP2_SPHARM_vesicle_model.mat”**
9.Then ticking off the box to the left of its name. Then click on **“To History”** and select the history called **“SPHARM Model”**
10. Then click on **“to history”** button in the top menu. A dialog window with appear with the current history on board pre-selected or you can create a new one as it gives you that option as well.
        
    ![to_history](../source/Spharm_Tutorial/images/to_history.png)

11. Click on the **“import”** button if your history is already pre-selected this will import both datasets into your history. Once the images are imported a green box in the top right corner will appear, click on it so it will take you to the history with the images imported
Or you can also click on the  icon in the top left corner of the screen  to return to the home page. 
12. Then, click on **“Synthesis”** under the **“Tools”** menu, and follow the link to **“Synthesize an instance from multiple models trained in CellOrganizer”**
13. Select the model from the list and select ‘Synthesize from all models’ as the synthesis option.
14. To save the output as an image and SBML mesh instance, click the YES button under Output Options for: OMETIFF, SBML Spatial 3, and Indexed Image
15. In the **“Advanced Options”**, match the following image:
16. Once all the information is complete click on the button that will close the options panel. A green box will be displayed indicating that the demo is being run and a new item in the history will be added with the model ran. 
    * You should see your generated outputs in the right sidebar
    * You can view the indexed image by clicking the eye icon next to the name

## Importing Generated SBML instance into CellBlender
1. Download the SBML instance from Galaxy clicking the eye icon
2. Next, open up Blender with CellBlender pre-installed. Initialize CellBlender.
3. Import the downloaded SBML instance by going to: **File > Import > BioNetGen/SBML Model(.bng, ./xml)**.  You should now see your imported SBML instance. Use the scroll-pad and mouse to move around and investigate the geometry.
4. Create a Lotka-Volterra Simulation with our realistic geometry
5. Next step is to then import a .txt file that includes the preset reactions for our. Go to: **File >Import >CellBlender Model(text/pickle)**
6. Next, we have to rescale and color our simulated particles. Under the **"Molecules"** button, set the scale of both **"prey"** and **"predator"** to 20.0. Set the color of **"prey"** to blue and **"predator"** to red. 
7. Then, save the file as SPHARM_Model_Sim.blend. Next, you should see the Run button appear under the Run Simulation tab. Click that.


This should produce a simulation similar to the one below: (GIF)
