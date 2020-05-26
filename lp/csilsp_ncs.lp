\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  15 X[0] + 12 X[1] + 17 X[2] + 17 X[3] + 17 X[4] + 19 X[5] + 13 X[6]
   + 19 X[7] + 12 I[0] + 20 I[1] + 16 I[2] + 16 I[3] + 15 I[4] + 20 I[5]
   + 14 I[6] + 13 I[7] + 14 Y[0] + 20 Y[1] + 12 Y[2] + 15 Y[3] + 20 Y[4]
   + 11 Y[5] + 14 Y[6] + 15 Y[7]
Subject To
 constrI[1]: - X[1] - I[0] + I[1] = -16
 constrI[2]: - X[2] - I[1] + I[2] = -14
 constrI[3]: - X[3] - I[2] + I[3] = -18
 constrI[4]: - X[4] - I[3] + I[4] = -10
 constrI[5]: - X[5] - I[4] + I[5] = -19
 constrI[6]: - X[6] - I[5] + I[6] = -15
 startInventoryNull: I[0] = 0
 endInventoryNull: I[7] = 0
 constX[0]: X[0] - 188 Y[0] <= 0
 constX[1]: X[1] - 188 Y[1] <= 0
 constX[2]: X[2] - 172 Y[2] <= 0
 constX[3]: X[3] - 158 Y[3] <= 0
 constX[4]: X[4] - 140 Y[4] <= 0
 constX[5]: X[5] - 130 Y[5] <= 0
 constX[6]: X[6] - 111 Y[6] <= 0
 constX[7]: X[7] - 96 Y[7] <= 0
 constrC[0]: X[0] - 200 Y[0] <= 0
 constrC[1]: X[1] - 206 Y[1] <= 0
 constrC[2]: X[2] - 200 Y[2] <= 0
 constrC[3]: X[3] - 205 Y[3] <= 0
 constrC[4]: X[4] - 202 Y[4] <= 0
 constrC[5]: X[5] - 205 Y[5] <= 0
 constrC[6]: X[6] - 198 Y[6] <= 0
 constrC[7]: X[7] - 204 Y[7] <= 0
 constrTimeWindows[0]: X[0] <= 105
 constrTimeWindows[1]: X[0] + X[1] <= 118
 constrTimeWindows[2]: X[0] + X[1] + X[2] <= 128
 constrTimeWindows[3]: X[0] + X[1] + X[2] + X[3] <= 144
 constrTimeWindows[4]: X[0] + X[1] + X[2] + X[3] + X[4] <= 154
 constrTimeWindows[5]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] <= 168
 constrTimeWindows[6]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] + X[6]
   <= 188
 constrTimeWindows[7]: X[0] + X[1] + X[2] + X[3] + X[4] + X[5] + X[6]
   + X[7] <= 188
Bounds
Binaries
 Y[0] Y[1] Y[2] Y[3] Y[4] Y[5] Y[6] Y[7]
End
