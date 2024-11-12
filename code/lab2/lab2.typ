#import "../simplepaper.typ": *

#show: project.with(title: "线性空间与线性变换实验")

#problem[
  利用初等行变换求矩阵列空间和零空间的基
]

#solution[
  化为行最简阶梯矩阵后取对应列组成列空间的基，取对应自由变量组成零空间的基

  代码运行结果如下：

  #figure(
    image("../pic/lab2_1.png", height: 25%),
  )
]

#problem[
  对于 $A in R^(m times n), B in R^(m times p)$ ，给出 $R(A) sect R(B)$ 的一个基.
]

#solution[
  根据题目所给的方法二，结合第一题的函数实现

  代码运行结果如下：

  #figure(
    image("../pic/lab2_2.png", height: 25%),
  )
]

#problem[
  给定矩阵 $A$ 和初始向量 $x_1$ ，根据 $x_i = A x_(i-1)$ 构造向量序列，利用 G-S 求出序列的标准正交基
]

#solution[
  利用 G-S 方法求出标准正交基

  代码运行结果如下：

  #figure(
    image("../pic/lab2_3.png", height: 25%),
  )
]