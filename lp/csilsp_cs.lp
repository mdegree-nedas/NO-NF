\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  16 X[0] + 16 X[1] + 20 X[2] + 11 X[3] + 16 X[4] + 10 X[5] + 16 X[6]
   + 17 X[7] + 19 I[0] + 12 I[1] + 18 I[2] + 18 I[3] + 11 I[4] + 14 I[5]
   + 15 I[6] + 14 I[7] + 11 Y[0] + 11 Y[1] + 14 Y[2] + 14 Y[3] + 17 Y[4]
   + 15 Y[5] + 10 Y[6] + 11 Y[7]
Subject To
 constrI[1]: - X[1] - I[0] + I[1] = -20
 constrI[2]: - X[2] - I[1] + I[2] = -21
 constrI[3]: - X[3] - I[2] + I[3] = -38
 constrI[4]: - X[4] - I[3] + I[4] = -58
 constrI[5]: - X[5] - I[4] + I[5] = -75
 constrI[6]: - X[6] - I[5] + I[6] = -97
 startInventoryNull: I[0] = 0
 endInventoryNull: I[7] = 0
 constX[0]: X[0] - 412 Y[0] <= 0
 constX[1]: X[1] - 412 Y[1] <= 0
 constX[2]: X[2] - 392 Y[2] <= 0
 constX[3]: X[3] - 371 Y[3] <= 0
 constX[4]: X[4] - 333 Y[4] <= 0
 constX[5]: X[5] - 275 Y[5] <= 0
 constX[6]: X[6] - 200 Y[6] <= 0
 constX[7]: X[7] - 103 Y[7] <= 0
 constrC[0]: X[0] - 97 Y[0] <= 0
 constrC[1]: X[1] - 92 Y[1] <= 0
 constrC[2]: X[2] - 91 Y[2] <= 0
 constrC[3]: X[3] - 92 Y[3] <= 0
 constrC[4]: X[4] - 65 Y[4] <= 0
 constrC[5]: X[5] - 72 Y[5] <= 0
 constrC[6]: X[6] - 62 Y[6] <= 0
 constrC[7]: X[7] - 20 Y[7] <= 0
 constrTimeWindows[0]: X[0] <= 101
 constrTimeWindows[1]: X[0] + X[1] <= 189
 constrTimeWindows[2]: X[0] + X[1] + X[2] <= 257
 constrTimeWindows[3]: X[0] + X[1] + X[2] + X[3] <= 313
 constrTimeWindows[4]: X[0] + X[1] + X[2] + X[3] + X[4] <= 363
 constrTimeWindows[5]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] <= 396
 constrTimeWindows[6]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] + X[6]
   <= 412
 constrTimeWindows[7]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] + X[6]
   + X[7] <= 412
 constrTimeWindowsCS[0,0]: X[0] >= 0
 constrTimeWindowsCS[1,0]: X[0] + X[1] >= 20
 constrTimeWindowsCS[1,1]: X[1] >= 0
 constrTimeWindowsCS[2,0]: X[0] + X[1] + X[2] >= 41
 constrTimeWindowsCS[2,1]: X[1] + X[2] >= 10
 constrTimeWindowsCS[2,2]: X[2] >= 0
 constrTimeWindowsCS[3,0]: X[0] + X[1] + X[2] + X[3] >= 79
 constrTimeWindowsCS[3,1]: X[1] + X[2] + X[3] >= 34
 constrTimeWindowsCS[3,2]: X[2] + X[3] >= 13
 constrTimeWindowsCS[3,3]: X[3] >= 0
 constrTimeWindowsCS[4,0]: X[0] + X[1] + X[2] + X[3] + X[4] >= 137
 constrTimeWindowsCS[4,1]: X[1] + X[2] + X[3] + X[4] >= 79
 constrTimeWindowsCS[4,2]: X[2] + X[3] + X[4] >= 43
 constrTimeWindowsCS[4,3]: X[3] + X[4] >= 20
 constrTimeWindowsCS[4,4]: X[4] >= 0
 constrTimeWindowsCS[5,0]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] >= 212
 constrTimeWindowsCS[5,1]: X[1] + X[2] + X[3] + X[4] + X[5] >= 136
 constrTimeWindowsCS[5,2]: X[2] + X[3] + X[4] + X[5] >= 86
 constrTimeWindowsCS[5,3]: X[3] + X[4] + X[5] >= 48
 constrTimeWindowsCS[5,4]: X[4] + X[5] >= 13
 constrTimeWindowsCS[5,5]: X[5] >= 0
 constrTimeWindowsCS[6,0]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] + X[6]
   >= 309
 constrTimeWindowsCS[6,1]: X[1] + X[2] + X[3] + X[4] + X[5] + X[6] >= 221
 constrTimeWindowsCS[6,2]: X[2] + X[3] + X[4] + X[5] + X[6] >= 153
 constrTimeWindowsCS[6,3]: X[3] + X[4] + X[5] + X[6] >= 97
 constrTimeWindowsCS[6,4]: X[4] + X[5] + X[6] >= 52
 constrTimeWindowsCS[6,5]: X[5] + X[6] >= 19
 constrTimeWindowsCS[6,6]: X[6] >= 0
 constrTimeWindowsCS[7,0]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] + X[6]
   + X[7] >= 412
 constrTimeWindowsCS[7,1]: X[1] + X[2] + X[3] + X[4] + X[5] + X[6] + X[7]
   >= 311
 constrTimeWindowsCS[7,2]: X[2] + X[3] + X[4] + X[5] + X[6] + X[7] >= 223
 constrTimeWindowsCS[7,3]: X[3] + X[4] + X[5] + X[6] + X[7] >= 155
 constrTimeWindowsCS[7,4]: X[4] + X[5] + X[6] + X[7] >= 99
 constrTimeWindowsCS[7,5]: X[5] + X[6] + X[7] >= 49
 constrTimeWindowsCS[7,6]: X[6] + X[7] >= 16
 constrTimeWindowsCS[7,7]: X[7] >= 0
Bounds
Binaries
 Y[0] Y[1] Y[2] Y[3] Y[4] Y[5] Y[6] Y[7]
End
