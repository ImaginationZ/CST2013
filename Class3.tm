<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <\doc-data|<doc-title|Class Note for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 3

    \;

    <date|>
  </doc-subtitle>>
    \;

    \;
  <|doc-data>
    \;
  </doc-data>

  <\proposition>
    Random graphics verticle = <math|10<rsup|9>>, can randomly remove
    <math|10<rsup|8>> edges.

    G(n,p) n is number of verticles, p is probability of edges

    <math|d = <big|sum>I<rsub|i>>, where <math|I<rsub|i> = 1> if ith edge is
    present, otherwise 0.
  </proposition>

  <\proof>
    with <math|G<around*|(|n,p|)> p = <frac|d|n>>, how many triangles is in
    the graphy?

    Let x be the number of triangles.

    <math|x = \<Sigma\><around*|(|I<rsub|i>|)>>. <math|E<around*|(|x|)>=
    \<Sigma\><around*|(|E<around*|(|I<rsub|i>|)>|)> =
    C<rsup|3><rsub|n>*E<around*|(|I|)> = <frac|n<rsup|3>|6>*<frac|d<rsup|3>|n<rsup|3>>
    = <frac|d<rsup|3>|6>>
  </proof>

  <\with|gr-mode|<tuple|edit|carc>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|1par|0.6par>>
    <\proposition>
      First moment method

      x be number of some item in a graphy.

      suppose <math|E<around*|(|number of x|)> = 0>

      however <math|E<around*|(|x|)>\<gtr\>0>

      also suppose <math|E<around*|(|number of x|)> = \<infty\>>

      All items might be concentrated within vanishinglu small fraction of
      graphs.
    </proposition>

    <\proposition>
      Second moment argument

      <math|G<around*|(|n.<frac|d|n>|)>> selected at random will have high
      probability with at least one triangle.

      let <math|E<around*|(|x<rsup|2>|)>> where x is number of triangles.

      <math|x = \<Sigma\><rsub|i,j,k>I<rsub|i,j,k>>, <math|x<rsup|2> =
      <around*|(|\<Sigma\><rsub|i,j,k>I<rsub|i,j,k>|)>*<around*|(|\<Sigma\><rsub|i,j,k>I<rsub|i,j,k>|)>
      = \<Sigma\><rsub|i,j,k,i<lprime|`>,j<lprime|`>,k<lprime|`>><around*|(|I<rsub|i,j,k>|)>*<around*|(|I<rsub|i<lprime|`>,j<lprime|`>,k<lprime|`>>|)>>

      <\math>
        E<around*|(|x<rsup|2>|)> = E<rsup|2><around*|(|x|)>
        \<noplus\>\<noplus\>\<noplus\>+o<around*|(|1|)> + <frac|d<rsup|3>|n>
      </math>

      <math|Prob<around*|(|x=0|)> \<leqslant\> Prob<around*|(|<around*|\||x-
      E<around*|(|x|)>|\|>\<geqslant\>E<around*|(|x|)>|)> \<leqslant\>
      <frac|var<around*|(|x|)>|E<rsup|2><around*|(|x|)>> =
      <frac|6|d<rsup|3>>>
    </proposition>
  </with>
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|I|?>>
  </collection>
</references>