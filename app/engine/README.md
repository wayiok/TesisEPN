## kNN Model for detection of atypical queries


Inside this repositry we have two folders:

* CsirtLogs (The logs inside this folder must be handled internally by the polytechnic only, since they were delivered by the CSIRT under a confidentiality agreement)
* Individual Tests (Logs created in test environment)

### Needed Tools and Libraries

* [Python 3](https://www.python.org/download/releases/3.0/)
* [Pip](https://pypi.org/project/pip/)
* [PyOD](https://pyod.readthedocs.io/en/latest/)
* [Spicy](https://pypi.org/project/spicy/)
* [Pandas](https://pandas.pydata.org/)
* [Numpy](https://numpy.org/)
* [Sckit_learn](https://scikit-learn.org/stable/)
* [Matplotlib](https://matplotlib.org/)

### Files Description

To summarize the operation I point out the following explanations of the files in the folders:

* **FirstStep.py**
In this step, the data collection is carried out from the entered file, reading of transaction records, extraction of attributes and generation of new files. These files will contain the extracted transaction log data in a format set for the next step. The path of the log file to use is edited on Line 5.

* **SecondStep.py**
A split of transaction log sets is performed, where files with a maximum of 5000 transaction logs each are generated.
* **ThirdStep.py**
Each set of transaction records generated in the previous step is read, cleaning, transformation, data normalization and implementation of the kNN algorithm are performed. The result of this step is the generation of new files containing only the transaction logs identified as anomalies.
* **FourthStep.py**
A text analysis of the query made to the database associated with the transaction record that was identified as an anomaly is performed. If any expression is recorded that reveals the existence of an attack or its attempt, the anomaly is recorded on the system server.
* **Executable.sh**
File that executes all the mentioned files.
