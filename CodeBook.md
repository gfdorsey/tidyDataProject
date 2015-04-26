# Course project for Getting and Cleaning Data

Please refer to the README.md file and the original data set description at
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]
for details on the acquisition of the data and the filters applied to create
the processed data that is in turn the "raw" data for this project.  

The final resulting data set contains smart phone accelerometer and gyroscope
data for 30 subjects while performing a set of 6 activities, averaged over
all observations reported in the original data set.  The original raw data
had accelerometer data in units relative to standard gravity, i.e. 'g's, and it
is assumed that after applying the filters and other calculations mentioned in
the reference above, these units are still the same.  The original raw
gyrocscope data are reported in radians/sec.  Based on the description, it is
assumed that the "Jerk" mesaurements are in g's per second for the accelerometer
measurements and radians/sec^2 for the gyroscope measurements. 

## Code Book

* **Variable description**: Assigned ID of test subject
* **Variable name**: subjectID
* **Variable type**: Integer
* **Allowable values**: 1-30
* **Comments**:

***

* **Variable description**: Activity perfomed while remaining data were recorded
* **Variable name**: activity
* **Variable type**: Character string
* **Allowable values**:
    + lying down
    + sitting
    + standing
    + walking
    + walking downstairs
    + walking upstairs
* **Comments**:

***

* **Variable description**: Mean body acceleration x component 
* **Variable name**: bodyAccelerometerSignalMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean body acceleration y component
* **Variable name**: bodyAccelerometerSignalMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean body acceleration z component
* **Variable name**: bodyAccelerometerSignalMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of body acceleration x component
* **Variable name**: bodyAccelerometerSignalStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of body acceleration y component
* **Variable name**: bodyAccelerometerSignalStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of body acceleration z component
* **Variable name**: bodyAccelerometerSignalStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean gravity acceleration x component
* **Variable name**: gravityAccelerometerSignalMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean gravity acceleration y component
* **Variable name**: gravityAccelerometerSignalMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean gravity acceleration z component
* **Variable name**: gravityAccelerometerSignalMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of gravity acceleration x component
* **Variable name**: gravityAccelerometerSignalStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of gravity acceleration y component
* **Variable name**: gravityAccelerometerSignalStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of gravity acceleration z component
* **Variable name**: gravityAccelerometerSignalStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of mean body acceleration x component
* **Variable name**: bodyAccelerometerSignalJerkMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of mean body acceleration y component
* **Variable name**: bodyAccelerometerSignalJerkMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of mean body acceleration z component
* **Variable name**: bodyAccelerometerSignalJerkMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of standard deviation of body acceleration x component
* **Variable name**: bodyAccelerometerSignalJerkStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of standard deviation of body acceleration y component
* **Variable name**: bodyAccelerometerSignalJerkStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of standard deviation of body acceleration z component
* **Variable name**: bodyAccelerometerSignalJerkStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean gyroscope measurement x component
* **Variable name**: bodyGyroscopeSignalMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean gyroscope measurement y component
* **Variable name**: bodyGyroscopeSignalMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean gyroscope measurement z component
* **Variable name**: bodyGyroscopeSignalMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the gyroscope measurement x component
* **Variable name**: bodyGyroscopeSignalStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the gyroscope measurement y component
* **Variable name**: bodyGyroscopeSignalStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the gyroscope measurement z component
* **Variable name**: bodyGyroscopeSignalStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of the mean gyroscope measurement x component
* **Variable name**: bodyGyroscopeSignalJerkMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of the mean gyroscope measurement y component
* **Variable name**: bodyGyroscopeSignalJerkMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of the mean gyroscope measurement z component
* **Variable name**: bodyGyroscopeSignalJerkMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of the standard deviation of the gyroscope measurement x component
* **Variable name**: bodyGyroscopeSignalJerkStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of the standard deviation of the gyroscope measurement y component
* **Variable name**: bodyGyroscopeSignalJerkStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Time derivative of the standard deviation of the gyroscope measurement z component
* **Variable name**: bodyGyroscopeSignalJerkStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean magnitude (Euclidean norm) of body acceleration
* **Variable name**: bodyAccelerometerSignalMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the magnitude (Euclidean norm) of body acceleration
* **Variable name**: bodyAccelerometerSignalMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the magnitude (Euclidean norm) of gravity acceleration
* **Variable name**: gravityAccelerometerSignalMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the magnitude (Euclidean norm) of the gravity acceleration
* **Variable name**: gravityAccelerometerSignalMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean time derivate of body acceleration magnitude (Euclidean norm)
* **Variable name**: bodyAccelerometerSignalJerkMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation time derivative of body accelaration magnitude (Euclidean norm)
* **Variable name**: bodyAccelerometerSignalJerkMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean magnitude (Euclidean norm) of gyroscope signal
* **Variable name**: bodyGyroscopeSignalMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of magnitude (Euclidean norm) of gyroscope signal
* **Variable name**: bodyGyroscopeSignalMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean magnitude (Euclidean norm) of time derivative of the gyroscope signal
* **Variable name**: bodyGyroscopeSignalJerkMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the magnitude (Euclidean norm) of the time derivative of the gyroscope signal
* **Variable name**: bodyGyroscopeSignalJerkMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean Fast Fourier Transform (FFT) of body accelerometer measurement x component
* **Variable name**: bodyAccelerometerFFTMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean Fast Fourier Transform (FFT) of body accelerometer measurement y component
* **Variable name**: bodyAccelerometerFFTMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean Fast Fourier Transform (FFT) of body accelerometer measurement z component
* **Variable name**: bodyAccelerometerFFTMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the body accelerometer measurement x component
* **Variable name**: bodyAccelerometerFFTStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the body accelerometer measurement y component
* **Variable name**: bodyAccelerometerFFTStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the body accelerometer measurement z component
* **Variable name**: bodyAccelerometerFFTStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform (FFT) of the time derivative of the body accelerometer measurement x component
* **Variable name**: bodyAccelerometerFFTJerkMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform (FFT) of the time derivative of the body accelerometer measurement y component
* **Variable name**: bodyAccelerometerFFTJerkMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform (FFT) of the time derivative of the body accelerometer measurement z component
* **Variable name**: bodyAccelerometerFFTJerkMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the time derivative of the body accelerometer measurement x component
* **Variable name**: bodyAccelerometerFFTJerkStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the time derivative of the body accelerometer measurement y component
* **Variable name**: bodyAccelerometerFFTJerkStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the time derivative of the body accelerometer measurement z component
* **Variable name**: bodyAccelerometerFFTJerkStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform (FFT) of the time derivative of the gyroscope measurement x component
* **Variable name**: bodyGyroscopeFFTMeanX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform (FFT) of the time derivative of the gyroscope measurement y component
* **Variable name**: bodyGyroscopeFFTMeanY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform (FFT) of the time derivative of the gyroscope measurement z component
* **Variable name**: bodyGyroscopeFFTMeanZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the time derivative of the gyroscope measurement x component
* **Variable name**: bodyGyroscopeFFTStandardDeviationX
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the time derivative of the gyroscope measurement y component
* **Variable name**: bodyGyroscopeFFTStandardDeviationY
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform (FFT) of the time derivative of the gyroscope measurement z component
* **Variable name**: bodyGyroscopeFFTStandardDeviationZ
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform of the magnitude of the body acceleration
* **Variable name**: bodyAccelerometerFFTMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform of the magnitude of the body acceleration
* **Variable name**: bodyAccelerometerFFTMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform of the magnitude of the time derivative of the body acceleration
* **Variable name**: bodyAccelerometerFFTJerkMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform of the magnitude of the time derivative of the body acceleration
* **Variable name**: bodyAccelerometerFFTJerkMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform of the magnitude of the gyroscope measurement
* **Variable name**: bodyGyroscopeFFTMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform of the magnitude of the gyroscope measurement
* **Variable name**: bodyGyroscopeFFTMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Mean of the Fast Fourier Transform of the time derivative of magnitude of the gyroscope measurement
* **Variable name**: bodyGyroscopeFFTJerkMagnitudeMean
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***

* **Variable description**: Standard deviation of the Fast Fourier Transform of the time derivative of magnitude of the gyroscope measurement
* **Variable name**: bodyGyroscopeFFTJerkMagnitudeStandardDeviation
* **Variable type**: Real
* **Allowable values**:
* **Comments**:

***


