\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  10 X[0] + 20 X[1] + 11 X[2] + 10 X[3] + 11 X[4] + 12 X[5] + 20 X[6]
   + 10 X[7] + 17 I[0] + 18 I[1] + 17 I[2] + 13 I[3] + 12 I[4] + 10 I[5]
   + 13 I[6] + 19 I[7] + 12 Y[0] + 15 Y[1] + 19 Y[2] + 16 Y[3] + 19 Y[4]
   + 13 Y[5] + 18 Y[6] + 16 Y[7]
Subject To
 constrI[1]: - X[1] - I[0] + I[1] = -19
 constrI[2]: - X[2] - I[1] + I[2] = -19
 constrI[3]: - X[3] - I[2] + I[3] = -11
 constrI[4]: - X[4] - I[3] + I[4] = -15
 constrI[5]: - X[5] - I[4] + I[5] = -10
 constrI[6]: - X[6] - I[5] + I[6] = -10
 startInventoryNull: I[0] = 0
 endInventoryNull: I[7] = 0
 constX[0]: X[0] - 110 Y[0] <= 0
 constX[1]: X[1] - 95 Y[1] <= 0
 constX[2]: X[2] - 76 Y[2] <= 0
 constX[3]: X[3] - 57 Y[3] <= 0
 constX[4]: X[4] - 46 Y[4] <= 0
 constX[5]: X[5] - 31 Y[5] <= 0
 constX[6]: X[6] - 21 Y[6] <= 0
 constX[7]: X[7] - 11 Y[7] <= 0
 constrC[0]: X[0] - 16 Y[0] <= 0
 constrC[1]: X[1] - 20 Y[1] <= 0
 constrC[2]: X[2] - 30 Y[2] <= 0
 constrC[3]: X[3] - 15 Y[3] <= 0
 constrC[4]: X[4] - 26 Y[4] <= 0
 constrC[5]: X[5] - 15 Y[5] <= 0
 constrC[6]: X[6] - 15 Y[6] <= 0
 constrC[7]: X[7] - 13 Y[7] <= 0
Bounds
Binaries
 Y[0] Y[1] Y[2] Y[3] Y[4] Y[5] Y[6] Y[7]
End
