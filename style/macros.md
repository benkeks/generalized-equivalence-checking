
\providecommand{\lc}[1]{}


\lc{ Math }

\providecommand{\inverse}[1]{#1^{-1}}
\providecommand{\setminus}{\mathbin{\backslash}}
\providecommand{\powerset}[1]{2^{#1}}
\providecommand{\nats}{\mathbb{N}}
\providecommand{\natsext}{\mathbb{N}_\infty}
\providecommand{\ints}{\mathbb{Z}}
\providecommand{\defiff}{\mathrel{:\!\iff}}
\providecommand{\set}[1]{\{#1\}}
\providecommand{\emptyword}{\texttt{()}}
\providecommand{\identity}[1]{\mathrm{id}_{#1}}
\providecommand{\domain}{\operatorname{\mathrm{dom}}}
\providecommand{\lub}{\sqcup}
\providecommand{\glb}{\sqcap}
\providecommand{\floor}[1]{\lfloor #1 \rfloor}
\providecommand{\Min}{\operatorname{\mathrm{Min}}}
\providecommand{\Max}{\operatorname{\mathrm{Max}}}
\providecommand{\upset}{\uparrow}
\providecommand{\unit}[1]{\mathbf{\hat e}_{#1}}
\providecommand{\vectorcomponents}[2][n]{({#2}_1,\ldots,{#2}_{#1})}
\providecommand{\zerovec}{\mathbf{0}}
\providecommand{\bigo}[1]{\mathit{O}(#1)}
\providecommand{\relsize}[1]{\left|#1\right|}
\providecommand{\complexityname}[1]{\textsf{#1}}
\providecommand{\relqotient}[2]{#1_{/#2}}


\lc{ Transition systems }

\providecommand{\step}[1]{\xrightarrow{#1}}
\providecommand{\states}{\mathcal{P}}
\providecommand{\system}{\mathcal{S}}
\providecommand{\labels}{\mathcal{L}}
\providecommand{\actions}{\mathit{Act}}
\providecommand{\traces}[1]{\mathsf{Traces}(#1)}
\providecommand{\failures}[1]{\mathsf{Failures}(#1)}
\providecommand{\derivatives}[1]{\operatorname{Der}(#1)}
\providecommand{\initials}[1]{\operatorname{Ini}(#1)}

\providecommand{\literal}[1]{\mathsf{#1}}

\lc{ Grammars }

\providecommand{\grammardef}{\;::=\;}
\providecommand{\grammaror}{\;\mid\;}

\lc{ CCS }

\providecommand{\ccs}{\textsf{CCS}}
\providecommand{\ccschannels}{\mathcal{A}}
\providecommand{\ccsactions}{\literal{Act}_\ccs}
\providecommand{\ccslabels}{\labels_\ccs}
\providecommand{\coaction}[1]{\overline{#1}}
\providecommand{\ccsnames}{\mathcal X}
\providecommand{\ccsasg}{\mathcal V}
\providecommand{\ccsprefix}[1]{#1\ldotp\!}
\providecommand{\ccsnull}{\mathbf{0}}
\providecommand{\ccschoice}{+}
\providecommand{\ccspar}{\mid}
\providecommand{\ccsrestrict}{\setminus}

\lc{ HML }

\providecommand{\hml}{\textsf{HML}}
\providecommand{\hmlobs}[1]{\langle #1 \rangle}
\providecommand{\hmland}[2]{\textstyle\bigwedge_{#1 \in #2}}
\providecommand{\hmlands}[1]{\textstyle\bigwedge #1}
\providecommand{\hmltrue}{\top}
\providecommand{\hmlneg}{\neg}

\lc{ Semantics }

\providecommand{\semantics}[1]{\llbracket #1 \rrbracket}
\providecommand{\semanticsobs}[1]{\semantics{#1}^👁}
\providecommand{\difference}[2]{\Delta(#1,#2)}

\lc{ Relations }

\providecommand{\rel}[1]{\mathcal{#1}}

\lc{ Behavioral Equivalences }

\providecommand{\bpreord}[1]{\preceq_\notionname{#1}}
\providecommand{\nbpreord}[1]{\not\preceq_\notionname{#1}}
\providecommand{\bpreordvar}[1]{\preceq_{#1}}
\providecommand{\beq}[1]{\sim_\mathrm{#1}}
\providecommand{\nbeq}[1]{\nsim_\mathrm{#1}}
\providecommand{\beqvar}[1]{\sim_{#1}}
\providecommand{\notions}{\mathbf{N}}
\providecommand{\notionname}[1]{\mathrm{#1}}
\providecommand{\observations}[1]{\mathcal{O}_\notionname{#1}}
\providecommand{\observationsvar}[1]{\mathcal{O}_{#1}}

\lc{ Games }

\providecommand{\gamemove}[1]{\mathrel{\smash{›\!\!\frac{#1}{}\!\!›}}}
\providecommand{\gamemoveblank}{\gamemove{\quad}}
\providecommand{\ngamemove}[1]{\mathrel{\smash{{›/\!\!\!\!\frac{#1}{\;}\!\!›}}}}
\providecommand{\ngamemoveblank}{\ngamemove{\quad}}
\providecommand{\game}{\mathcal{G}}
\providecommand{\attackerpos}[1]{{(#1)}_\mathtt{a}}
\providecommand{\defenderpos}[1]{{(#1)}_\mathtt{d}}
\providecommand{\attacker}{{\mathrm{a}}}
\providecommand{\defender}{{\mathrm{d}}}
\providecommand{\attackerwins}{\mathsf{Win}_\mathrm{a}}
\providecommand{\defenderwins}{\mathsf{Win}_\mathrm{d}}

\lc{ Energy Games }

\providecommand{\abstractupdate}{\mathcal{upd}}
\providecommand{\abstractenergies}{\mathcal{En}}
\providecommand{\energylevel}{\operatorname{EL}}
\providecommand{\energies}{\mathbf{En}}
\providecommand{\energyupdates}{\mathbf{Up}}
\providecommand{\energyupdate}{\mathsf{upd}}
\providecommand{\updmin}[1]{\mathtt{min}_{\{\!#1\!\}}}

