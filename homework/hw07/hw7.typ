= 矩阵分析习题

== T1

$
  norm(alpha A^((k)) + beta B^((k)) - alpha A - beta B ) <= alpha norm(A^((k)) - A) + beta norm( B^((k)) - B)
  stretch(->)_(k arrow.r infinity) 0
$

证毕

== T2

$A$ 的特征值为 $lambda_1 = 2 c, lambda_2 = lambda_3 = -c$, 则 $rho(A) = 2 abs(c)$

当 $rho(A) < 1 "即" abs(c) < 1/2$ 时，$A$ 为收敛矩阵

== T3

当 $forall k, abs(c_k A^k) arrow.r 0$ 时，矩阵幂级数收敛

== T4

=== (1)

矩阵 $A = mat(1,7;-1,-3)$ 的特征值为 $-2, -2$， 则 $rho(A) = 2$

又幂级数 $limits(sum)_(k=1)^(infinity) 1/k^2 x^k$ 的收敛半径为 $r= limits(lim)_(k arrow.r infinity) abs(a_k/a_(k+1)) = 1$

故 $rho(A) > r$，矩阵幂级数发散

=== (2)

矩阵 $A = mat(1,-8;-2,1)$ 的特征值为 $-3, 5$， 则 $rho(A) = 5$

又幂级数 $limits(sum)_(k=1)^(infinity) k/6^k x^k$ 的收敛半径为 $r= limits(lim)_(k arrow.r infinity) abs(a_k/a_(k+1)) = 6$

故 $rho(A) < r$，矩阵幂级数收敛

== T5

$limits(sum)_(k=1)^(infinity) x^k$ 的收敛半径为 $r = 1$

由矩阵级数 $limits(sum)_(k=1)^(infinity) A^((k))$ 收敛可得 $rho(A) < 1$

故 $A$ 为收敛矩阵，于是 $limits(lim)_(k arrow.r infinity) A^((k)) = 0$

== T6

TODO:

== T7

$
  e^A (e^A)^T = e^A e^(A^T) = e^(A - A) = I
$

故 $e^A$ 为正交矩阵

== T8

$
  e^(i A) (e^(i A))^H = e^(i A) e^(i A)^H = e^(i A - i A) = I
$

故 $e^(i A)$ 为酉矩阵

== T9

$abs(lambda I - A) = (lambda - 2) (lambda^2 - 1)$

对应特征向量组成的矩阵为 $P = mat(1,-3,1;0,3,-1;0,1,-1), P^(-1) =  mat(1,1,0;0,1/2,-1/2;0,1/2,-3/2)$

$
  e^A &= P mat(e^2,0,0;0,e,0;0,0,e^(-1)) P^(-1) = mat(e^2,e^2 - 3/2 e + 1/2 e^(-1), 3/2 e - 3/2 e^(-1);0, 3/2 e - 1/2 e^(-1), -3/2 e + 3/2 e^(-1);0, 1/2 e - 1/2 e^(-1), -1/2 e + 3/2 e^(-1)) \
  e^(t A) &= P mat(e^(2t),0,0;0,e^t,0;0,0,e^(-t)) P^(-1) = mat(e^(2t),e^(2t) - 3/2 e^t + 1/2 e^(-t), 3/2 e^t - 3/2 e^(-t);0, 3/2 e^t - 1/2 e^(-t), -3/2 e^t + 3/2 e^(-t);0, 1/2 e^t - 1/2 e^(-t), -1/2 e^t + 3/2 e^(-t)) \
  sin A &= P mat(sin 2,0,0;0,sin 1,0;0,0,sin(-1)) P^(-1) = 1 / 6 mat(sin 2, 4 sin 2 - 2 sin 1, 2 sin 2 - 4 sin 1;0,0,6 sin 1;0, 6 sin 1, 0) \
$

== T10

=== (1)

$
  P = mat(,,,1;,,1,;,1,,;1,,,) \
  P^(-1) A P = J = mat(1,1,0,0;0,1,1,0;0,0,1,1;0,0,0,1) \
  ln A = P ln J P^(-1) = mat(0,0,0,0;1,0,0,0;-1/2,1,0,0;1/3,-1/2,1,0) \
$

=== (2)

$
  J_1 = mat(2,1;0,2), J_2 = mat(1,1;0,1) \
  ln J_1 = mat(ln 2, 1/2;0, ln 2), ln J_2 = mat(0, 1;0, 0) \
  ln A = mat(ln 2, 1/2, 0, 0;0, ln 2, 0, 0;0, 0, 0, 1;0, 0, 0, 0) \
$

== T11

TODO

== T12

$(e^(A t))' = A e^(A t)$

于是有 $A = (e^(A t))'|_(t=0) = mat(2 e^t, 0, 2 e^t - 4 e^(2 t);0, e^t, 0; 2 e^(2 t) - e^t,0, 4 e^(2 t)- e^t) stretch(|, size: #300%)_(t=0) = mat(2,0,-2;0,1,0;1,0,3)$


