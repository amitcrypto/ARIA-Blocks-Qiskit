︠c9454f92-a0c8-473b-a534-136c2564dcf7︠
sage: import numpy as np
sage: M = MatrixSpace(GF(2), 8, 8)
sage: B = M([0,1,0,1,1,1,1,0, 0,0,1,1,1,1,0,1, 1,1,0,1,0,1,1,1, 1,0,0,1,1,1,0,1, 0,0,1,0,1,1,0,0, 1,0,0,0,0,0,0,1, 0,1,0,1,1,1,0,1, 1,1,0,1,0,0,1,1])

sage: print '\n', '// Original Matrix A //', '\n'
sage: print B.str()

sage: P, L, U = B.LU(pivot='nonzero')

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

︡e2d99bcd-c996-432f-843b-fe9253ce5f8b︡{"stdout":"\n// Original Matrix A // \n\n"}︡{"stdout":"[0 1 0 1 1 1 1 0]\n[0 0 1 1 1 1 0 1]\n[1 1 0 1 0 1 1 1]\n[1 0 0 1 1 1 0 1]\n[0 0 1 0 1 1 0 0]\n[1 0 0 0 0 0 0 1]\n[0 1 0 1 1 1 0 1]\n[1 1 0 1 0 0 1 1]\n"}︡{"stdout":"\n// Permutation Matrix P // \n\n"}︡{"stdout":"[0 1 0 0 0 0 0 0]\n[0 0 1 0 0 0 0 0]\n[1 0 0 0 0 0 0 0]\n[0 0 0 1 0 0 0 0]\n[0 0 0 0 0 1 0 0]\n[0 0 0 0 1 0 0 0]\n[0 0 0 0 0 0 1 0]\n[0 0 0 0 0 0 0 1]\n"}︡{"stdout":"\n// Lower Triangular Matrix L // \n\n"}︡{"stdout":"[1 0 0 0 0 0 0 0]\n[0 1 0 0 0 0 0 0]\n[0 0 1 0 0 0 0 0]\n[1 1 0 1 0 0 0 0]\n[1 1 0 0 1 0 0 0]\n[0 0 1 1 0 1 0 0]\n[0 1 0 0 0 0 1 0]\n[1 0 0 0 0 1 0 1]\n"}︡{"stdout":"\nNumber of L-CNOT gates = Number of ones =  17\n"}︡{"stdout":"\n// Upper Trinagular Matrix U // \n\n"}︡{"stdout":"[1 1 0 1 0 1 1 1]\n[0 1 0 1 1 1 1 0]\n[0 0 1 1 1 1 0 1]\n[0 0 0 1 0 1 0 0]\n[0 0 0 0 1 0 0 0]\n[0 0 0 0 0 1 0 1]\n[0 0 0 0 0 0 1 1]\n[0 0 0 0 0 0 0 1]\n"}︡{"stdout":"\nNumber of U-CNOT gates = Number of ones =  24\n"}︡{"stdout":"\nTotal number of CNOT gates = 25\n"}︡{"done":true}
︠0bff71d6-4976-4c48-97f9-b957563ef65ds︠

︡11f91895-7ab9-42da-b9d4-5e8cbf2a81ff︡{"done":true}









