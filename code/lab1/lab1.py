import numpy as np


def qr_decomp_givens(A: np.ndarray):
    print(f"输入的矩阵为: \n{A}")

    row = A.shape[0]
    col = A.shape[1]
    if row != col or np.linalg.det(A) == 0:
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

            norm_factor = np.sqrt(x1**2 + x2**2)

            # 数值处理
            if norm_factor < 1e-10:
                continue

            c = x1 / norm_factor
            s = x2 / norm_factor

            cur_givens_matrix = np.identity(row)
            cur_givens_matrix[i, i] = c
            cur_givens_matrix[i, j] = s
            cur_givens_matrix[j, i] = -s
            cur_givens_matrix[j, j] = c

            matrix_q = np.matmul(matrix_q, cur_givens_matrix)
            matrix_r = np.matmul(cur_givens_matrix, matrix_r)

    matrix_q[np.abs(matrix_q) < 1e-15] = 0
    matrix_r[np.abs(matrix_r) < 1e-15] = 0

    print("===QR分解结果为===")
    print(f"Q矩阵为: \n{matrix_q}")
    print(f"R矩阵为: \n{matrix_r}")

    return matrix_q, matrix_r


def main():
    a = np.array([[2, -1, -2], [-4, 6, 3], [-4, -2, 8]])
    qr_decomp_givens(a)


if __name__ == "__main__":
    main()
