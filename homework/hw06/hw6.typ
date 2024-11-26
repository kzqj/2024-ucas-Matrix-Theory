= 向量与矩阵范数习题

== T1

$
  norm(e)_1 = n \
  norm(e)_2 = sqrt(n) \
  norm(e)_(infinity) = 1
$

== T2

$norm(x)_1 lt.eq 1$

#figure(
  image("./hw6_1.png", height: 20%),
)

$norm(x)_2 lt.eq 2$

#figure(
  image("./hw6_2.png", height: 20%),
)

$norm(x)_(infinity) lt.eq 1$

#figure(
  image("./hw6_3.png", height: 20%),
)

== T3

非负性:

当 $x = 0$ 时， $norm(x)_s = 0$

当 $x eq.not 0$ 时， $norm(x)_s = norm(S x) gt 0$

齐次性:

$forall a in C, norm(k x)_s = norm(S k x) = norm(k) norm(S x)$

三角不等式:

$norm(x + y)_s = norm(S (x + y)) = norm(S x) + norm(S y)$

综上， $norm(x)_s$ 是一个向量范数

== T4

$
  norm(A)_1 = 2 \
  norm(A)_(infinity) = 4 \
  A^H A = mat(1, -2 ,-1;-2,4,2;-1,2,1)\
  det(lambda I - A^H A) = lambda^2 (lambda - 6) \
  norm(A)_2 = 6 \
  norm(B)_1 = 4 \
  norm(B)_2 = 6 \
  B^H B = mat(2, 2j, 4j;-2j, 4, 6;-4j, 6, 10) \
  det(lambda I - B^H B) = lambda (lambda - (8 + 2 sqrt(13))) (lambda - (8 - 2 sqrt(13))) \
  norm(B)_2 = 8 + 2 sqrt(13)
$

== T5

证明 $abs(lambda) lt.eq root(m, norm(A^m))$

由题意

$A x = lambda x arrow.r.double A^m x = lambda^m x$

取相容范数，于是有

$abs(lambda^m) norm(x) = norm(A^m x) lt.eq norm(A^m) norm(x) arrow.r.double abs(lambda)^m lt.eq norm(A^m)$

即 $abs(lambda) lt.eq root(m, norm(A^m))$

== T6

同上题

== T7

$
  norm(A)_s = limits("max")_(x eq.not 0) (norm(A x)_s / norm(x)_s) = limits("max")_(x eq.not 0) (
    norm(S A x)_2 / norm(S x)_2
  ) = limits("max")_(y eq.not 0) (norm(S A S^(-1) y)_2 / norm(y)_2) = norm(S A S^(-1))_2
$

== T8

易知 $norm(A)$ 满足非负性，齐次性

三角不等式:

$norm(A + B) = norm(S^(-1) (A + B) S)_M = norm(S^(-1) A S + S^(-1) B S)_M lt.eq norm(S^(-1) A S)_M + norm(S^(-1) B S)_M = norm(A) + norm(B)$

相容性:

$norm(A B) = norm(S^(-1) A B S)_M = norm(S^(-1) A S S^(-1) B S)_M lt.eq norm(S^(-1) A S)_M norm(S^(-1) B S)_M = norm(A) norm(B)$

综上, $norm(A)$ 是一个矩阵范数

== T9

由题意有

$1 gt norm(A^(-1)) norm(B) gt.eq norm(A^(-1) B)$

由定理2.8, $A + B$ 可逆

== T10

$A^(-1) - (A + delta A)^(-1) = 1 / 5 mat(3, -1; -1, 2) - 5 / 21 mat(3, -1.5;-1.2, 2) = 1 / 105 mat(-12, 16.5;9,-74)$

$
  norm(A^(-1) - (A + delta A)^(-1))_infinity / norm(A^(-1))_infinity = 1 / 105 dot 5 dot 83 / 4 = 83 / 84
$