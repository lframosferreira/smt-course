---
title: "Z3-Noodler - An Automata based String Solver"
subtitle: "Theory and Practice of SMT Solving"
author: "Luís Felipe Ramos Ferreira"
# date: "Date of Presentation"
theme: "default" # You can change this to other Beamer themes like metropolis, Madrid, etc.
output: beamer_presentation
---

# What is Z3-Noodler

- Fork of the Z3 theorem prover
- String theory solver replaced by *Noodler*
  - *Stabilization-based procedure*
  - Heavy usage of *non deterministic automata*

---

# Handling automata and regular expressions

- Hard task
- Mata library
  - Union, concatenation, intersection, etc
- Very efficient and optimized

---

# Architecture

- Takes advatnge of Z3's whole DPLL($$\mathcal{T}$$) architecture
- Parser, rewriter and LIA solver

---

# Architecture
  
![Z3-Noodler architecture](images/arch.png)

# End
