# Voice Recognition System
**Signals and Systems - Semester Project**

**Contributors:**
- Zameer Abbas (ID: 22CS078)
- Isha Abbasi (ID: 22CS032)

## Overview

This project implements a Voice Recognition System using **Mel-Frequency Cepstral Coefficients (MFCC)** and **Dynamic Time Warping (DTW)** to compute the similarity between two audio signals. The goal is to explore signal processing techniques for voice recognition using MATLAB, as part of the Signals and Systems course.

## How it Works

1. **MFCC Extraction**:
   - Mel-Frequency Cepstral Coefficients (MFCC) are used to extract key features from audio signals. These coefficients represent the short-term power spectrum of a sound signal.
   
2. **Dynamic Time Warping (DTW)**:
   - DTW is a time-alignment algorithm that calculates the similarity between two signals by finding the optimal match between their time sequences. It is particularly useful when signals are distorted or stretched in time.
   
3. **Similarity Calculation**:
   - By extracting MFCC features and applying DTW, the system calculates a similarity score (in percentage) between the test audio and the reference audio, indicating how closely the two signals match.

## Applications

- This project can be extended for speaker identification, voice command recognition, or as a part of more complex voice recognition systems in real-world applications.

## Future Improvements

- Implement additional preprocessing steps such as noise filtering and signal normalization.
- Explore advanced classification algorithms beyond DTW for improved accuracy.

## License

This project is for educational purposes as part of the **Signals and Systems** course at MUET. All rights reserved.
