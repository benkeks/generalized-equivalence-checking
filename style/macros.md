
\providecommand{\lc}[1]{}


\lc{ Math }

\providecommand{\inverse}[1]{#1^{-1}}
\providecommand{\setminus}{\mathbin{\backslash}}
\providecommand{\powerset}[1]{2^{#1}}
\providecommand{\nats}{\mathbb{N}}
\providecommand{\natsext}{\mathbb{N}_\infty}
\providecommand{\ints}{\mathbb{Z}}
\providecommand{\reals}{\mathbb{R}}
\providecommand{\defiff}{\mathrel{:\!\iff}}
\providecommand{\defeq}{\mathrel{≔}}
\providecommand{\set}[1]{\{#1\}}
\providecommand{\emptyword}{\texttt{()}}
\providecommand{\identity}[1]{\mathrm{id}_{#1}}
\providecommand{\domain}{\operatorname{\mathrm{dom}}}
\providecommand{\lub}{\sqcup}
\providecommand{\glb}{\sqcap}
\providecommand{\floor}[1]{\lfloor #1 \rfloor}
\providecommand{\Min}{\operatorname{\mathrm{Min}}}
\providecommand{\Max}{\operatorname{\mathrm{Max}}}
\providecommand{\upset}{{}\uparrow}
\providecommand{\downset}{{}\downarrow}
\providecommand{\unitvec}[1]{\hat{\mathbf{e}}_{#1}}
\providecommand{\vectorcomponents}[2][n]{({#2}_1,\ldots,{#2}_{#1})}
\providecommand{\zerovec}{\mathbf{0}}
\providecommand{\bigo}[1]{\mathit{O}(#1)}
\providecommand{\complexityname}[1]{\textsf{#1}}
\providecommand{\quotient}[2]{{#1 \! / \!\! #2}}
\providecommand{\eqclass}[1]{[#1]}
\providecommand{\mathhl}[1]{\mathcolor{RoyalBlue}{#1}}
\providecommand{\mathdl}[1]{\mathcolor{gray}{#1}}

\lc{ Transition systems }

\providecommand{\step}[1]{\xrightarrow{\smash{\raisebox{-2pt}{$\scriptstyle{#1}$}}}}
\providecommand{\stepnosmash}[1]{\xrightarrow{{\raisebox{-2pt}{$\scriptstyle{#1}$}}}}
\providecommand{\nostep}[1]{\overset{\smash{\raisebox{-2pt}{$\scriptstyle{#1}$}}}{\nrightarrow} }
\providecommand{\stepweak}{\mathrel{\twoheadrightarrow}}
\providecommand{\stepweakword}[1]{\xtwoheadrightarrow{\smash{\raisebox{-2pt}{$\scriptstyle{#1}$}}}}
\providecommand{\stepsoft}[1]{\xrightarrow{\smash{\raisebox{-2pt}{$\scriptstyle{(#1)}$}}}}
\providecommand{\states}{\mathcal{P}}
\providecommand{\system}{\mathcal{S}}
\providecommand{\labels}{\mathcal{L}}
\providecommand{\actions}{\mathit{Act}}
\providecommand{\actionsvis}{\mathit{Act}_👁}
\providecommand{\traces}[1]{\mathsf{Traces}(#1)}
\providecommand{\wtraces}[1]{\mathsf{WeakTraces}(#1)}
\providecommand{\failures}[1]{\mathsf{Failures}(#1)}
\providecommand{\derivatives}[1]{\operatorname{Der}(#1)}
\providecommand{\initials}[1]{\operatorname{Ini}(#1)}
\providecommand{\troll}{\vcenter{\hbox{\trollface}}}

\lc{ Grammars }

\providecommand{\grammardef}{\;::=\;}
\providecommand{\grammaror}{\;\mid\;}
\providecommand{\grammarsp}{\;}
\providecommand{\bnfvar}[1]{\operatorname{\mathit{#1}}}
\providecommand{\bnflit}[1]{\texttt{#1}}


\lc{ CCS }

\providecommand{\ccs}{\textsf{CCS}}
\providecommand{\ccschannels}{\mathcal{C}}
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

\providecommand{\hml}{\mathsf{HML}}
\providecommand{\hmlsrbb}{\mathsf{HML}_{\mathsf{SRBB}}}
\providecommand{\hmlobs}[1]{\langle #1 \rangle}
\providecommand{\hmlsoft}[1]{( #1 )}
\providecommand{\hmleps}{\langle \varepsilon \rangle}
\providecommand{\hmland}[2]{\textstyle\bigwedge_{#1 \in #2}}
\providecommand{\hmlands}[1]{\textstyle\bigwedge #1}
\providecommand{\hmltrue}{\top}
\providecommand{\hmlneg}{\neg}

\lc{ Semantics }

\providecommand{\semantics}[1]{\llbracket #1 \rrbracket}
\providecommand{\semanticsobs}[1]{\semantics{#1}^👁}
\providecommand{\difference}[2]{\Delta(#1,#2)}
\providecommand{\literal}[1]{\mathsf{#1}}
\providecommand{\variable}[1]{\mathtt{#1}}
\providecommand{\kw}[1]{\operatorname{\textbf{\textsf{#1}}}\;}
\providecommand{\inferrule}[3][]{\mathrm{#1}\;\dfrac{\begin{matrix}#2\end{matrix}}{#3}\hphantom{\mathrm{#1}}}
\providecommand{\inferruleapp}[3][]{\mathrm{#1}\;\dfrac{\begin{matrix}#2\end{matrix}}{#3}}

\lc{ Relations }

\providecommand{\rel}[1]{\mathcal{#1}}
\providecommand{\relsize}[1]{\smash{|{#1}|}}
\providecommand{\relqotient}[2]{#1_{/#2}}
\providecommand{\relwidth}{\operatorname{wdh}}
\providecommand{\relheight}{\operatorname{hgt}}

\lc{ Behavioral Equivalences }

\providecommand{\bpreord}[1]{\preceq_\notionname{#1}}
\providecommand{\nbpreord}[1]{\not\preceq_\notionname{#1}}
\providecommand{\bpreordvar}[1]{\preceq_{#1}}
\providecommand{\nbpreordvar}[1]{\not\preceq_{#1}}
\providecommand{\beq}[1]{\sim_\mathrm{#1}}
\providecommand{\nbeq}[1]{\nsim_\mathrm{#1}}
\providecommand{\beqvar}[1]{\sim_{#1}}
\providecommand{\notions}{\mathbf{N}}
\providecommand{\notionname}[1]{\mathrm{#1}}
\providecommand{\observations}[2][]{\mathcal{O}^{#1}_{\notionname{#2}}}
\providecommand{\observationsvar}[2][]{\mathcal{O}^{#1}_{#2}}
\providecommand{\expr}[1][]{\mathsf{expr}^{#1}}
\providecommand{\exprabst}[1][]{\widehat{\mathsf{expr}}^{#1}}

\lc{ Games }

\providecommand{\gamemove}[1]{\mathrel{\smash{\xrightarrowtail{\scriptscriptstyle#1}}}}
\providecommand{\gamemoveblank}{\gamemove{\enspace}}
\providecommand{\ngamemove}[1]{\mathrel{\smash{{›\small/\!\!\!\!\!\frac{\scriptstyle{\;#1\;}}{\;}\!\!›}}}}
\providecommand{\ngamemoveblank}{\ngamemove{\enspace}}
\providecommand{\game}{\mathcal{G}}

\providecommand{\attackerpos}[2][]{\smash{\color{gray}[}#2\smash{{\color{gray}]}_\mathtt{a}^{\color{gray} \scriptscriptstyle#1}}}
\providecommand{\defenderpos}[2][]{\smash{\color{gray}(}#2\smash{{\color{gray})}_\mathtt{d}^{\color{gray}\scriptscriptstyle#1}}}
\providecommand{\attacker}{{\mathrm{a}}}
\providecommand{\defender}{{\mathrm{d}}}
\providecommand{\attackerwins}{\mathsf{Win}_\mathrm{a}}
\providecommand{\attackerwinsmin}{\mathsf{Win}^{\mathrm{min}}_\mathrm{a}}
\providecommand{\defenderwins}{\mathsf{Win}_\mathrm{d}}
\providecommand{\defenderwinsmax}{\mathsf{Win}^{\mathrm{max}}_\mathrm{d}}

\lc{ Energy Games }

\providecommand{\abstractupdate}{\mathit{upd}}
\providecommand{\abstractupdateinv}{\smash{\mathit{upd}^{↺}}}
\providecommand{\abstractenergies}{\mathcal{E}}
\providecommand{\energylevel}{\operatorname{EL}}
\providecommand{\energies}{\mathbf{En}}
\providecommand{\energiesflattened}{\widehat{\energies}}
\providecommand{\energyupdates}{\mathbf{Up}} 
\providecommand{\energyupdate}{\mathsf{upd}}
\providecommand{\energyupdateinv}{\smash{\mathsf{upd}^{↺}}}
\providecommand{\updmin}[1]{\mathtt{min}_{\{\!#1\!\}}}

\lc{ Spectroscopy }

\providecommand{\gamebisim}{\mathcal{G}_{\notionname{B}}}
\providecommand{\gamebisimen}[1][]{\mathcal{G}_{\notionname{B}}^{\smash{🗲 #1}}}
\providecommand{\gamespectroscopy}{\mathcal{G}_{\triangle}}
\providecommand{\gamespectroscopyeq}[1]{\mathcal{G}_{\triangle #1}}
\providecommand{\gamespectroscopyclever}{\mathcal{G}_{\blacktriangle}}
\providecommand{\gamespectroscopyceq}[1]{\mathcal{G}_{\blacktriangle #1}}
\providecommand{\gamespectroscopyw}{\mathcal{G}_{\nabla}}
\providecommand{\swsimple}{\widehat{\nabla}}
\providecommand{\gamespectroscopywsimple}{\mathcal{G}_{\swsimple}}
\providecommand{\strat}{\mathsf{Strat}}
\providecommand{\stratstrong}{\mathsf{Strat}_{\triangle}}
\providecommand{\stratweak}{\mathsf{Strat}_{\nabla}}

