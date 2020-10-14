︠f29e59e5-28e4-4b63-9436-d0d592fc50e9s︠
sage: import numpy as np
sage: M = MatrixSpace(GF(2), 8, 8)

# Matrix D
#sage: A = M([0,1,0,1,0,1,1,1, 0,0,1,1,1,1,1,1, 1,1,1,0,1,1,0,1, 1,1,0,0,0,0,1,1, 0,1,0,0,0,0,1,1, 1,1,0,0,1,1,1,0, 0,1,1,0,0,0,1,1, 1,1,1,1,0,1,1,0])

# Inverse of Matrix D
sage: A = M([0,0,0,1,1,0,0,0, 0,0,1,0,0,1,1,0, 0,0,0,0,1,0,1,0, 1,1,1,0,0,0,1,1, 1,1,1,0,1,1,0,0, 0,1,1,0,1,0,1,1, 1,0,1,1,1,1,0,1, 1,0,0,1,0,0,1,1])


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
︡8002a55b-6ca6-42d7-82b5-63c3319a0092︡{"stdout":"\n// Original Matrix A // \n\n"}︡{"stdout":"[0 0 0 1 1 0 0 0]\n[0 0 1 0 0 1 1 0]\n[0 0 0 0 1 0 1 0]\n[1 1 1 0 0 0 1 1]\n[1 1 1 0 1 1 0 0]\n[0 1 1 0 1 0 1 1]\n[1 0 1 1 1 1 0 1]\n[1 0 0 1 0 0 1 1]\n"}︡{"stdout":"\n// Permutation Matrix P // \n\n"}︡{"stdout":"[0 0 0 1 0 0 0 0]\n[0 0 1 0 0 0 0 0]\n[0 0 0 0 0 1 0 0]\n[1 0 0 0 0 0 0 0]\n[0 0 0 0 1 0 0 0]\n[0 1 0 0 0 0 0 0]\n[0 0 0 0 0 0 0 1]\n[0 0 0 0 0 0 1 0]\n"}︡{"stdout":"\n// Lower Triangular Matrix L // \n\n"}︡{"stdout":"[1 0 0 0 0 0 0 0]\n[0 1 0 0 0 0 0 0]\n[0 0 1 0 0 0 0 0]\n[0 0 0 1 0 0 0 0]\n[1 0 0 0 1 0 0 0]\n[0 0 0 0 1 1 0 0]\n[1 1 0 1 0 0 1 0]\n[1 1 1 1 1 1 0 1]\n"}︡{"stdout":"\nNumber of L-CNOT gates = Number of ones =  19\n"}︡{"stdout":"\n// Upper Trinagular Matrix U // \n\n"}︡{"stdout":"[1 1 1 0 0 0 1 1]\n[0 1 1 0 1 0 1 1]\n[0 0 1 0 0 1 1 0]\n[0 0 0 1 1 0 0 0]\n[0 0 0 0 1 1 1 1]\n[0 0 0 0 0 1 0 1]\n[0 0 0 0 0 0 1 1]\n[0 0 0 0 0 0 0 1]\n"}︡{"stdout":"\nNumber of U-CNOT gates = Number of ones =  24\n"}︡{"stdout":"\nTotal number of CNOT gates = 27\n"}︡{"done":true}









