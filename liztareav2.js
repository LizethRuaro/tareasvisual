s0.initImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl8ozaIKLq8tadzhPhcQaaArK7LQr415kBVWMCqmZFpZfPR_lw")
osc().modulate(src(s0),1).blend(src(s0),0.8).pixelate(150,150)
.mult(osc(13,0.5,5))
.repeat(6,3,6,3)
  .out(o0)