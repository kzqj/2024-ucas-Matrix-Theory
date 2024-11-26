= 矩阵直积习题

== T1

设 $A$ 的特征值为 $lambda_i$， $B$ 的特征值为 $mu_i$， 则

$A times.circle B$ 的特征值 $lambda_i mu_j gt.eq 0$

故 $A times.circle B$ 半正定

== T2

设矩阵 $A,B$ 为两个反 Hermite 矩阵，则

$(A times.circle B)^H = A^H times.circle B^H = -A times.circle -B = A times.circle B$

故 $A times.circle B$ 为 Hermite 矩阵

== T3

设 $A$ 的特征值为 $lambda_i$， $B$ 的特征值为 $mu_i$

因为 $1 + (lambda_i mu_j) + (lambda_i mu_j)^2 eq.not 0$

所以 $limits(sum)^2_(k=0) A^k X B^k = X + A X B + A^2 X B^2 = F$ 有唯一解

== T4

$A$ 特征值为 $-1, -1 ,-2$，求得对应特征向量组成的矩阵为 $P = mat(-1, 2, 0;0,1,0;1,0,1), P^(-1) = mat(-1,2,0;0,1,0;1,-2,1)$，则

$e^(2A t) = P mat(e^(-2t),,;,e^(-2t),;,,e^(-4t)) P^(-1) = mat(e^(-2t),0,0;0,e^(-2t),0;-e^(-2t)+e^(-4t),2e^(-2t)-2e^(-4t), e^(-4t))$

$
  X = - integral^(+ infinity)_0 e^(A t) I e^(A t) dif t = - integral^(+ infinity)_0 e^(2A t) dif t = - mat(-1/2,0,0;0,-1/2,0;1/4,-1/2,-1/4)
$

== T5

$
  e^(A times.circle I_n + I_m times.circle B) = e^(A times.circle I_n) e^(I_m times.circle B) = (I_n times.circle e^A)  (I_m times.circle e^B) = e^A times.circle e^B 
$