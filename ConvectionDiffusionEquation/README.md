# Решение уравнения конвекции-диффузии в одномерной области

Уравнение:

$$
\frac{\delta u}{\delta t} = - \nabla \cdot (\kappa \nabla u) + \vec {v} \cdot \nabla u
$$

$$
\kappa - \text{коэффициент теплопроводности}
$$

$$
\vec{v} - \text{скорость конвекции, const в задаче}
$$

Задача решается с помощью FEM.

Матрица жесткости связана с диффузией имеет вид:

$$
K_{ij} = \int_{\Omega} (\kappa = \alpha u) \nabla \phi_i \cdot \nabla \phi_j d \Omega
$$

Матрица масс связано с временной зависимостью $ \frac{\delta u}{\delta t}$
Задача: найти $u\\ \in\\ H^{1}(\Omega)$ для которых верно (1) for $\forall v\\ \in\\ H^{1}(\Omega)$


<p align="center">
 <img width="400px" src="solution.png" alt="qr"/>
</p>
