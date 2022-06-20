# Multiple Linear Regression

Multiple linear regression is similar to Linear Regression but with more dimensions. If the Regression equation has more than one variable, then it will be considered mutliple linear regression. For example 

```math
y = \text{y-intercept} + slope * x + slope * z
```

For Simple Linear Regression, we had the hypothesis as 
```math
h_{\theta}(x) = \theta_0 + \theta_1 x
```

For multiple Linear Regression, we have 
```math
h_{\theta}(x) = \theta_0 + \theta_1 x_1 + \theta_2 x_2 + \theta_3 x_3 + \ldots + \theta_n x_n
```
For convenience of notation, define $`x_0 = 1`$. Then, 

```math
x = \begin{pmatrix} x_1 \\x_2\\x_3\\ \vdots \\ x_n \end{pmatrix} \in \R^{n+1} \qquad \text{ and } \qquad  \theta = \begin{pmatrix} \theta_1 \\\theta_2\\\theta_3\\ \vdots \\ \theta_n \end{pmatrix} \in \R^{n+1} \\\\
\Rightarrow h_{\theta}(x) = \theta^Tx
```

## Gradient Descent for Multiple Linear
We have 

```math
\begin{align}
\text{Hypothesis}& : h_{\theta}(x) = \theta_0 + \theta_1 x_1 + \theta_2 x_2 + \theta_3 x_3 + \ldots + \theta_n x_n\\
\text{Parameters}& :\ \theta_0,\ \theta_1,\ \theta_2, \ldots, \theta_n = \theta\\
\text{Cost Function}& : J(\theta) = \frac{1}{2m} \sum_{i=1}^{m} \bigg(  h_{\theta} (x^{(i)}) - y^{(i)} \bigg)^2
\end{align}
```

Thus, the Gradient Descent Algorithm becomes:
```math
\begin{align}
\text{repeat until convergence} & \{\\
    \theta_j &:= \theta_j - \alpha \frac{\partial}{\partial \theta_j}J(\theta_0, \ldots, \theta_n) \\
                  &  \}  
\qquad\qquad\qquad\qquad \text{simultaneously update for every } j=0,1,\ldots,n
\end{align}
```
For example, $`j=2`$, the algorithm looks like:
```math
\begin{align}
\text{repeat} & \{\\
    \theta_0 &:= \theta_0 - \alpha \frac{1}{m} \sum_{i=1}^{m} \bigg( h_{\theta} (x^{(i)}) - y^{(i)} \bigg) x_0^{(i)} \\
    \theta_1 &:= \theta_1 - \alpha \frac{1}{m} \sum_{i=1}^{m} \bigg( h_{\theta} (x^{(i)}) - y^{(i)} \bigg) x_1^{(i)} \\
    \theta_2 &:= \theta_2 - \alpha \frac{1}{m} \sum_{i=1}^{m} \bigg( h_{\theta} (x^{(i)}) - y^{(i)} \bigg) x_2^{(i)} 
                  &   \}  
\qquad\qquad\qquad\qquad \text{simultaneously update for every } j=0,1,\ldots,n
\end{align}
```