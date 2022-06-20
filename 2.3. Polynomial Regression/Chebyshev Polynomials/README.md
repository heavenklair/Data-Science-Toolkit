# Chebyshev Polynomials

The Chebyshev Polynomials (of first kind) of degree n, $`T_n`$ is defined by
```math
T_n(x) = \text{cos}n\theta, \qquad x = \text{cos}\theta
```

Note that the above is only defines $`T_n`$ for $`x \in [-1,\ 1]`$. However, once the coeffcients of this polynomial are determined we can define it for any real (or complex) $`x`$. 

Using the trigonometry identity
```math
\text{cos}(n+1)\theta + \text{cos}(n-1)\theta = 2 \text{cos}n\theta\ \text{cos}\theta
```
we immediately get
```math
T_{n+1}(\text{cos}\theta) + T_{n-1}(\text{cos}\theta) = 2 T_n (\text{cos}\theta) \cdot \text{cos}\theta
```

and going back to the $`x`$ variable we obtain the recursion formula
```math
\begin{align}
T_0(x) &= 1\\
T_1(x) & x\\
T_{n+1}(x) &= 2x\ T_n(x) - T_{n-1}(x), \qquad n \geq 1
\end{align}
```

We can generate the first few Chebyshev Polynomials
```math
\begin{align}
T_0(x) &= 1\\
T_1(x) &= x\\
T_2(x) &= 2x \ cdot x -1 = 2x^2 - 1\\
T_3(x) &= 2x \cdot (2x^2-1) - x = 4x^3 - 3x\\
T_4(x)& = 2x(4x^3 - 3x) - (2x^2 - 1) = 8x^3 - 8x^2 + 1
\end{align}
```

The code to plot the first few polynomials is in the ipynb file.