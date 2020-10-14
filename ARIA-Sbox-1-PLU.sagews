# Copyright (c) Amit Kumar Chauhan, IIT Ropar, India.
# Licensed under the GNU General Public License. 

sage: import numpy as np
sage: M = MatrixSpace(GF(2), 8, 8)
sage: A = M([1,0,0,0,1,1,1,1, 1,1,0,0,0,1,1,1, 1,1,1,0,0,0,1,1, 1,1,1,1,0,0,0,1, 1,1,1,1,1,0,0,0, 0,1,1,1,1,1,0,0, 0,0,1,1,1,1,1,0, 0,0,0,1,1,1,1,1])

sage: print '\n', '// Original Matrix A //', '\n'
sage: print A.str()

sage: P, L, U = A.LU(pivot='nonzero')

sage: print '\n', '// Permutation Matrix P //', '\n'
sage: print P.str()

sage: print '\n', '// Lower Triangular Matrix L //', '\n'
sage: print L.str()
sage: L1 = np.array(L)
sage: LCNOT = sum(L1 == 1)
sage: print '\n', 'Number of L-CNOT gates = Number of ones = ', LCNOT

sage: print '\n', '// Upper Trinagular Matrix U //', '\n'
sage: print U.str()
sage: L2 = np.array(U)
sage: UCNOT = sum(L2 == 1)
sage: print '\n', 'Number of U-CNOT gates = Number of ones = ', UCNOT

sage: TCNOT = sum(LCNOT + UCNOT - 16)
sage: print '\n', 'Total number of CNOT gates =', TCNOT
