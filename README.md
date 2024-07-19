# Digital_Image_Processing_Using_Verilog

Hello everyone, I am Himanshu Gupta, a Final year student at Motilal Nehru National Institute of Technology(MNNIT), Allahabad. Here I am presenting you my project which is a Digital Image Processor. Various Image processing operations like Brightness Increase, Brightness Decrease, Grayscale, Red Filter, Green Filter, Blue Filter, Thresholding and Inversion are implemented in this project using Behavirol Modelling.

    [2:0]parameter      operation
      000             Brightness increase
      001             Brightness decrease
      010             Grayscale
      011             Red filter
      100             Green filter
      101             Blue filter
      110             Threshold
      111             Inversion

I have used Block RAM in this project for data storage and retrieval within the testbench.

Below I have provided a small tutorial for generation of BRAM in VIVADO :
![image](https://github.com/user-attachments/assets/3ad81d59-a218-4538-9b87-0aeee8082ee9)

![image](https://github.com/user-attachments/assets/5a5796c4-059a-482d-9e9a-05dee8d13e4c)

![image](https://github.com/user-attachments/assets/d97c8387-f059-481a-b0c2-69417f307d9a)

![image](https://github.com/user-attachments/assets/14ece822-e08c-4f05-9cec-eed6d19b58db)


                            Rename if you want
![image](https://github.com/user-attachments/assets/5f1b2500-e0d6-4132-8a34-3f0ad1527e9c)


Choose width 24 (8bits for red, 8bits for green, 8bits for blue). Choose depth slightly greater than total number of pixels present in your image (here 2,00,000 pixels, 500x400) 
![image](https://github.com/user-attachments/assets/52187bab-263d-47ee-953a-393e11a16eb6)

![image](https://github.com/user-attachments/assets/2cb62709-8e24-4ba4-bb6b-743def82879f)

Below I have attached images generated after processing the original image.

Original Image
![original](https://github.com/user-attachments/assets/8da0f882-9c0a-4a02-97bf-fe1475299093)

Brightness Increase
![new_brightness_inc](https://github.com/user-attachments/assets/d1c734fd-79f5-4f75-9904-01e90adf63c6)

Brightness Decrease
![new_brightness_dec](https://github.com/user-attachments/assets/eb2fa0fd-a4b8-4860-b9dc-9cd60da84cdc)

Grayscale
![new_grayscale](https://github.com/user-attachments/assets/b56f0b19-ebc9-428e-abc9-6eb858e7c92f)

Red Filter
![new_redFilter](https://github.com/user-attachments/assets/57ac4fda-4a76-4967-83ec-18e44eb59d0b)

Green Filter
![new_greenFilter](https://github.com/user-attachments/assets/c5e2d3cf-3d72-4258-a96d-ded5ff83f1db)

Blue Filter
![new_blueFilter](https://github.com/user-attachments/assets/bd916975-dd1e-4b7f-9f92-750167d8e800)

Threshold
![new_threshold](https://github.com/user-attachments/assets/0ad1983e-fd43-4eda-ad3c-fee31aa19b6f)

Inversion
![NewInversion](https://github.com/user-attachments/assets/b17dc246-c41c-42bd-bfce-ad1acc973b51)


I have used MATLAB to convert image into coe file and coe file into image.

The code for Digital Image Processor is written in such a way that more operations can be easily added in it in future.

Hope you like it !!

For doubts or any advice connect with me on LinkdIn.

"linkedin.com/in/himanshugupta0907"





