\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  13 Y[0] + 18 Y[1] + 15 Y[2] + 17 Y[3] + 16 Y[4] + 15 Y[5] + 16 Y[6]
   + 12 Y[7] + 16 Z[0,0] + 30 Z[0,1] + 44 Z[0,2] + 64 Z[0,3] + 84 Z[0,4]
   + 95 Z[0,5] + 111 Z[0,6] + 126 Z[0,7] + 0 Z[1,0] + 20 Z[1,1] + 34 Z[1,2]
   + 54 Z[1,3] + 74 Z[1,4] + 85 Z[1,5] + 101 Z[1,6] + 116 Z[1,7] + 0 Z[2,0]
   + 0 Z[2,1] + 18 Z[2,2] + 38 Z[2,3] + 58 Z[2,4] + 69 Z[2,5] + 85 Z[2,6]
   + 100 Z[2,7] + 0 Z[3,0] + 0 Z[3,1] + 0 Z[3,2] + 19 Z[3,3] + 39 Z[3,4]
   + 50 Z[3,5] + 66 Z[3,6] + 81 Z[3,7] + 0 Z[4,0] + 0 Z[4,1] + 0 Z[4,2]
   + 0 Z[4,3] + 20 Z[4,4] + 31 Z[4,5] + 47 Z[4,6] + 62 Z[4,7] + 0 Z[5,0]
   + 0 Z[5,1] + 0 Z[5,2] + 0 Z[5,3] + 0 Z[5,4] + 15 Z[5,5] + 31 Z[5,6]
   + 46 Z[5,7] + 0 Z[6,0] + 0 Z[6,1] + 0 Z[6,2] + 0 Z[6,3] + 0 Z[6,4]
   + 0 Z[6,5] + 13 Z[6,6] + 28 Z[6,7] + 0 Z[7,0] + 0 Z[7,1] + 0 Z[7,2]
   + 0 Z[7,3] + 0 Z[7,4] + 0 Z[7,5] + 0 Z[7,6] + 10 Z[7,7]
Subject To
 constrZ[0]: Z[0,0] = 0
 constrZ[1]: Z[0,1] + Z[1,1] = 12
 constrZ[2]: Z[0,2] + Z[1,2] + Z[2,2] = 27
 constrZ[3]: Z[0,3] + Z[1,3] + Z[2,3] + Z[3,3] = 33
 constrZ[4]: Z[0,4] + Z[1,4] + Z[2,4] + Z[3,4] + Z[4,4] = 54
 constrZ[5]: Z[0,5] + Z[1,5] + Z[2,5] + Z[3,5] + Z[4,5] + Z[5,5] = 78
 constrZ[6]: Z[0,6] + Z[1,6] + Z[2,6] + Z[3,6] + Z[4,6] + Z[5,6] + Z[6,6]
   = 96
 constrZ[7]: Z[0,7] + Z[1,7] + Z[2,7] + Z[3,7] + Z[4,7] + Z[5,7] + Z[6,7]
   + Z[7,7] = 110
 constrZ2[0,0]: Z[0,0] <= 0
 constrZ2[0,1]: - 12 Y[0] + Z[0,1] <= 0
 constrZ2[0,2]: - 27 Y[0] + Z[0,2] <= 0
 constrZ2[0,3]: - 33 Y[0] + Z[0,3] <= 0
 constrZ2[0,4]: - 54 Y[0] + Z[0,4] <= 0
 constrZ2[0,5]: - 78 Y[0] + Z[0,5] <= 0
 constrZ2[0,6]: - 96 Y[0] + Z[0,6] <= 0
 constrZ2[0,7]: - 110 Y[0] + Z[0,7] <= 0
 constrZ2[1,1]: - 12 Y[1] + Z[1,1] <= 0
 constrZ2[1,2]: - 27 Y[1] + Z[1,2] <= 0
 constrZ2[1,3]: - 33 Y[1] + Z[1,3] <= 0
 constrZ2[1,4]: - 54 Y[1] + Z[1,4] <= 0
 constrZ2[1,5]: - 78 Y[1] + Z[1,5] <= 0
 constrZ2[1,6]: - 96 Y[1] + Z[1,6] <= 0
 constrZ2[1,7]: - 110 Y[1] + Z[1,7] <= 0
 constrZ2[2,2]: - 27 Y[2] + Z[2,2] <= 0
 constrZ2[2,3]: - 33 Y[2] + Z[2,3] <= 0
 constrZ2[2,4]: - 54 Y[2] + Z[2,4] <= 0
 constrZ2[2,5]: - 78 Y[2] + Z[2,5] <= 0
 constrZ2[2,6]: - 96 Y[2] + Z[2,6] <= 0
 constrZ2[2,7]: - 110 Y[2] + Z[2,7] <= 0
 constrZ2[3,3]: - 33 Y[3] + Z[3,3] <= 0
 constrZ2[3,4]: - 54 Y[3] + Z[3,4] <= 0
 constrZ2[3,5]: - 78 Y[3] + Z[3,5] <= 0
 constrZ2[3,6]: - 96 Y[3] + Z[3,6] <= 0
 constrZ2[3,7]: - 110 Y[3] + Z[3,7] <= 0
 constrZ2[4,4]: - 54 Y[4] + Z[4,4] <= 0
 constrZ2[4,5]: - 78 Y[4] + Z[4,5] <= 0
 constrZ2[4,6]: - 96 Y[4] + Z[4,6] <= 0
 constrZ2[4,7]: - 110 Y[4] + Z[4,7] <= 0
 constrZ2[5,5]: - 78 Y[5] + Z[5,5] <= 0
 constrZ2[5,6]: - 96 Y[5] + Z[5,6] <= 0
 constrZ2[5,7]: - 110 Y[5] + Z[5,7] <= 0
 constrZ2[6,6]: - 96 Y[6] + Z[6,6] <= 0
 constrZ2[6,7]: - 110 Y[6] + Z[6,7] <= 0
 constrZ2[7,7]: - 110 Y[7] + Z[7,7] <= 0
 constrZ3[0]: Z[0,0] + Z[0,1] + Z[0,2] + Z[0,3] + Z[0,4] + Z[0,5] + Z[0,6]
   + Z[0,7] <= 89
 constrZ3[1]: Z[1,1] + Z[1,2] + Z[1,3] + Z[1,4] + Z[1,5] + Z[1,6] + Z[1,7]
   <= 92
 constrZ3[2]: Z[2,2] + Z[2,3] + Z[2,4] + Z[2,5] + Z[2,6] + Z[2,7] <= 85
 constrZ3[3]: Z[3,3] + Z[3,4] + Z[3,5] + Z[3,6] + Z[3,7] <= 91
 constrZ3[4]: Z[4,4] + Z[4,5] + Z[4,6] + Z[4,7] <= 68
 constrZ3[5]: Z[5,5] + Z[5,6] + Z[5,7] <= 70
 constrZ3[6]: Z[6,6] + Z[6,7] <= 74
 constrZ3[7]: Z[7,7] <= 13
 constrCS_NCS_FAL[0,0]: Z[0,0] <= 0
 constrCS_NCS_FAL[1,0]: Z[0,1] <= 12
 constrCS_NCS_FAL[1,1]: Z[0,1] + Z[1,1] <= 12
 constrCS_NCS_FAL[2,0]: Z[0,2] <= 11
 constrCS_NCS_FAL[2,1]: Z[0,2] + Z[1,2] <= 27
 constrCS_NCS_FAL[2,2]: Z[0,2] + Z[1,2] + Z[2,2] <= 27
 constrCS_NCS_FAL[3,0]: Z[0,3] <= 10
 constrCS_NCS_FAL[3,1]: Z[0,3] + Z[1,3] <= 21
 constrCS_NCS_FAL[3,2]: Z[0,3] + Z[1,3] + Z[2,3] <= 33
 constrCS_NCS_FAL[3,3]: Z[0,3] + Z[1,3] + Z[2,3] + Z[3,3] <= 33
 constrCS_NCS_FAL[4,0]: Z[0,4] <= 19
 constrCS_NCS_FAL[4,1]: Z[0,4] + Z[1,4] <= 30
 constrCS_NCS_FAL[4,2]: Z[0,4] + Z[1,4] + Z[2,4] <= 43
 constrCS_NCS_FAL[4,3]: Z[0,4] + Z[1,4] + Z[2,4] + Z[3,4] <= 54
 constrCS_NCS_FAL[4,4]: Z[0,4] + Z[1,4] + Z[2,4] + Z[3,4] + Z[4,4] <= 54
 constrCS_NCS_FAL[5,0]: Z[0,5] <= 16
 constrCS_NCS_FAL[5,1]: Z[0,5] + Z[1,5] <= 27
 constrCS_NCS_FAL[5,2]: Z[0,5] + Z[1,5] + Z[2,5] <= 39
 constrCS_NCS_FAL[5,3]: Z[0,5] + Z[1,5] + Z[2,5] + Z[3,5] <= 59
 constrCS_NCS_FAL[5,4]: Z[0,5] + Z[1,5] + Z[2,5] + Z[3,5] + Z[4,5] <= 78
 constrCS_NCS_FAL[5,5]: Z[0,5] + Z[1,5] + Z[2,5] + Z[3,5] + Z[4,5] + Z[5,5]
   <= 78
 constrCS_NCS_FAL[6,0]: Z[0,6] <= 14
 constrCS_NCS_FAL[6,1]: Z[0,6] + Z[1,6] <= 28
 constrCS_NCS_FAL[6,2]: Z[0,6] + Z[1,6] + Z[2,6] <= 43
 constrCS_NCS_FAL[6,3]: Z[0,6] + Z[1,6] + Z[2,6] + Z[3,6] <= 58
 constrCS_NCS_FAL[6,4]: Z[0,6] + Z[1,6] + Z[2,6] + Z[3,6] + Z[4,6] <= 76
 constrCS_NCS_FAL[6,5]: Z[0,6] + Z[1,6] + Z[2,6] + Z[3,6] + Z[4,6] + Z[5,6]
   <= 96
 constrCS_NCS_FAL[6,6]: Z[0,6] + Z[1,6] + Z[2,6] + Z[3,6] + Z[4,6] + Z[5,6]
   + Z[6,6] <= 96
 constrCS_NCS_FAL[7,0]: Z[0,7] <= 20
 constrCS_NCS_FAL[7,1]: Z[0,7] + Z[1,7] <= 32
 constrCS_NCS_FAL[7,2]: Z[0,7] + Z[1,7] + Z[2,7] <= 46
 constrCS_NCS_FAL[7,3]: Z[0,7] + Z[1,7] + Z[2,7] + Z[3,7] <= 65
 constrCS_NCS_FAL[7,4]: Z[0,7] + Z[1,7] + Z[2,7] + Z[3,7] + Z[4,7] <= 85
 constrCS_NCS_FAL[7,5]: Z[0,7] + Z[1,7] + Z[2,7] + Z[3,7] + Z[4,7] + Z[5,7]
   <= 98
 constrCS_NCS_FAL[7,6]: Z[0,7] + Z[1,7] + Z[2,7] + Z[3,7] + Z[4,7] + Z[5,7]
   + Z[6,7] <= 110
 constrCS_NCS_FAL[7,7]: Z[0,7] + Z[1,7] + Z[2,7] + Z[3,7] + Z[4,7] + Z[5,7]
   + Z[6,7] + Z[7,7] <= 110
Bounds
Binaries
 Y[0] Y[1] Y[2] Y[3] Y[4] Y[5] Y[6] Y[7]
End
