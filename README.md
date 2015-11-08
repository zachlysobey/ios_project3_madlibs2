### CS640, Fall 2015

# Project Three, Due: November 18th

__Create the following program:__

MadLibs are non-sensical stories created by fill-in-the-blank templates.  A player is prompted to supply words of a specific part of speech (nouns, verbs, etc).  The words are filled into a story template, which is then read aloud…often not making sense.

The Madder-iLibs program takes the original Mad-iLibs program from Project 1, and adds persistent storage and story flexibility to it.  The program will accept 3 words using textbox controls.  Two buttons will be presented on the screen to the user.  

The Edit Template button will take the user to another screen where they can customize the story template, and the labels and placeholders displayed on the first screen.  Insertion points in the story template should be denoted with text like <one>, <two>, <three> etc.  These will not change based on changes to the labels.

These customizations will be stored on the device using the user preferences, so they will persist across runs of the app.  Once the user clicks “Save” on this screen, they will be returned to the initial scene where the UI will be updated with the changes saved.

From the initial screen, the “Generate Story” button will segue the user to another scene which will display the results of substituting the entered values.

Use appropriate controls to implement the buttons, labels and segues between scenes.  Use NSUserDefaults to store the customizations permanently.  Use appropriate string manipulation methods to insert the supplied words into the output.  Program should be implemented as multiple scenes and should not crash if some words are not supplied.

