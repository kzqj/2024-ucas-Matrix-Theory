= 矩阵分解习题

== T1

$A = (x_1, x_2, x_3) \
  u_1 = x_1 = (0, 1, 1)^T, y_1 = u_1 / norm(u_1)_2 = 1 / sqrt(2) (0, 1, 1)^T \
  u_2 = x_2 - (x_2, y_1) y_1 = (1, 1, 0)^T - 1 / 2 (0, 1, 1)^T = 1 / 2 (
    2, 1, -1
  )^T, y_2 = u_2 / norm(u_2)_2 = 1 / sqrt(6) (2, 1, -1)^T \
  u_3 = x_3 - (x_3, y_1) y_1 - (x_3, y_2) y_2 = (1, 0, 1)^T - 1 / 2 (0, 1, 1)^T - 1 / 6 (2, 1, -1)^T = 2 / 3 (
    1, -1, 1
  )^T \
  y_3 = u_3 / norm(u_3)_2 = 1 / sqrt(3) (1, -1, 1)^T \
  x_1 = sqrt(2) y_1 \
  x_2 = 1 / sqrt(2) y_1 + sqrt(6) / 2 y_2 \
  x_3 = 1 / sqrt(2) y_1 + 1 / sqrt(6) y_2 + 2 / sqrt(3) y_3 \
  A = mat(0, 2/sqrt(6), 1/sqrt(3); 1/sqrt(2), 1/sqrt(6), -1/sqrt(3); 1/sqrt(2), -1/sqrt(6), 1/sqrt(3)) mat(sqrt(2), 1/sqrt(2), 1/sqrt(2); 0, sqrt(6)/2, 1/sqrt(6); 0, 0, 2/sqrt(3)) = Q R$


== T2

取 $A$ 第一列 $x_1 = (2, 0, 2)^T$, 则 $c = sqrt(2)/2, s = sqrt(2)/2$

$T_(13) = mat(sqrt(2)/2, 0, sqrt(2)/2; 0, 1, 0; -sqrt(2)/2, 0, sqrt(2)/2), T_(13) A = mat(2sqrt(2), (3sqrt(2))/2, (3sqrt(2))/2;0, 2, 2; 0, -sqrt(2)/2, sqrt(2)/2)$

取 $T_(13) A$ 第二列后两行 $x_2 = (2, -sqrt(2)/2)^T$, 则 $c = (2sqrt(2)) / 3, s = -1/3$

$T_(23) = mat(1, 0, 0; 0, (2sqrt(2)) / 3, -1/3;0, 1/3, (2sqrt(2)) / 3),
  T_(23) T_(13) A = mat(2sqrt(2), (3sqrt(2)) / 2, (3sqrt(2)) / 2;0, (3sqrt(2)) / 2, (7sqrt(2))/6;0, 0, 4/3) = R$

$Q = T_(13)^(-1) T_(23)^(-1) = T_(13)^T T_(23)^T = mat(sqrt(2)/2, sqrt(2)/6, -2/3; 0, (2sqrt(2))/3, 1/3;sqrt(2)/2, -sqrt(2)/6, 2/3)$

$A = Q R$


== T3

取 $A$ 第一列 $x_1 = (0, 1, 0)^T$,
则 $u_1 = (x_1 - norm(x_1)_2 e_1) / norm(x_1 - norm(x_1)_2 e_1)_2 = 1/sqrt(2) (-1, 1, 0)^T$

$H_1 = I - 2 u_1 u_1^T = mat(0,1,0;1,0,0;0,0,1)$

$H_1 A = mat(1, 1, 1; 0, 4, 1; 0, 3, 2)$

取 $H_1 A$ 第二列后两行 $x_2 = (4, 3)^T$,
则 $u_2 = (x_2 - norm(x_2)_2 e_1) / norm(x_2 - norm(x_2)_2 e_1)_2 = 1/sqrt(10) (-1, 3)^T$

$tilde(H_2) = I - 2 u_2 u_2^T = mat(4/5, 3/5; 3/5, -4/5), H_2 = mat(1,0,0;0,4/5, 3/5;0,3/5, -4/5)$

$H_2 H_1 A = mat(1, 1, 1; 0, 5, 2; 0, 0, -1) = R$

$Q = H_1^(-1) H_2^(-1) = H_1 H_2 = mat(0, 4/5, 3/5; 1, 0, 0; 0, 3/5, -4/5)$

$A = Q R$

== T4

=== (1)

由定义可知

$norm(A)_2 = sqrt(lambda_(max)(A^T A)) = max(sigma) = sigma_1$

=== (2)

$norm(A^-1)_2 = sqrt(lambda_(max)[(A^(-1))^T A^(-1)]) = sqrt(lambda_(max) [(A A^T)^(-1)]) = sqrt(1 / (lambda_(min)(A^T A))) = 1 / min(sigma) = sigma_2$


== T5

$A^H A V = V V^H A^H U U^H A V = V (U^H A V) U^H A V = V mat(Sigma, 0;0,0)$

故 $V$ 的列向量是 $A^H A$ 的特征向量

$A A^H U = U U^H A V V^H A^H U = U U^H A V (U^H A V)^H = U mat(Sigma, 0;0,0)$

故 $U$ 的列向量是 $A A^H$ 的特征向量

== T6

由定义可知

$ norm(A)^2_F = tr(A^T A) = sum_(i=1)^r sigma_i^2 $