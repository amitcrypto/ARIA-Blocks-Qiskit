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

# Applying Toffoli gate on the register of qubits

circuit.ccx(q[7], q[9], q[16])
circuit.ccx(q[6], q[10], q[16])
circuit.ccx(q[5], q[11], q[16])
circuit.ccx(q[4], q[12], q[16])
circuit.ccx(q[3], q[13], q[16])
circuit.ccx(q[2], q[14], q[16])
circuit.ccx(q[1], q[15], q[16])

circuit.ccx(q[7], q[10], q[17])
circuit.ccx(q[6], q[11], q[17])
circuit.ccx(q[5], q[12], q[17])
circuit.ccx(q[4], q[13], q[17])
circuit.ccx(q[3], q[14], q[17])
circuit.ccx(q[2], q[15], q[17])

circuit.ccx(q[7], q[11], q[18])
circuit.ccx(q[6], q[12], q[18])
circuit.ccx(q[5], q[13], q[18])
circuit.ccx(q[4], q[14], q[18])
circuit.ccx(q[3], q[15], q[18])

circuit.ccx(q[7], q[12], q[19])
circuit.ccx(q[6], q[13], q[19])
circuit.ccx(q[5], q[14], q[19])
circuit.ccx(q[4], q[15], q[19])

circuit.ccx(q[7], q[13], q[20])
circuit.ccx(q[6], q[14], q[20])
circuit.ccx(q[5], q[15], q[20]) 

circuit.ccx(q[7], q[14], q[21])
circuit.ccx(q[6], q[15], q[21])

circuit.ccx(q[7], q[15], q[22])

# Applying CNOT gate on the register of qubits

circuit.cx(q[22], q[23])
circuit.cx(q[20], q[23]) 
circuit.cx(q[19], q[23])

circuit.cx(q[21], q[22])
circuit.cx(q[19], q[22])
circuit.cx(q[18], q[22])

circuit.cx(q[20], q[21])
circuit.cx(q[18], q[21])
circuit.cx(q[17], q[21])

circuit.cx(q[19], q[20])
circuit.cx(q[17], q[20])
circuit.cx(q[16], q[20])

circuit.cx(q[18], q[19])
circuit.cx(q[16], q[19])

circuit.cx(q[18], q[22])
circuit.cx(q[17], q[18])

circuit.cx(q[17], q[22])
circuit.cx(q[17], q[21])
circuit.cx(q[16], q[17]) 

circuit.cx(q[16], q[21])
circuit.cx(q[16], q[20])

# Applying Toffoli gate on the register of qubits 

circuit.ccx(q[7], q[8], q[23])
circuit.ccx(q[6], q[9], q[23])
circuit.ccx(q[5], q[10], q[23])
circuit.ccx(q[4], q[11], q[23])
circuit.ccx(q[3], q[12], q[23])
circuit.ccx(q[2], q[13], q[23])
circuit.ccx(q[1], q[14], q[23])
circuit.ccx(q[0], q[15], q[23]) 

circuit.ccx(q[6], q[8], q[22])
circuit.ccx(q[5], q[9], q[22])
circuit.ccx(q[4], q[10], q[22])
circuit.ccx(q[3], q[11], q[22])
circuit.ccx(q[2], q[12], q[22])
circuit.ccx(q[1], q[13], q[22])
circuit.ccx(q[0], q[14], q[22])

circuit.ccx(q[5], q[8], q[21])
circuit.ccx(q[4], q[9], q[21])
circuit.ccx(q[3], q[10], q[21])
circuit.ccx(q[2], q[11], q[21])
circuit.ccx(q[1], q[12], q[21])
circuit.ccx(q[0], q[13], q[21])

circuit.ccx(q[4], q[8], q[20])
circuit.ccx(q[3], q[9], q[20])
circuit.ccx(q[2], q[10], q[20])
circuit.ccx(q[1], q[11], q[20])
circuit.ccx(q[0], q[12], q[20])

circuit.ccx(q[3], q[8], q[19])
circuit.ccx(q[2], q[9], q[19])
circuit.ccx(q[1], q[10], q[19])
circuit.ccx(q[0], q[11], q[19])

circuit.ccx(q[2], q[8], q[18])
circuit.ccx(q[1], q[9], q[18])
circuit.ccx(q[0], q[10], q[18])

circuit.ccx(q[1], q[8], q[17])
circuit.ccx(q[0], q[9], q[17])

circuit.ccx(q[0], q[8], q[16])

# Printing the circuit 
qc = circuit.draw() 
print(qc)

# Estimating the circuit depth 
d = QuantumCircuit.depth(circuit)

print('The Circuit Depth :=', d)
