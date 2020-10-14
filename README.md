# ARIA-Blocks-Qiskit
The ARIA-Blocks-Qiskit contains Qiskit implementations of Squarer, Multiplier, and Diffusion Matrix used in ARIA block cipher in an open source quanutm computing platform Qiskit. The code can be used to draw the circuit and to find the depth of the circuit; and then it can be used to find overall depth of the quantum reversible circuit of ARIA. It also contains SageMath files for PLU decomposition of matrices used in squaring, multiplier, S-boxes and Diffusion layer of ARIA. The PLU decomposition method helps us to count the CNOT gates and to connct the appropriate wires in the circuit.  

# Installation Instructions
Qiskit supports Python 3.5 or later. We recommend installing Anaconda, a cross-platform Python distribution for scientific computing. Jupyter, included in Anaconda, is recommended for interacting with Qiskit. Next, install the Qiskit package, using the command "pip install qiskit" on Linux or macOS.  

SageMath is a free open-source mathematics software system licensed under the GPL, which we use to decompose the matrix in PLU form. 

# Contributors 
Amit Kumar Chauhan

# References
[1] Amit Kumar Chauhan, and Somitra Kumar Sanadhya, "Quantum Resource Estimates of Grover's Key Search on ARIA". A submission to Space 2020 conference  https://cse.iitkgp.ac.in/conf/SPACE2020/". 
