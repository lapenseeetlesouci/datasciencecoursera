---
title: "CODEBOOK"
---

The original data are extracted from the Human Activity Recognition Using Smartphones Dataset referenced in [1].

The tidy dataset can be found in the "tidydata.txt" file.

For details on the 'run_analysis.R' script and the processing steps, refer to the README.txt' file.

## ORIGINAL DATA INFORMATION :

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. In addition, features are normalized and bounded within [-1,1].

We restricted our dataset here to the variables corresponding to the mean and standard deviation for each signal.
Each of these measures was then averaged for each activity and subject.

###  1: activity
Corresponds to the observed activity
    
6 values :

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

                                       
###  2: subjectid 
An identifier of the subject who carried out the experiment
    
Corresponds to one of the 30 volunteers within an age bracket of 19-48 years that did the experiment
    
* Integer values ranging from 1 to 30                                  

###  3: timeBodyAccelerometerMeanX
Mean estimated body acceleration from the accelerometer over the X axis - Time value

* accelerometer -> body acceleration -> projection on X axis -> signal mean

We consider here an average over all the measures for an activity and a subject
    
* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]


###  4: timeBodyAccelerometerMeanY                     
Mean estimated body acceleration from the accelerometer over the Y axis - Time value

* accelerometer -> body acceleration -> projection on Y axis -> signal mean

We consider here an average over all the measures for an activity and a subject
    
* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
       
         
###  5: timeBodyAccelerometerMeanZ                     
Mean estimated body acceleration from the accelerometer over the Z axis - Time value

* accelerometer -> body acceleration -> projection on Z axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
    
###  6: timeBodyAccelerometerStdX
Standard deviation of the estimated body acceleration from the accelerometer over the X axis - Time value

* accelerometer -> body acceleration -> projection on X axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]

###  7: timeBodyAccelerometerStdY  
Standard deviation of the estimated body acceleration from the accelerometer over the Y axis - Time value

* accelerometer -> body acceleration -> projection on Y axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]                  

###  8: timeBodyAccelerometerStdZ
Standard deviation of the estimated body acceleration from the accelerometer over the Z axis - Time value

* accelerometer -> body acceleration -> projection on Z axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]                     

###  9: timeGravityAccelerometerMeanX
Mean estimated gravity acceleration from the accelerometer over the X axis - Time value

* accelerometer -> gravity acceleration -> projection on X axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]     

### 10: timeGravityAccelerometerMeanY
Mean estimated gravity acceleration from the accelerometer over the Y axis - Time value

* accelerometer -> gravity acceleration -> projection on Y axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]                  

### 11: timeGravityAccelerometerMeanZ
Mean estimated gravity acceleration from the accelerometer over the Z axis - Time value

* accelerometer -> gravity acceleration -> projection on Z axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]                  

### 12: timeGravityAccelerometerStdX
Standard deviation of the estimated gravity acceleration from the accelerometer over the X axis - Time value

* accelerometer -> gravity acceleration -> projection on X axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]

### 13: timeGravityAccelerometerStdY                   
Standard deviation of the estimated gravity acceleration from the accelerometer over the Y axis - Time value

* accelerometer -> gravity acceleration -> projection on Y axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] 

### 14: timeGravityAccelerometerStdZ
Standard deviation of the estimated gravity acceleration from the accelerometer over the Z axis - Time value

* accelerometer -> gravity acceleration -> projection on Z axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]                  

### 15: timeBodyAccelerometerJerkMeanX
Mean of the jerk signal of the estimated body acceleration from the accelerometer over the X axis - Time value

* accelerometer -> body acceleration -> jerk signal -> projection on X axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]        
                 
### 16: timeBodyAccelerometerJerkMeanY
Mean of the jerk signal of the estimated body acceleration from the accelerometer over the Y axis - Time value

* accelerometer -> body acceleration -> jerk signal -> projection on Y axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
    
### 17: timeBodyAccelerometerJerkMeanZ 
Mean of the jerk signal of the estimated body acceleration from the accelerometer over the Z axis - Time value

* accelerometer -> body acceleration -> jerk signal -> projection on Z axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
    
### 18: timeBodyAccelerometerJerkStdX
Standard deviation of the jerk signal of the estimated body acceleration from the accelerometer over the X axis - Time value

* accelerometer -> body acceleration -> jerk signal -> projection on X axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]                   

### 19: timeBodyAccelerometerJerkStdY                  
Standard deviation of the jerk signal of the estimated body acceleration from the accelerometer over the Y axis - Time value

* accelerometer -> body acceleration -> jerk signal -> projection on Y axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] 

### 20: timeBodyAccelerometerJerkStdZ
Standard deviation of the jerk signal of the estimated body acceleration from the accelerometer over the Z axis - Time value

* accelerometer -> body acceleration -> jerk signal -> projection on Z axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]

### 21: timeBodyGyroscopeMeanX                     
Mean estimated body acceleration from the gyroscope over the X axis - Time value

* gyroscope -> body acceleration -> projection on X axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are radians/(seconds)^2 normalized and bounded within [-1, 1]
    
### 22: timeBodyGyroscopeMeanY
Mean estimated body acceleration from the gyroscope over the Y axis - Time value

* gyroscope -> body acceleration -> projection on Y axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)                     

### 23: timeBodyGyroscopeMeanZ                         
Mean estimated body acceleration from the gyroscope over the Z axis - Time value

* gyroscope -> body acceleration -> projection on Z axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  

### 24: timeBodyGyroscopeStdX
Standard deviation of the estimated body acceleration from the gyroscope over the X axis - Time value

* gyroscope -> body acceleration -> projection on X axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)   
    
### 25: timeBodyGyroscopeStdY  
Standard deviation of the estimated body acceleration drom the gyroscope over the Y axis - Time value

* gyroscope -> body acceleration -> projection on Y axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
                        
### 26: timeBodyGyroscopeStdZ
Standard deviation of the estimated body acceleration drom the gyroscope over the Z axis - Time value

* gyroscope -> body acceleration -> projection on Z axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
    
### 27: timeBodyGyroscopeJerkMeanX  
Mean of the jerk signal of the estimated body acceleration drom the gyroscope over the X axis - Time value

* gyroscope -> body acceleration -> jerk signal -> projection on X axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)
    
### 28: timeBodyGyroscopeJerkMeanY
Mean of the jerk signal of the estimated body acceleration drom the gyroscope over the Y axis - Time value

* gyroscope -> body acceleration -> jerk signal -> projection on Y axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
                   
### 29: timeBodyGyroscopeJerkMeanZ
Mean of the jerk signal of the estimated body acceleration drom the gyroscope over the Z axis - Time value

* gyroscope -> body acceleration -> jerk signal -> projection on Z axis -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
    
### 30: timeBodyGyroscopeJerkStdX
Standard deviation of the jerk signal of the estimated body acceleration drom the gyroscope over the X axis - Time value

* gyroscope -> body acceleration -> jerk signal -> projection on X axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
                    
### 31: timeBodyGyroscopeJerkStdY
Standard deviation of the jerk signal of the estimated body acceleration drom the gyroscope over the Y axis - Time value

* gyroscope -> body acceleration -> jerk signal -> projection on Y axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g) 
    
### 32: timeBodyGyroscopeJerkStdZ
Standard deviation of the jerk signal of the estimated body acceleration drom the gyroscope over the Z axis - Time value

* gyroscope -> body acceleration -> jerk signal -> projection on Z axis -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)
                  
### 33: timeBodyAccelerometerMagnitudeMean 
Mean of the magnitude of the estimated body acceleration from the accelerometer - Time value

* accelerometer -> body acceleration -> magnitude -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
    
### 34: timeBodyAccelerometerMagnitudeStd
Standard the deviation of the magnitude of the estimated body acceleration from the accelerometer - Time value

* accelerometer -> body acceleration -> magnitude -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
             
### 35: timeGravityAccelerometerMagnitudeMean 
Mean of the magnitude of the estimated gravity acceleration from the accelerometer - Time value

* accelerometer -> gravity acceleration -> magnitude -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
                  
### 36: timeGravityAccelerometerMagnitudeStd
Standard deviation of the magnitude of the estimated gravity acceleration from the accelerometer - Time value

* accelerometer -> gravity acceleration -> magnitude -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
          
### 37: timeBodyAccelerometerJerkMagnitudeMean
Mean of the magnitude of the jerk signal of the estimated body acceleration from the accelerometer - Time value

* accelerometer -> body acceleration -> jerk signal -> magnitude -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
         
### 38: timeBodyAccelerometerJerkMagnitudeStd
Standard deviation of the magnitude of the jerk signal of the estimated body acceleration from the accelerometer - Time value

* accelerometer -> body acceleration -> jerk signal -> magnitude -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1]
          
### 39: timeBodyGyroscopeMagnitudeMean
Mean of the magnitude of the estimated body acceleration from the gyroscope - Time value

* gyroscope -> body acceleration -> magnitude -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
    
### 40: timeBodyGyroscopeMagnitudeStd
Standard deviation of the magnitude of the estimated body acceleration from the gyroscope - Time value

* gyroscope -> body acceleration -> magnitude -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
                 
### 41: timeBodyGyroscopeJerkMagnitudeMean
Mean of the magnitude of the jerk signal of the estimated body acceleration from the gyroscope - Time value

* gyroscope -> body acceleration -> jerk signal -> magnitude -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  
             
### 42: timeBodyGyroscopeJerkMagnitudeStd
Standard deviation of the magnitude of the jerk signal of the estimated body acceleration from the gyroscope - Time value

* gyroscope -> body acceleration -> jerk signal -> magnitude -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, standard gravity units 'g' normalized and bounded within [-1, 1] (The projection over the axis should have transformed radian/(seconds)^2 into m/(seconds)^2, which is also called g)  

### 43: frequencyBodyAccelerometerMeanX
Mean estimated body acceleration from the accelerometer over the X axis - Frequency domain

* accelerometer -> body acceleration -> projection on X axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
               
### 44: frequencyBodyAccelerometerMeanY
Mean estimated body acceleration from the accelerometer over the Y axis - Frequency domain

* accelerometer -> body acceleration -> projection on Y axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
    
### 45: frequencyBodyAccelerometerMeanZ
Mean estimated body acceleration from the accelerometer over the Z axis - Frequency domain

* accelerometer -> body acceleration -> projection on Z axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
            
### 46: frequencyBodyAccelerometerStdX
Standard deviation of the estimated body acceleration from the accelerometer over the X axis - Frequency domain

* accelerometer -> body acceleration -> projection on X axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
                
### 47: frequencyBodyAccelerometerStdY
Standard deviation of the estimated body acceleration from the accelerometer over the Y axis - Frequency domain

* accelerometer -> body acceleration -> projection on Y axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
                
### 48: frequencyBodyAccelerometerStdZ
Standard deviation of the estimated body acceleration from the accelerometer over the Z axis - Frequency domain

* accelerometer -> body acceleration -> projection on Z axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
    
### 49: frequencyBodyAccelerometerJerkMeanX
Mean of the jerk signal of the estimated body acceleration from the accelerometer over the X axis - Frequency domain

* accelerometer -> body acceleration -> jerk signal -> projection on X axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
    
### 50: frequencyBodyAccelerometerJerkMeanY   
Mean of the jerk signal of the estimated body acceleration from the accelerometer over the Y axis - Frequency domain

* accelerometer -> body acceleration -> jerk signal -> projection on Y axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
        
### 51: frequencyBodyAccelerometerJerkMeanZ
Mean of the jerk signal of the estimated body acceleration from the accelerometer over the Z axis - Frequency domain

* accelerometer -> body acceleration -> jerk signal -> projection on Z axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
              
### 52: frequencyBodyAccelerometerJerkStdX
Standard deviation of the jerk signal of the estimated body acceleration from the accelerometer over the X axis - Frequency domain

* accelerometer -> body acceleration -> jerk signal -> projection on X axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
              
### 53: frequencyBodyAccelerometerJerkStdY
Standard deviation of the jerk signal of the estimated body acceleration from the accelerometer over the Y axis - Frequency domain

* accelerometer -> body acceleration -> jerk signal -> projection on Y axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
    
### 54: frequencyBodyAccelerometerJerkStdZ
Standard deviation of the jerk signal of the estimated body acceleration from the accelerometer over the Z axis - Frequency domain

* accelerometer -> body acceleration -> jerk signal -> projection on Z axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
    
### 55: frequencyBodyGyroscopeMeanX
Mean estimated body acceleration from the gyroscope over the X axis - Frequency domain

* gyroscope -> body acceleration -> projection on X axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
                    
### 56: frequencyBodyGyroscopeMeanY
Mean estimated body acceleration from the gyroscope over the Y axis - Frequency domain

* gyroscope -> body acceleration -> projection on Y axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
    
### 57: frequencyBodyGyroscopeMeanZ
Mean estimated body acceleration from the gyroscope over the Z axis - Frequency domain

* gyroscope -> body acceleration -> projection on Z axis -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
    
### 58: frequencyBodyGyroscopeStdX
Standard deviation of the estimated body acceleration from the gyroscope over the X axis - Frequency domain

* gyroscope -> body acceleration -> projection on X axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
    
### 59: frequencyBodyGyroscopeStdY 
Standard deviation of estimated body acceleration from the gyroscope over the Y axis - Frequency domain

* gyroscope -> body acceleration -> projection on Y axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
    
### 60: frequencyBodyGyroscopeStdZ
Standard deviation of the estimated body acceleration from the gyroscope over the Z axis - Frequency domain

* gyroscope -> body acceleration -> projection on Z axis -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
                     
### 61: frequencyBodyAccelerometerMagnitudeMean
Mean magnitude of the estimated body acceleration from the accelerometer - Frequency domain

* accelerometer -> body acceleration -> magnitude -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
      
### 62: frequencyBodyAccelerometerMagnitudeStd 
Standard deviation of the magnitude of the estimated body acceleration from the accelerometer - Frequency domain

* accelerometer -> body acceleration -> magnitude -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]
    
### 63: frequencyBodyAccelerometerJerkMagnitudeMean
Mean of the magnitude of the jerk signal of the estimated body acceleration from the accelerometer - Frequency domain

* accelerometer -> body acceleration -> jerk signal -> magnitude -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    

### 64: frequencyBodyAccelerometerJerkMagnitudeStd
Standard deviation of the magnitude of the jerk signal of the estimated body acceleration from the accelerometer- Frequency domain

* accelerometer -> body acceleration -> jerk signal -> magnitude -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    

### 65: frequencyBodyGyroscopeMagnitudeMean
Mean of the magnitude of the estimated body acceleration from the gyroscope - Frequency domain

* gyroscope -> body acceleration -> magnitude -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
      
### 66: frequencyBodyGyroscopeMagnitudeStd
Standard deviation of the magnitude of the estimated body acceleration from the gyroscope - Frequency domain

* gyroscope -> body acceleration -> magnitude -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
   
### 67: frequencyBodyGyroscopeJerkMagnitudeMean
Mean magnitude of the jerk signal of the estimated body acceleration from the gyroscope - Frequency domain

* gyroscope -> body acceleration -> jerk signal -> magnitude -> FFT -> signal mean

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    
  
### 68: frequencyBodyGyroscopeJerkMagnitudeStd
Standard deviation of the magnitude of the jerk signal of the estimated body acceleration from the gyroscope - Frequency domain

* gyroscope -> body acceleration -> jerk signal -> magnitude -> FFT -> signal std

We consider here an average over all the measures for an activity and a subject

* Double values, units are m/(Hz)^2, normalized and bounded within [-1, 1]    

## NOTE : LICENSE

Use of the original dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012