# Copyright (c) Amit Kumar Chauhan, IIT Ropar, India.
# Licensed under the GNU General Public License. 

# Importing standard Qiskit libraries and configuring account
import qiskit 
from qiskit import QuantumCircuit, execute, Aer, IBMQ
from qiskit.compiler import transpile, assemble
from qiskit.tools.jupyter import *
from qiskit.visualization import *

# Loading your IBM Q account(s)
provider = IBMQ.load_account()

# Creating qubits
q = qiskit.QuantumRegister(128) 

circuit = qiskit.QuantumCircuit(q) 

# Applying CNOT gates on the register of qubits 

circuit.cx(q[4], q[0])
circuit.cx(q[6], q[0])
circuit.cx(q[5], q[1])
circuit.cx(q[4], q[2])
circuit.cx(q[7], q[2])
circuit.cx(q[5], q[3])
circuit.cx(q[6], q[4])
circuit.cx(q[7], q[4])
circuit.cx(q[6], q[5])
circuit.cx(q[6], q[7])
circuit.cx(q[5], q[6])
circuit.cx(q[4], q[6])

# Printing the circuit 
qc = circuit.draw() 
print(qc)

# Estimating the circuit depth 
d = QuantumCircuit.depth(circuit)

print('The Circuit Depth :=', d) 

 
