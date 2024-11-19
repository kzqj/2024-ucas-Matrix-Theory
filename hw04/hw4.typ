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

$norm(A^(-1))_2 = sqrt(lambda_(max)[(A^(-1))^T A^(-1)]) = sqrt(lambda_(max) [(A A^T)^(-1)]) = sqrt(1 / (lambda_(min)(A^T A))) = 1 / min(sigma) = sigma_2$


== T5

$A^H A V = V V^H A^H U U^H A V = V (U^H A V)^H U^H A V = V mat(Sigma, 0;0,0)$

故 $V$ 的列向量是 $A^H A$ 的特征向量

$A A^H U = U U^H A V V^H A^H U = U U^H A V (U^H A V)^H = U mat(Sigma, 0;0,0)$

故 $U$ 的列向量是 $A A^H$ 的特征向量

== T6

由定义可知

$ norm(A)^2_F = tr(A^T A) = sum_(i=1)^r sigma_i^2 $

== T7

$A^T A = mat(2,1;1,2), det(lambda I - A^T A) = (lambda - 1) (lambda - 3)$

$lambda = 3$ 时，取单位化后的特征向量 $xi_1 = (1/sqrt(2), 1/sqrt(2))^T$

$lambda = 1$ 时，取单位化后的特征向量 $xi_2 = (1/sqrt(2), -1/sqrt(2))^T$

则 $V = (xi_1, xi_2) = mat(1/sqrt(2), 1/sqrt(2); 1/sqrt(2), -1/sqrt(2)), Sigma = mat(sqrt(3),;,1)$

$U_1 = A V Sigma^(-1) = mat(1/sqrt(6), 1/sqrt(2); 1/sqrt(6), -1/sqrt(2); sqrt(2)/sqrt(3),0)$

取 $U_2 = (1/sqrt(3), 1/sqrt(3), -1/sqrt(3))^T$ ，则 $U = (U_1, U_2)$

$A = U mat(Sigma; O) V^T = mat(1/sqrt(6), 1/sqrt(2), 1/sqrt(3); 1/sqrt(6), -1/sqrt(2), 1/sqrt(3); sqrt(2)/sqrt(3), 0, -1/sqrt(3)) mat(sqrt(3), 0;0, 1; 0,0) mat(1/sqrt(2), 1/sqrt(2); 1/sqrt(2), -1/sqrt(2))$

== T8

$B = mat(A;A) in C^(2m times n)_r, B^H B = 2 A^H A$

又 $V^H A^H A V = mat(Sigma^2, O; O, O) arrow.double 2 V^H A^H A V = V^H B^H B V = mat(2 Sigma^2, O; O, O)$

记 $V = (V_1, V_2)$

则有

$B V_2 = O, V_2 in C^(n times (n - r))$

$V_1^H B^H B V_1 = (sqrt(2) Sigma)^2$, 其中 $V_1 in C^(n times r)$

$arrow.double sqrt(2) / 2 Sigma^(-1) V_1^H B^H B V_1 sqrt(2) / 2 Sigma^(-1) = I_r$

记 $tilde(U_1) = sqrt(2)/2 B V_1 Sigma^(-1) in C^(2m times r)$

则有 $tilde(U_1)^H tilde(U_1) = I_r, B V_1 = sqrt(2) tilde(U_1) Sigma$

取 $tilde(U_2) in C^(2m times (2m - r)), tilde(U) = (tilde(U_1), tilde(U_2))$ 为 $2m$ 阶酉矩阵

$tilde(U_2)^H tilde(U_1) = O, tilde(U_2)^H tilde(U_2) = I_(2m - r)$

于是有

$tilde(U)^H B V = mat(tilde(U_1)^H; tilde(U_2)^H) B (
    V_1, V_2
  ) = mat(tilde(U_1)^H B V_1, tilde(U_1)^H B V_2; tilde(U_2)^H B V_1, tilde(U_2)^H B V_2) = mat(tilde(U_1)^H (sqrt(2) tilde(U_1) Sigma), O; tilde(U_2)^H (sqrt(2) tilde(U_1) Sigma), O) = mat(sqrt(2) Sigma, O; O, O)$

$B = tilde(U) mat(sqrt(2) Sigma, O; O, O) V^H$

== T9

=== (1)

$det(lambda I - A) = (lambda - 4) (lambda - 2)$

$lambda = 4$ 时，取单位化后的特征向量 $xi_1 = (1/sqrt(2), 0, 1/sqrt(2))^T$

$lambda = 2$ 时，取单位化后的特征向量 $xi_2 = (1/sqrt(2), 0, -1/sqrt(2))^T, xi_3 = (0, 1, 0)^T$

$E_1 = xi_1 xi_1^T = mat(1/2, 0, 1/2;0,0,0;1/2, 0, 1/2)$

$E_2 = xi_2 xi_2^T + xi_3 xi_3^T = mat(1/2, 0, -1/2;0,0,0; -1/2, 0, 1/2) + mat(0,0,0;0,1,0;0,0,0) = mat(1/2, 0, -1/2;0,1,0; -1/2, 0, 1/2)$

$A = 4 E_1 + 2 E_2$

=== (2)

$det(lambda I - A) =  lambda^3 - 19 lambda^2 + 112 lambda - 200$

