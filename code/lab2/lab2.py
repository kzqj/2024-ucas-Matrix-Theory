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


def get_matrix_space(A: np.ndarray):
    print(f"输入的矩阵为: \n{A}")
    matirx_col_space = get_col_space(A)
    print(f"矩阵的列空间为: \n{matirx_col_space}")
    matrix_null_space = get_null_space(A)
    print(f"矩阵的零空间为: \n{matrix_null_space}")


def main():
    A = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    get_matrix_space(A)


if __name__ == "__main__":
    main()
