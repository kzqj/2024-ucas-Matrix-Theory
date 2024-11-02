= 投影矩阵习题

== T1

由定义可得

$(I - P_(L, M)) x = x - P_(L, M) x = x - y = P_(M, L) x$

$arrow.double I - P_(L, M) = P_(M, L)$

== T2

=== (1) <t2_1>

充分性：

已知 $P_1 P_2 = P_2 P_1 = O$

$(P_1 + P_2)^2 = P_1^2 + 2 P_1 P_2 + P_2^2 = P_1 + P_2$

故 $P_1 + P_2$ 为投影矩阵

必要性：

由 $(P_1 + P_2)^2 = P_1 + P_2$ 有

$P_1 P_2 + P_2 P_1 = O$

上式分别左乘和右乘 $P_1$，并利用 $P_1^2 = P_1$ 可得

$P_1 P_2 + P_1 P_2 P_1 = O, P_1 P_2 P_1 + P_2 P_1 = O$

$arrow.double P_1 P_2 = P_2 P_1 = O$

=== (2)

$P_1 - P_2$ 为投影矩阵 $arrow.l.r.double$ $I - (P_1 - P_2)$ 为投影矩阵

又 $I - (P_1 - P_2) = (I - P_1) + P_2$

故 $P_1 - P_2$ 为投影矩阵 $arrow.l.r.double$ $(I - P_1) + P_2$ 为投影矩阵

由 #link(<t2_1>)[(1)] 可得

$(I - P_1) + P_2$ 为投影矩阵
$arrow.l.r.double$
$(I - P_1) P_2 = P_2 (I - P_1) = O arrow.l.r.double P_1 P_2 = P_2 P_1 = P_2$

=== (3)

$(P_1 P_2)^2 = P_1 P_2 P_1 P_2 = P_1 (P_2 P_1) P_2 = P_1 (P_1 P_2) P_2 = P_1^2 P_2^2 = P_1 P_2$

故 $P_1 P_2$ 为投影矩阵

== T3

=== (1)

$P_(L, M) = mat(1, 0, 0;0,0,0;0,0,0) mat(1, 1, 1; 0, 1, 1; 0, 0, 1)^(-1) = mat(1, 0, 0;0,0,0;0,0,0) mat(1, -1, 0; 0, 1, -1; 0, 0, 1) = mat(1, -1, 0;0,0,0;0,0,0)$

$P_(L, M)x = mat(1, -1, 0;0,0,0;0,0,0) vec(2, 3, 1) = vec(-1, 0, 0)$

=== (2)

$P_L = X (X^H X)^(-1) X^H = vec(1, 0, 0) 1 mat(1, 0, 0) = mat(1, 0, 0;0,0,0;0,0,0)$

$P_L x = vec(2, 0, 0)$

= 广义逆矩阵习题

== T1

设 $A_(i j)$ 表示 $A$ 的第 $i$ 行第 $j$ 列元素为 $1$

取 $n times m$ 矩阵 $X$ , $X$ 的第 $j$ 行 第 $j$ 列元素为 $1$，其余元素任意

则有 $A_(i j) X A_(i j) = A_(i j)$, $X$ 为 $A$ 的 ${1}$ 逆矩阵

== T2

对于 (1) 有

$mat(d_1,,;, dots.down,;,,d_n) mat(d_1^+,,;, dots.down,;,,d_n^+) mat(d_1,,;, dots.down,;,,d_n) = mat(d_1,,;, dots.down,;,,d_n)$

对于 (2) 有

$mat(d_1^+,,;, dots.down,;,,d_n^+) mat(d_1,,;, dots.down,;,,d_n) mat(d_1^+,,;, dots.down,;,,d_n^+) = mat(d_1^+,,;, dots.down,;,,d_n^+)$

对于 (3) 有

$(
    mat(d_1,,;, dots.down,;,,d_n) mat(d_1^+,,;, dots.down,;,,d_n^+)
  )^H = mat(d_1,,;, dots.down,;,,d_n) mat(d_1^+,,;, dots.down,;,,d_n^+)$

对于 (4) 有

$(
    mat(d_1^+,,;, dots.down,;,,d_n^+) mat(d_1,,;, dots.down,;,,d_n)
  )^H = mat(d_1^+,,;, dots.down,;,,d_n^+) mat(d_1,,;, dots.down,;,,d_n)$

== T3

对于 (1) 有

$vec(A, 0) mat(A^+, 0) vec(A, 0) = vec(A, 0)$

对于 (2) 有

$vec(A^+, 0) mat(A, 0) vec(A^+, 0) = vec(A^+, 0)$

对于 (3) 有

$(vec(A, 0) mat(A^+, 0))^H = vec(A, 0) mat(A^+, 0)$

对于 (4) 有

$(vec(A^+, 0) mat(A, 0))^H = vec(A^+, 0) mat(A, 0)$

故 $vec(A, 0)^+ = mat(A^+, 0)$


== T4

$A = O$ 时，结论成立

$A eq.not O$ 时，$A$ 的一个奇异值分解为

$A = U_1 mat(Sigma, 0;0,0) V_1^H$

则 $B = U A V = (U U_1) mat(Sigma, 0;0,0) (V^H V_1)^H$ 为 $B$ 的奇异值分解

$B^+ = (V^H V_1) mat(Sigma^(-1), 0;0,0) (U U_1)^H = V^H (V_1 mat(Sigma^(-1), 0;0,0) U_1^H) U^H = V^H A^+ U^H$

== T5

由 $H^2 = H$ 有 $H^3 = H$

由 $H^H = H$ 有 $(H^2)^H = H^2 = H$

故 $H^+ = H$

== T6

必要性：

由 $H^+ = H$

有 $(H^2)^2 = H^4 = H^3 H = H^2, (H^2)^H = (H H)^H = H^2$

故 $H^2$ 为幂等的 Hermite 矩阵

$"rank"(H^2) = "rank"(H)$

充分性：

由 $(H^2)^H = H^2$ 可得 $H in {3, 4}$

由 $"rank"(H^2) = "rank"(H)$ 可得存在矩阵 $P$ 使得 $H = H^2 U$

则 $H^3 = H^2 H = (H^2)^2 U = H^2 U = H$

于是 $H in {1, 2}$

故 $H in {1, 2, 3, 4}$ 即 $H^+ = H$


== T7

由 $A^+ = A^H (A A^H)^+ = (A^H A)^+ A^H$ 有

$A^+ A &= (A^H A)^+ A^H A = (A A^H)^+ A^H A \
  &= (A A^H)^+ A A^H = [(A A^H)^+ A A^H]^H \
  &= A A^H (A A^H)^+ = A A^+$

于是有

$A^n (A^+) A^n = (A A^+ A)^n = A^n$

$(A^+)^n A^n (A^+)^n = (A^+ A A^+)^n = (A^+)^n$

$[A^n (A^+)^n]^H = [(A A^+)^n]^H = [(A A^+)^H]^n = (A A^+)^n = A^n (A^+)^n$

同理可证 $[(A^+)^n A^n]^H = (A^+)^n A^n$

故 $(A^n)^+ = (A^+)^n$

== T8

由题意及 $A^+ = A^H (A A^H)^+ = (A^H A)^+ A^H$ 有

$
  sum_(i = 1)^(r) A_i sum_(i = 1)^(r) A_i^+ = sum_(i = 1)^(r) A_i (
    sum_(i = 1)^(r) A_i^H (A_i A_i^H)^+
  ) = sum_(i = 1)^(r) A_i A_i^H (A_i A_i^H)^+ = sum_(i = 1)^(r) A_i A_i^+
$

$
  sum_(i = 1)^(r) A_i^+ sum_(i = 1)^(r) A_i = (
    sum_(i = 1)^(r) (A_i^H A_i)^+ A_i^H
  ) sum_(i = 1)^(r) A_i = sum_(i = 1)^(r) (A_i^H A_i)^+ A_i^H A_i = sum_(i = 1)^(r) A_i^+ A_i
$

又 $(A A^+)^H = A A^+, (A^+ A)^H = A^+ A$

故 $  (sum_(i = 1)^(r) A_i sum_(i = 1)^(r) A_i^+)^H = sum_(i = 1)^(r) A_i A_i^+ = sum_(i = 1)^(r) A_i sum_(i = 1)^(r) A_i^+ $

$
  (sum_(i = 1)^(r) A_i^+ sum_(i = 1)^(r) A_i)^H = sum_(i = 1)^(r) A_i^+ A_i = sum_(i = 1)^(r) A_i^+ sum_(i = 1)^(r) A_i
$

$
  sum_(i = 1)^(r) A_i sum_(i = 1)^(r) A_i^+ sum_(i = 1)^(r) A_i
  &= sum_(i = 1)^(r) A_i A_i^+ sum_(i = 1)^(r) A_i \
  &= (sum_(i = 1)^(r) A_i (A_i^H A_i)^+ A_i^H) sum_(i = 1)^(r) A_i \
  &= sum_(i = 1)^(r) A_i (A_i^H A_i)^+ A_i^H A_i \
  &= sum_(i = 1)^(r) A_i ((A_i^H A_i)^+ A_i^H) A_i \
  &= sum_(i = 1)^(r) A_i A_i^+ A_i = sum_(i = 1)^(r) A_i
$

同理可证

$
  sum_(i = 1)^(r) A_i^+ sum_(i = 1)^(r) A_i sum_(i = 1)^(r) A_i^+ = sum_(i = 1)^(r) A_i^+
$

综上

$
  (sum_(i = 1)^(r) A_i)^+ = sum_(i = 1)^(r) A_i^+
$