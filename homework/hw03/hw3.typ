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

$T_3 X = (T_2 compose T_1) X = X A_3 arrow.double T_3 X = T_2 (T_1 X) = T_2 (
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

=== (2)

$T (x_1, x_2, x_3) = (y_1, y_2, y_3) = (x_1, x_2, x_3) C$

$T$ 在基 $x_1, x_2, x_3$ 下的矩阵为 $C$

=== (3)

令 $A'$ 为 $T$ 在基 $y_1, y_2, y_3$ 下的矩阵

$T Y = T X C = X C C = Y C$

$T$ 在基 $y_1, y_2, y_3$ 下的过渡矩阵为 $A' = C$

== T6

$det(lambda I - A) = mat(delim: "|", lambda -3, -1, 0; 4, lambda + 1, 0; -4, 8, lambda + 2 ) = (lambda + 2) (
    lambda - 1
  )^2$

计算可得 $A$ 的特征值及对应特征向量为:

$lambda_1 = -2 , xi_1 = k_1 vec(0,0,1), k_1 eq.not 0, k_1 in F$

$lambda_2 = lambda_3 = 1 , xi_2 = k_2 vec(3, -6, 20) , k_2 eq.not 0, k_2 in F$

于是 $T$ 的特征值及对应特征向量为：

$lambda_1 = -2 , eta_1 = X xi_1 = k_1 x_3, k_1 eq.not 0, k_1 in F$

$lambda_2 = lambda_3 = 1 , eta_2 = X xi_2 = k_2 (3 x_1 - 6 x_2 + 20 x_3) , k_2 eq.not 0, k_2 in F$


== T7

方法一:

$det(lambda I - A) = mat(delim: "|", lambda + 1, -1, 0; 4, lambda - 3, 0; -1, 0, lambda - 2 ) = (lambda - 2) (
    lambda - 1
  )^2$

取 $lambda = 2$ , 对应特征向量 $p_1 = vec(0, 0, 1)$

令 $p_2 = vec(1, 0, 0), p_3 =vec(0, 1, 0)$

可得 $P_3 = (p_1, p_2, p_3) = mat(0, 1, 0; 0, 0, 1; 1, 0, 0)$

$A P_3 = mat(0,-1,1;0,-4,3;2,1,0) = P_3 mat(2, 1, 0; 0, -1, 1; 0, -4, 3)$

记 $A_2 = mat(-1, 1; -4, 3), det(lambda I - A_2) = (lambda - 1)^2$

其特征值为 $lambda = 1$ , 对应特征向量为 $q_1 = vec(1, 2)$

令 $q_2 = vec(0, 1)$

可得 $P_2 = (q_1, q_2) = mat(1, 0; 2, 1)$

$A_2 P_2 = P_2 mat(1, 1; 0, 1)$

则

$A = P_3 mat(2, 1, 0; 0, -1, 1; 0, -4, 3) P_3^(-1)
  = tilde(P_3) mat(2, 1, 0; 0, 1, 1 ; 0, 0, 1 ) tilde(P_3)^(-1)$

其中 $tilde(P_3) = P_3 mat(1, ; , P_2) = mat(0, 1, 0; 0, 2, 1; 1, 0, 0)$

方法二:

由特征值可知，矩阵 $#text("Jordan")$ 标准型只可能为 $mat(2,0,0;0,1,0;0,0,1)$ 和 $mat(2,0,0;0,1,1;0,0,1)$

又 $r a n k (I - A) = 2$

故 $A$ 的 $#text("Jordan")$ 标准型为 $mat(2,0,0;0,1,1;0,0,1)$

所以 $A dash.wave mat(2,0,0;0,1,1;0,0,1)$

== T8

$det(lambda I - A) = mat(delim: "|", lambda - 1, 0, -2; 0, lambda + 1, -1; 0, -1, lambda) = lambda^3 - 2 lambda + 1$

则

$2 A^8 - 3 A^5 + A^4 + A^2 - 4 E_3 = (A^3 - 2 A + 1) (2 A^5 + 4 A^3 - 5 A^2 + 9 A - 14 E) + 24 A^2 - 37 A + 10 E$

于是

$2 A^8 - 3 A^5 + A^4 + A^2 - 4 E_3 = 24 A^2 - 37 A + 10 E = mat(-3, 48, -26; 0, 95, -61; 0, -61, 34)$

== T9

$det(lambda I - A) = mat(delim: "|", lambda - 7, -4, 4; -4, lambda + 8, 1; 4, 1, lambda + 8) = (lambda - 9) (
    lambda + 9
  )^2$

又$(A - 9 I) (A + 9 I) = O$， 则最小多项式为 $(lambda - 9) (lambda + 9)$

== T10

因为$|lambda I - A| = |(lambda I - A)^T| = |lambda I - A^T|$

所以 $A$ 和 $A^T$ 有相同的特征多项式和最小多项式

== T11

=== (1)

$det(lambda I - A) = lambda^3 - lambda^2 + lambda - 1 = (lambda - 1) (lambda^2 + 1)$

所以 $A$ 的特征值为 $1, i, -i$

则 $text("Jordan")$ 标准型为 $mat(1,,;,i,;,,-i)$

=== (2)

$det(lambda I - A) = (lambda - 1)^4$

所以 $A$ 的特征值为 $1$

由 $(A - I) X = 0$ 可得对应特征向量 $xi = (0, 0, -1, 1)^T$

则 $lambda = 1$ 的几何重数为 $1$, $J(1)$ 只包含一个 $text("Jordan")$ 块

故 $A$ 的 $text("Jordan")$ 标准型为 $mat(1, 1, 0, 0; 0, 1, 1, 0; 0, 0, 1, 1; 0, 0, 0, 1)$

== T12

设 $A$ 的 $text("Jordan")$ 标准型为
$J = mat(J_1 (lambda_1),,; , dots.down, ,; ,, J_s (lambda_s)),
  J_i (
    lambda_i
  ) = mat(lambda_i, 1, dots, 0; 0, lambda_i, dots.down, 0; dots.v, dots.v, dots.down, 1; 0, 0, dots, lambda_i)$

于是存在可逆矩阵 $P$ 使得 $A = P J P^(-1)$

则 $J^m = P^(-1) A^m P = I
arrow.double [J_i (lambda_i)]^m = I_p arrow.double p = 1$

则 $J_i (lambda_i)$ 中的 $text("Jordan")$ 块为1阶, 即 $J_i (lambda_i) = lambda_i$

故 $A$ 相似于对角矩阵