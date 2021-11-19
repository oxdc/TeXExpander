#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Greek Letters
:c*:/a::\alpha
:c*:/b::\beta
:c*:/C::\Chi
:c*:/c::\chi
:c*:/D::\Delta
:c*:/d::\delta
:c*:/e::\epsilon
:c*:/h::\eta
:c*:/G::\Gamma
:c*:/g::\gamma
:c*:/k::\kappa
:c*:/L::\Lambda
:c*:/l::\lambda
:c*:/m::\mu
:c*:/n::\nu
:c*:/O::\Omega
:c*:/o::\omega
:c*:/w::\omega
:c*:/F::\Phi
:c*:/f::\phi
:c*:/P::\Pi
:c*:/p::\pi
:c*:/Y::\Psi
:c*:/y::\psi
:c*:/r::\rho
:c*:/S::\Sigma
:c*:/s::\sigma
:c*:/t::\tau
:c*:/Q::\Theta
:c*:/q::\theta
:c*:/U::\Upsilo
:c*:/ve::\varepsilon
:c*:/j::\varphi
:c*:/vp::\varphi
:c*:/vf::\varrho
:c*:/vq::\vartheta
:c*:/x::\xi
:c*:/z::\zeta

; Symbols
:c*:;n::\nabla
:c*:;d::\mathrm{{}d{}}
:c*:;p::\partial
:c*:;.::\cdot

; Brackets
:c*:;bkb::\left(  \right){Left 8}
:c*:;bks::\left[  \right]{Left 8}
:c*:;bkm::\left|  \right|{Left 8}
:c*:;bkl::\left\|  \right\|{Left 9}
:c*:;bka::\left\langle  \right\rangle{Left 14}
:c*:;bkc::\left\lbrace  \right\rbrace{Left 14}
^9::Send, \left(  \right){Left 8}
^0::Send, \left(  \right){Left 8}
^[::Send, \left[  \right]{Left 8}
^]::Send, \left[  \right]{Left 8}
^\::Send, \left|  \right|{Left 8}
^+\::Send, \left\|  \right\|{Left 9}
^,::Send, \left\langle  \right\rangle{Left 14}
^.::Send, \left\langle  \right\rangle{Left 14}
^+[::Send, \left\lbrace  \right\rbrace{Left 14}
^+]::Send, \left\lbrace  \right\rbrace{Left 14}

; Formatting
:c*:;/::\frac{{}{}}{{}{}}{Left 3}
:c*:;2::\sqrt{{}{}}{Left 1}
:c*:;v::\vec{{}{}}{Left 1}
:c*:;^::\hat{{}{}}{Left 1}
:c*:;-::\bar{{}{}}{Left 1}
:c*:;~::\tilde{{}{}}{Left 1}
:c*:;|::\left.  \right|_{{}{}}{Left 11}
^2::Send, \sqrt{{}{}}{Left 1}
^/::Send, \frac{{}{}}{{}{}}{Left 3}
^6::Send, {^}{{}{}}{Left 1}
^-::Send, _{{}{}}{Left 1}

; Fonts & Styles
:c*:;tbf::\textbf{{}{}}{Left 1}
:c*:;ti::\textit{{}{}}{Left 1}
:c*:;bb::\mathbb{{}{}}{Left 1}
:c*:;bf::\mathbf{{}{}}{Left 1}
:c*:;cal::\mathcal{{}{}}{Left 1}
:c*:;rm::\mathrm{{}{}}{Left 1}
:c*:;op::\operatorname{{}{}}{Left 1}

; Arrows
:c*:/->/::\rightarrow
:c*:/-->/::\longrightarrow
:c*:/=>/::\Rightarrow
:c*:/==>/::\Longrightarrow
:c*:/<-/::\leftarrow
:c*:/<--/::\longleftarrow
:c*:/<=/::\Leftarrow
:c*:/<==/::\Longleftarrow
:c*:/<->/::\leftrightarrow
:c*:/<-->/::\longleftrightarrow
:c*:/<=>/::\Leftrightarrow
:c*:/<==>/::\Longleftrightarrow

; Environments
:c*:;env::
    InputBox, Environment, "TeXExpander", "Environment name:", , 300, 100
    Send, \begin{{}%Environment%{}}`n`n\end{{}%Environment%{}}{Up 1}
return
