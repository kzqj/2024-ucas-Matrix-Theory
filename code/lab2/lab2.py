import numpy as np
from sympy import Matrix as sy_matrix


def get_col_space(A: np.ndarray):
    A_sympy = sy_matrix(A.tolist())
    _, pivots = A_sympy.rref()
    return A[:, pivots]


def get_null_space(A: np.ndarray):
    A_sympy = sy_matrix(A.tolist())
    reduced, pivots = A_sympy.rref()

    free_vars = [i for i in range(A.shape[1]) if i not in pivots]
    basis = []

    for free_var in free_vars:
        vector = np.zeros(A.shape[1])
        vector[free_var] = 1
        for i, pivot in enumerate(pivots):
            vector[pivot] -= reduced[i, free_var]
        basis.append(vector)

    return np.array(basis).T


# T1
def get_matrix_two_spaces(A: np.ndarray):
    print(f"输入的矩阵为: \n{A}")
    matirx_col_space = get_col_space(A)
    print(f"矩阵的列空间为: \n{matirx_col_space}")
    matrix_null_space = get_null_space(A)
    print(f"矩阵的零空间为: \n{matrix_null_space}")

    return matirx_col_space, matrix_null_space


# T2
def get_col_spaces_intersection(A: np.ndarray, B: np.ndarray):
    print(f"输入的矩阵A为: \n{A}")
    print(f"输入的矩阵B为: \n{B}")
    if A.shape[0] != B.shape[0]:
        raise ValueError("A and B must have same number of rows")
    ua_col_space = get_null_space(A.T)
    ub_col_space = get_null_space(B.T)
    ret = get_null_space(np.concatenate([ua_col_space.T, ub_col_space.T], axis=0))
    print(f"A和B列空间的交为: \n{ret}")
    return ret


def unitary_matrix_check(A: np.ndarray):
    return np.allclose(A @ A.T.conj(), np.eye(A.shape[0]))


def generate_vec_seq(A: np.ndarray, x1: np.ndarray, seq_len: int):
    x1 = x1[:, np.newaxis]
    ret = x1
    for _ in range(seq_len - 1):
        x1 = A @ x1
        ret = np.concatenate([ret, x1], axis=1)

    return np.array(ret)


def GS_orthogonalization(vec_seq: np.ndarray):
    ret = [vec_seq[:, 0] / np.linalg.norm(vec_seq[:, 0])]
    for i in range(1, vec_seq.shape[1]):
        cur_vec = vec_seq[:, i]
        for j in range(i):
            cur_vec -= np.dot(cur_vec, ret[j]) * ret[j]
        cur_vec /= np.linalg.norm(cur_vec) + 1e-15
        ret.append(cur_vec)
    return np.array(ret).T


# T3
def question3(A: np.ndarray, x1: np.ndarray, seq_len: int = 1):
    A = A.astype(np.float64)
    print(f"输入的矩阵A为: \n{A}")
    if not unitary_matrix_check(A):
        raise ValueError("A不是酉矩阵")
    X = generate_vec_seq(A, x1, seq_len)
    print(f"生成的长度为 {seq_len} 的向量序列为: \n{X}")
    Q = GS_orthogonalization(X)
    print(f"正交化后的向量为: \n{Q}")


def main():
    A = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    A = np.array([[1, 2, 3, 4], [2, 4, 6, 8], [3, 6, 9, 12]])
    get_matrix_two_spaces(A)
    B = np.array([[1, 2, 3, 4], [2, 4, 6, 8], [3, 6, 9, 12]])
    get_col_spaces_intersection(A, B)
    A = np.array([[0, 0, 1], [1, 0, 0], [0, 1, 0]])
    x1 = np.array([1, 2, 0])
    question3(A, x1, 3)


if __name__ == "__main__":
    main()
