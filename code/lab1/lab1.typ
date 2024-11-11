#import "../simplepaper.typ": *

#show: project.with(title: "矩阵分解实验")

_代码实现见对应py文件_

#problem[
  利用 Givens 变换实现非奇异矩阵的 QR 分解。
]

#solution[
  利用公式 $c = x_1 / sqrt(x_1^2 + x_2^2), s = x_2 / sqrt(x_1^2 + x_2^2)$ 构造 Givens 矩阵 $G_i$

  代码运行结果如下：

  #figure(
    image("../pic/lab1_1.png", height: 25%),
  )
]

#problem[
  利用 Householder 变换实现非奇异矩阵的 QR 分解。
]

#solution[
  利用公式 $H_u = I - 2 u u^T, u = (x - abs(x) z)/abs(x - abs(x) z)$ 构造 Householder 矩阵 $H_i$

  代码运行结果如下：

  #figure(
    image("../pic/lab1_2.png", height: 30%),
  )
]

#problem[
  实现满秩分解
]

#solution[
  化为行最简阶梯矩阵后取对应行列

  代码运行结果如下：

  #figure(
    image("../pic/lab1_3.png", height: 25%),
  )
]

#problem[
  略
]

#solution[
  题目中的 P 置换就是把偶数索引放前面，奇数索引放后面，对矩阵分别进行行列置换后计算对应 $triangle_t$

  代码运行的部分结果如下(32阶矩阵，取$t=16, k=[1,2], l = [1,2,3]$)：

  #figure(
    grid(
      columns: 2,
      gutter: 20pt,
      figure(image("../pic/lab1_4.png", height: 25%)), figure(image("../pic/lab1_5.png", height: 25%)),
    ),
  )

  从结果可得，置换前后$triangle_t$没有发生变化，说明矩阵所含信息保持不变，置换只改变了数据分布。
]