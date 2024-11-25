= 第四章习题

== T1

证：

$|alpha + t beta|^2
  = angle.l alpha + t beta, alpha + t beta angle.r
  = |alpha|^2 + 2t angle.l alpha, beta angle.r + t^2 |beta|^2$

则 $
|alpha + t beta|^2 gt.eq  |alpha|^2
arrow.l.r.double
2t angle.l alpha, beta angle.r + t^2 |beta|^2 gt.eq 0
$

不等式若要对任意t成立，则 $angle.l alpha, beta angle.r=0$ ,即 $alpha, beta$ 正交。

== T2
=== (1)

设 $x_1, x_2 in W$ ,则
$angle.l x_1 + x_2, alpha angle.r = angle.l x_1, alpha angle.r + angle.l x_2, alpha angle.r = 0$

同理可证 $angle.l x_1 + x_2, beta angle.r = angle.l x_1 + x_2, gamma angle.r = 0$

于是 $x_1 + x_2 in W$

$forall k in R, angle.l k x_1, alpha angle.r = k angle.l x_1, alpha angle.r = 0$

同理可证，$angle.l k x_1, beta angle.r = angle.l k x_1, gamma angle.r = 0$

于是 $k x_1 in W$

综上，$W$ 是 $V$ 的子空间

=== (2)

设 $alpha, beta, gamma$ 所构成的空间为 $V_1$ ，由 $W$ 定义可知，$W$ 是$V_1$的正交补

则有 $V = W plus.circle V_1$, 于是有 $dim V = dim W + dim V_1 arrow.r.double dim W = n - 3$

== T3

$|A + B| = |A| |B^T + A^T| |B| = |A| |B| |A + B| = - |A|^2 |A + B|$

$arrow.r.double (1 + |A|^2) |A + B| = 0 arrow.r.double |A + B| = 0$

所以 $A + B$ 不可逆

== T4 <T4>

要证两个子空间同构，只需证存在一个双射的线性映射 $T$

设 $alpha_1, alpha_2, ... , alpha_m$ 生成的子空间为 $V_1$ , $beta_1, beta_2, ... , beta_m$ 生成的子空间为 $V_2$

设映射 $T$ 使得 $T (alpha_i) = beta_i$

对于$forall x in V_1, x = k_1 alpha_1 +k_2 alpha_2 + ... + k_m alpha_m$

则 $T(x) = k_1 beta_1 + k_2 beta_2 + ... + k_m beta_m $

所以 $T$ 是线性的

下证 $T$ 是单射：

设 $x = k_1 alpha_1 +k_2 alpha_2 + ... + k_m alpha_m$, 且 $T (x) = 0$

则 $k_1 beta_1 + k_2 beta_2 + ... + k_m beta_m = 0$

对于任意 $j = 1, dots, m$, 两边同时与 $beta_j$ 做内积，有

$
  (k_1 beta_1 + k_2 beta_2 + ... + k_m beta_m, beta_j) = 0 \
  k_1 (beta_1, beta_j) + k_2 (beta_2, beta_j) + ... + k_m (beta_m, beta_j) = 0
$

又 $(alpha_i, alpha_j) = (beta_i, beta_j)$, 所以

$
  k_1 (alpha_1, alpha_j) + k_2 (alpha_2, alpha_j) + ... + k_m (alpha_m, alpha_j) = 0 \
  (k_1 alpha_1 + k_2 alpha_2 + ... + k_m alpha_m, alpha_j) = 0 \
  (x, alpha_j) = 0
$

可得 $x$ 与 $alpha_j$ 正交

$x$ 是 $alpha_1, alpha_2, ... , alpha_m$ 的线性组合，且与 $alpha_j$ 正交

故 $x = 0$

$T (x) = 0$, 当且仅当 $x = 0$, 故 $T$ 是单射

(这里用到定理: $T$ 是单射 $arrow.l.r.double$ $N (T) = {0}$)

下证 $T$ 是满射：

由于 $T (alpha_i) = beta_i$， $beta_1, beta_2, ... , beta_m$ 均在 $T$ 的像空间

综上，$T$ 是线性的，双射的，故 $T$ 是一个同构映射，所以两个子空间同构

== T5

必要性:

正交变换保持向量内积， 所以 $forall x, y in V$

$(sigma(x), sigma(y)) = (x, y)$

所以 $(alpha_i, alpha_j) = (sigma(alpha_i), sigma(alpha_j)) = (beta_i, beta_j)$

充分性:

设 $alpha_1, alpha_2, ... , alpha_m$ 生成的子空间为 $V_1$ , $beta_1, beta_2, ... , beta_m$ 生成的子空间为 $V_2$

由于 $(alpha_i, alpha_j) = (beta_i, beta_j)$, 所以 $alpha_1, alpha_2, ... , alpha_m$ 和 $beta_1, beta_2, ... , beta_m$ 是等距等角的基(???)

因此，存在正交变换 $sigma$ 使得 $sigma(alpha_i) = beta_i$

$$

== T6

由题意有

$(sigma(epsilon_1), sigma(epsilon_2), ..., sigma(epsilon_n)) = (epsilon_1, epsilon_2, ..., epsilon_n) A,
  (tau(epsilon_1), tau(epsilon_2), ..., tau(epsilon_n)) = (epsilon_1, epsilon_2, ..., epsilon_n) B$

$forall alpha in V$

$ alpha = (epsilon_1, epsilon_2, ..., epsilon_n) vec(x_1, x_2, ..., x_n) = (epsilon_1, epsilon_2, ..., epsilon_n) x $

则 $sigma(alpha) = (sigma(epsilon_1), sigma(epsilon_2), ..., sigma(epsilon_n)) vec(x_1, x_2, dots.v, x_n) = (epsilon_1, epsilon_2, ..., epsilon_n) A x$

同理，$tau(alpha) = (epsilon_1, epsilon_2, ..., epsilon_n) B x$

由 $|sigma(alpha)| = |tau(alpha)|
arrow.l.r.double
angle.l sigma(alpha), sigma(alpha) angle.r  = angle.l tau(alpha), tau(alpha) angle.r$ 有

$x^T A^T vec(epsilon_1, epsilon_2, dots.v, epsilon_n) (
    epsilon_1, epsilon_2, ..., epsilon_n
  ) A x = x^T A^T A x = x^T B^T B x arrow.r.double A^T A = B^T B$

TODO:

== T7
=== (1)

$forall x_1, x_2 in R^n , k_1,k_2 in R$

$
  sigma(k_1 x_1 + k_2 x_2)
  &= k_1 x_1 + k_2 x_2 - k angle.l k_1 x_1 + k_2 x_2, epsilon angle.r epsilon \
  &= k_1 x_1 + k_2 x_2 - k angle.l k_1 x_1, epsilon angle.r epsilon - k angle.l k_2 x_2, epsilon angle.r epsilon \
  &= k_1 x_1 - k angle.l k_1 x_1, epsilon angle.r epsilon + k_2 x_2 - k angle.l k_2 x_2, epsilon angle.r epsilon \
  &= k_1 sigma(x_1) + k_2 sigma(x_2)
$

故 $sigma$ 是线性变换

=== (2)

$forall x, y in R^n$

$
  angle.l sigma(x), sigma(y) angle.r
  &= angle.l x - k angle.l x, epsilon angle.r epsilon , y - k angle.l y, epsilon angle.r epsilon angle.r \
  &= angle.l x, y angle.r - k angle.l x, epsilon angle.r angle.l epsilon, y angle.r - k angle.l y, epsilon angle.r angle.l epsilon, x angle.r + k^2 angle.l x, epsilon angle.r angle.l y, epsilon angle.r \
  &= angle.l x, y angle.r - 2 k angle.l x, epsilon angle.r angle.l y, epsilon angle.r + k^2 angle.l x, epsilon angle.r angle.l y, epsilon angle.r \
$

要证 $angle.l sigma(x), sigma(y) angle.r = angle.l x, y angle.r$

只需证 $2 k angle.l x, epsilon angle.r angle.l y, epsilon angle.r  = k^2 angle.l x, epsilon angle.r angle.l y, epsilon angle.r$ , 即 $2k = k^2$

解得 $k = 2$ 或 $k = 0$ ，此时 $sigma$ 是正交变换

== T8

要证 $sigma$ 为恒等变换，只需证 $A = I$

由 $sigma$ 为对称变换，可得 $A$ 为对称矩阵

由 $A$ 为正定矩阵，可得$A$ 的特征值均为正实数

由 $A$ 为正交矩阵，可得$A A^T = A^2 = I$, $A$ 的特征值 $lambda$ 满足 $lambda^2 = 1$

所以, $A$ 的特征值均为1，即 $A = I$
