# Generalized Equivalence Checking of Concurrent Programs

This is a WIP version of [Benjamin Bisping's](https://bbisping.de) dissertation on how to decide all behavioral equivalences of processes at once, using a quantitative game approach.

The Web preview of this work is live on:

<https://generalized-equivalence-checking.equiv.io/>

You can also look into the [PDF version](https://generalized-equivalence-checking.equiv.io/Generalized-Equivalence-Checking-of-Concurrent-Programs.pdf).

Or check out the publications behind this thesis:
[LMCS'22](https://doi.org/10.46298/lmcs-18(3:19)2022), [CAV'23](https://doi.org/10.1007/978-3-031-37706-8_5), and [EXPRESS/SOS'24](https://doi.org/10.4204/EPTCS.412.6).

## Summary

We study the *spectroscopy problem* that asks which notions from a spectrum of behavioral equivalences relate a pair of states in a transition system.
This allows a generalized handling of questions on *how equivalent two programs are*.

As *main result*, we solve the spectroscopy problem for *finite-state systems* and a hierarchy of semantic models known as the *weak linear-time–branching-time spectrum*, due to van Glabbeek.
The spectrum arises because of different ways of understanding nondeterminism and internal behavior in models of concurrent programs.
We also treat the *strong spectrum* (without internal behavior) as well as use cases of generalized equivalence checking in verification and concurrency theory.

Our *approach* relies on a *quantitative understanding of spectra* in terms of how many syntactic features of Hennessy–Milner modal logic are used to characterize equivalences.

As *key trick* to solve the spectroscopy problem, we prove spectra of equivalence to be captured by *spectroscopy games* where energy budgets bound the features an attacker may use to express differences of states.
Optimal attack strategies correspond to *distinguishing formulas* with a minimal usage of syntax.
The spectroscopy problem thus reduces to the problem of computing *minimal attacker-winning budgets* in spectroscopy games.
For this, we provide an algorithm to compute such budgets on a wider class of *Galois energy games*.
The resulting spectroscopy algorithms are exponential for the PSPACE-hard spectrum of equivalence problems, but can be instantiated to polynomial-time solutions on the P-easy part.

Aiming for *applicability*, we implement the spectroscopy procedure in the web tool [equiv.io](https://equiv.io), which continues a tradition of *concurrency workbenches*.
Using it, we can *check for dozens of equivalences* at once.
We apply the spectroscopy approach to small *case studies from verification and translation of concurrent programs*.
Core parts of the thesis are supported by an *Isabelle/HOL formalization*.

## Requirements

To build the website and PDF document:

- quarto 1.7.26+
- pdf2svg, librsvg2-bin
- fonts-linuxlibertine
- Juypyter: python3-ipython python3-numpy python3-pandas python3-tabulate jupyter