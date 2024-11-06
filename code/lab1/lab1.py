import numpy as np


def qr_decomp_givens(A: np.ndarray):
    print(f"输入的矩阵为: \n{A}")

    row = A.shape[0]
    col = A.shape[1]
    if row != col or np.linalg.matrix_rank(A) < row:
        out_put = (
            f"A 必须为非奇异矩阵: {'行数与列数不相等' if row != col else "行列式为零"}"
        )
        raise ValueError(out_put)

    matrix_q = np.identity(row).astype(np.float64)
    matrix_r = A.copy().astype(np.float64)

    for i in range(col):
        for j in range(row - 1, i, -1):
            x1 = matrix_r[i, i]
            x2 = matrix_r[j, i]

            norm_factor = np.sqrt(x1**2 + x2**2 + 1e-10)

            c = x1 / norm_factor
            s = x2 / norm_factor

            cur_givens_matrix = np.identity(row)
            cur_givens_matrix[i, i] = c
            cur_givens_matrix[i, j] = s
            cur_givens_matrix[j, i] = -s
            cur_givens_matrix[j, j] = c

            matrix_q = matrix_q @ cur_givens_matrix.T
            matrix_r = cur_givens_matrix @ matrix_r

    matrix_q[np.abs(matrix_q) < 1e-15] = 0
    matrix_r[np.abs(matrix_r) < 1e-15] = 0

    print("===基于givens的QR分解结果为===")
    np.set_printoptions(precision=4)
    print(f"Q矩阵为: \n{matrix_q}")
    print(f"R矩阵为: \n{matrix_r}")
    print(f"Q矩阵与R矩阵相乘的结果为: \n{matrix_q @ matrix_r}")

    return matrix_q, matrix_r


def qr_decomp_householder(A: np.ndarray):
    print(f"输入的矩阵为: \n{A}")

    row = A.shape[0]
    col = A.shape[1]
    if row != col or np.linalg.matrix_rank(A) < row:
        out_put = (
            f"A 必须为非奇异矩阵: {'行数与列数不相等' if row != col else "行列式为零"}"
        )
        raise ValueError(out_put)

    matrix_q = np.identity(row).astype(np.float64)
    matrix_r = A.copy().astype(np.float64)

    for i in range(col - 1):
        cur_col = matrix_r[i:, i]
        e = np.zeros_like(cur_col)
        e[0] = 1

        cur_norm = np.linalg.norm(cur_col)
        u = cur_col - cur_norm * e

        # I - 2 u u^T / |u|^2
        cur_householder_matrix = np.identity(row)
        cur_householder_matrix[i:, i:] -= (2 / (u.T @ u)) * (
            u[:, np.newaxis] @ u[:, np.newaxis].T
        )

        matrix_q = matrix_q @ cur_householder_matrix
        matrix_r = cur_householder_matrix @ matrix_r

    matrix_q[np.abs(matrix_q) < 1e-15] = 0
    matrix_r[np.abs(matrix_r) < 1e-15] = 0

    print("===基于householder的QR分解结果为===")
    np.set_printoptions(precision=4)
    print(f"Q矩阵为: \n{matrix_q}")
    print(f"R矩阵为: \n{matrix_r}")
    print(f"Q矩阵与R矩阵相乘的结果为: \n{matrix_q @ matrix_r}")

    return matrix_q, matrix_r


def main():
    a = np.array([[2, -1, -2], [-4, 6, 3], [-4, -2, 8]])
    qr_decomp_householder(a)
    qr_decomp_givens(a)


if __name__ == "__main__":
    main()
