= 第三章习题

== T1

由题意有

$T (e_1, e_2, e_3) = mat(2, -1, 0; 0, 1, 1; 1, 0, 0) = (
    e_1, e_2, e_3
  ) A arrow.r.double A = mat(2, -1, 0; 0, 1, 1; 1, 0, 0)$

== T2

$D(x_1) = a e^(a t) cos b t - b e^(a t) sin b t = a x_1 - b x_2$

$D(x_2) = a e^(a t) sin b t + b e^(a t) cos b t = a x_2 + b x_1$

$D(x_3) = e^(a t) cos b t + t D(x_1) = x_1 + a x_3 - b x_4$

$D(x_4) = e^(a t) sin b t + t D(x_2) = x_2 + a x_4 + b x_3$

$D(x_5) = t e^(a t) cos b t + 1 / 2 t^2 D(x_1) = x_3 + a x_5 - b x_6$

$D(x_6) = t e^(a t) sin b t + 1 / 2 t^2 D(x_2) = x_4 + a x_6 + b x_5$

则有

$A = mat(
  a, b, 1, 0, 0 , 0;
  -b ,a ,0 ,1, 0, 0;
  0, 0, a, b, 1, 0;
  0, 0 , -b, a, 0, 1;
  0, 0 ,0 ,0 ,a ,b;
  0, 0 ,0 ,0 ,-b, a;)$


== T3

=== (1)

$T_1 E_11 = mat(a, b; c, d) E_11 = mat(a, 0; c, 0;) = a E_11 + c E_21$

$T_1 E_12 = mat(a, b; c, d) E_12 = mat(0, a; 0, c;) = a E_12 + c E_22$

$T_1 E_13 = mat(a, b; c, d) E_13 = mat(b, 0; d, 0;) = b E_11 + d E_21$

$T_1 E_14 = mat(a, b; c, d) E_14 = mat(0, b; 0, d;) = b E_12 + d E_22$

则有

$A_1 = mat(a, 0, b, 0; 0, a, 0, b; c, 0, d, 0; 0, c, 0, d)$

=== (2)

$T_2 E_11 = E_11 mat(a, b; c, d) = mat(a, b; 0, 0;) = a E_11 + b E_12$

$T_2 E_12 = E_12 mat(a, b; c, d) = mat(c, d; 0, 0;) = c E_11 + d E_12$

$T_2 E_21 = E_21 mat(a, b; c, d) = mat(0, 0; a, b;) = a E_21 + b E_22$

$T_2 E_22 = E_22 mat(a, b; c, d) = mat(0, 0; c, d;) = c E_21 + d E_22$

则有

$A_2 = mat(a, c, 0, 0; b, d, 0, 0; 0, 0, a, c; 0, 0, b, d;)$

=== (3)

由$T_1 X = X A_1, T_2 X = X A_2$, 有

$T_3 X = (T_1 compose T_2) X = X A_3 arrow.double T_3 X = T_2 (T_1 X) = T_2 (
    X A_1
  ) = X A_1 A_2 arrow.double A_3 = A_1 A_2$

则

$A_3 = mat(
  a^2, a c, a b, b c;
  a b, a d, b^2, b d;
  a c, c^2, a d, c d;
  b c, c d, b d, d^2;
)$

== T4

设有一组数$a_i, i = 1, dots , k$，使得
$a_1 x + a_2 T x + dots + a_k T^(k-1) x = 0$

上式作用一次$T$, 有
$a_1 T x + a_2 T^2 x + dots + a_(k-1) T^(k-1) x = 0$

总共作用 $k - 1$ 次 $T$ 后，有 $a_1 T^(k-1) x = 0$

又因为 $T^(k-1) x eq.not 0$，所以 $a_1 = 0$

同理可证 $a_2 = a_3 = dots = a_k = 0$

所以 $x, T x, dots, T^(k-1) x$ 线性无关

== T5

=== (1)

记过渡矩阵为 $C$

则有
$(y_1, y_2, y_3) = (x_1, x_2, x_3) C$

$arrow.double C = (x_1, x_2, x_3)^(-1) (y_1, y_2, y_3) =
  mat(1/2, -1, 1/2; 1/2, 0, -1/2; -1/2, 1, 1/2)
  mat(1, 2, 2; 2, 2, -1; -1, -1, -1)
  = 1 / 2 mat(-4, -3, 3; 2, 3, 3; 2, -1, -5)$
