import numpy as np
from sympy import Matrix as sy_matrix


def matrix_check(A: np.ndarray):
    if A.shape[0] != A.shape[1] or np.linalg.matrix_rank(A) < A.shape[0]:
        out_put = f"A 必须为非奇异矩阵: {'行数与列数不相等' if A.shape[0] != A.shape[1] else "行列式为零"}"
        raise ValueError(out_put)


def qr_decomp_givens(A: np.ndarray):
    print(f"输入的矩阵为: \n{A}")
    matrix_check(A)
    row = A.shape[0]
    col = A.shape[1]

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
    matrix_check(A)
    row = A.shape[0]
    col = A.shape[1]

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


def full_rank_decompose(A: np.ndarray):
    print(f"输入的矩阵为: \n{A}")

    A_sympy = sy_matrix(A.tolist())
    # 行最简矩阵
    A_rref = np.array(A_sympy.rref()[0].tolist(), dtype=np.float64)
    A_rank = np.linalg.matrix_rank(A)

    tgt_col = []
    for i in range(A_rref.shape[0]):
        for j in range(A_rref.shape[1]):
            if A_rref[i][j] == 1:
                tgt_col.append(j)
                break
    matrix_f = A[:, tgt_col]
    matrix_g = A_rref[:A_rank]

    print("===满秩分解结果为===")
    print(f"F矩阵为: \n{matrix_f}")
    print(f"G矩阵为: \n{matrix_g}")
    print(f"F矩阵与G矩阵相乘的结果为: \n{matrix_f @ matrix_g}")

    return matrix_f, matrix_g


# 题目中的 P置换 就是把偶数索引放前面，奇数索引放后面
# 矩阵形式的置换就是行列分别进行置换
def rearrange_matrix(
    A: np.ndarray, row_transform_nums: int = 1, col_transform_nums: int = 1
):
    ret = A.copy()
    for _ in range(row_transform_nums):
        ret = np.concatenate([ret[::2], ret[1::2]], axis=0)
    for _ in range(col_transform_nums):
        ret = np.concatenate([ret[:, ::2], ret[:, 1::2]], axis=1)
    return ret


def get_delta(A: np.ndarray, t: int):
    svd_vals = np.linalg.svdvals(A)
    if t > len(svd_vals):
        raise ValueError("计算delta时 t > len(svd_vals)")
    return svd_vals[:t].sum() / svd_vals.sum()


def get_ratio(A: np.ndarray):
    return np.log(A.max() / (A.min() + 1e-10))


def transformX2Y(
    X: np.ndarray,
    t: int,
    row_transform_nums: int = 1,
    col_transform_nums: int = 1,
):
    Y = rearrange_matrix(X, row_transform_nums, col_transform_nums)
    print(
        f"置换后(行 {row_transform_nums} 次 列 {col_transform_nums} 次)的矩阵为: \n{Y}"
    )
    print(f"置换后Y的delta: {get_delta(Y, t)}")
    print(f"置换后Y的最大元素和最小元素的比值: {get_ratio(Y)}")


def question4(
    X: np.ndarray,
    t: int,
    row_transform_list: list[int] = [1],
    col_transform_list: list[int] = [1],
):
    print(f"输入的矩阵为: \n{X}")
    print(f"置换前X的delta: {get_delta(X, t)}")
    print(f"置换前X的最大元素和最小元素的比值: {get_ratio(X)}")
    for row_transform_nums in row_transform_list:
        for col_transform_nums in col_transform_list:
            transformX2Y(X, t, row_transform_nums, col_transform_nums)


def main():
    a = np.array([[2, -1, -2], [-4, 6, 3], [-4, -2, 8]])
    # qr_decomp_givens(a)
    # qr_decomp_householder(a)
    # a = np.array([[1, 0, 0, 1], [1, 1, 0, 0], [0, 1, 1, 0], [0, 0, 1, 1]])
    # full_rank_decompose(a)
    X = np.random.randint(0, 31, (32, 32))
    question4(X, 16, [1, 2], [1, 2, 3])


if __name__ == "__main__":
    main()
