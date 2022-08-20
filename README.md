# HEEH
First arrival picking on Zero-phase seismic data using HEEH method
First arrival travel time picking is an important step in many seismic data-processing applications. Most first arrival picking methods search for a sudden jump in seismic energy at trace onsets, which is clearly appropriate for minimum-phase data. This paper proposes a method for the first arrival picking of non-minimum phase data based on complex trace analysis. The Hilbert integral transform generates a complex seismic trace, followed by the extraction of the envelope. The first arrival identification introduces an outlier detection method that uses the widely used three-sigma rule of thumb, which is commonly used in most software algorithms to identify outliers. The proposed method ultimately generates logical windows of ones (at the locations of outliers) and zeros (elsewhere). The first arrival was selected in the middle of the first outlier window. testing the proposed method on zero-phase synthetic data with added 10% and 20% random noise, it detected the true first arrivals accurately. Furthermore, tests on real Vibroseis data showed that the method recognizes the first arrivals with 67% accuracy within 20 ms of their corresponding arrival times manually picked by an experienced geophysicist.
