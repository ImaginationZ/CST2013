<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 3
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date|>
  </doc-date>>

  <\exercise>
    What is the surface area of a unit cube in d-dimensions?
  </exercise>

  <\answer>
    \;

    <\indent>
      a <math|d>-dimensional cube has <math|2*d>
      faces(<math|<around*|(|d-1|)>>-dimensional cube), with each face of
      volume <math|1>.

      so

      <\equation>
        V<rsub|d> = 2*d\ 
      </equation>
    </indent>
  </answer>

  <\exercise>
    Is the surface area of a unit cube concentrated to the equator, defined
    here as the hyperplane <math|<around*|{|\<b-x\>:
    <below|<above|<big|sum>|d>|i=1>x<rsub|i> = <frac|d|2>|}>>, as is the case
    with the sphere?
  </exercise>

  <\answer>
    <math|>

    <\indent>
      The answer is <strong|true>.

      Suppose we generate points randomly onto the surface of a d-dimensional
      cube. To prove the surface area is concentrated to the equator, all we
      need is to show that distance from random generated point to the
      equator is almost near zero.
    </indent>

    <\indent>
      Let <math|p> be the random generate point with coordinate
      <math|<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\> \<nocomma\>\<nocomma\>,
      x<rsub|d>|)>>.\ 

      Let <math|X> be the random variable of

      <\equation>
        X = <above|<below|\<Sigma\>|i=1>|d>x<rsub|i>.
      </equation>

      Let <math|l> be the distance from point <math|p> to the equator

      <\equation>
        l = <dfrac|<around*|\||<above|<below|\<Sigma\>|i=1>|d><around*|(|x<rsub|i>
        - <frac|1|2>|)>|\|>|<sqrt|d>> = <around*|\||<frac|X-<frac|d|2>|<sqrt|d>>|\|>
      </equation>
    </indent>
  </answer>

  <\indent>
    Now we want to caculator value of <math|E<around*|(|X|)>> and
    <math|\<sigma\><rsup|2><around*|(|X|)>>.

    Notice that the d coordinates of <math|p> is not independent. Every time
    we generate a point onto the surface of d-cube, first we pick one
    dimesion k with probability <math|<frac|1|d>>, draw <math|x<rsub|k>= 0>
    or <math|x<rsub|k> = 1> with equal probability, and then let the rest
    <math|d-1> coordinates take values uniformly from <around*|[|0,1|]>.

    So we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|E<around*|(|X|)>>|<cell|=>|<cell|<frac|1|d>*<below|<above|\<Sigma\>|d>|k=1><around*|(|<frac|1|2><around*|(|0+E<around*|(|<above|<below|\<Sigma\>|i=1,i\<neq\>k>|d>x<rsub|i>|)>|)>*
      \<noplus\>+ <frac|1|2>*<around*|(|1+E<around*|(|<above|<below|\<Sigma\>|i=1,i\<neq\>k>|d>x<rsub|i>|)>|)>|)><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>*<below|<above|\<Sigma\>|d>|k=1><around*|(|<above|<below|<above|\<Sigma\>|d>|i=1,i\<neq\>k>E<around*|(|x<rsub|i>|)>|>
      \<noplus\>+<above|<below|\<Sigma\>|i=1,i\<neq\>k>|d>E<around*|(|x<rsub|i>|)>
      \<noplus\>\<noplus\>+ 1|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|d|2>>>>>
    </eqnarray*>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<sigma\><rsup|2><around*|(|X|)>>|<cell|=>|<cell|E<around*|(|X<rsup|2>|)>
      - E<rsup|2><around*|(|X|)><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|d>*<below|<above|\<Sigma\>|d>|k=1><around*|(|<frac|1|2>E<around*|(|<around*|(|<above|<below|\<Sigma\>|i=1,i\<neq\>k>|d>x<rsub|i>|)><rsup|2>|)>*
      \<noplus\>+ <frac|1|2>*E<around*|(|<around*|(|1+<above|<below|\<Sigma\>|i=1,i\<neq\>k>|d>x<rsub|i>|)><rsup|2>|)>
      - <frac|d<rsup|2>|4>|\<nobracket\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|d-1|)>E<around*|(|x<rsup|2><rsub|i>|)>+2*C<rsup|2><rsub|d-1>E<rsup|2><around*|(|x<rsub|i>|)>+<around*|(|d-1|)>E<around*|(|x<rsub|i>|)>+1-<frac|d<rsup|2>|4>>>|<row|<cell|>|<cell|=>|<cell|<frac|d-1|12>
      \<noplus\>\<noplus\>+<frac|<around*|(|d-1|)><around*|(|d-2|)>|4>+<frac|d-1|2>+1-<frac|d<rsup|2>|4>>>|<row|<cell|>|<cell|=>|<cell|\<Omicron\><around*|(|d|)>>>>>
    </eqnarray*>
  </indent>

  <\indent>
    Now that we consider the Chebyshev's Inequality

    <\equation>
      P<around*|(|<around*|\||X-E<around*|(|X|)>|\|>\<geqslant\>\<epsilon\>|)>\<leqslant\><frac|\<sigma\><rsup|2><around*|(|X|)>|\<epsilon\><rsup|2>>
    </equation>

    and take <math|\<epsilon\>= <frac|1|d>>, we have

    <\equation>
      P<around*|(|<around*|\||X-E<around*|(|X|)>|\|>\<geqslant\><frac|1|d>|)>\<leqslant\><frac|1|\<Omicron\><around*|(|d|)>>
    </equation>

    also for

    <\equation>
      P<around*|(|l\<geqslant\><frac|1|d*<sqrt|d>>|)>\<leqslant\><frac|1|\<Omicron\><around*|(|d|)>>
    </equation>

    and that shows <strong|As the dimension <math|d> goes higher, the
    randomly generated points are more likely to appear near the equator
    within distance of <math|<frac|1|d*<sqrt|d>>>>, which leads to the answer
    proved.
  </indent>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|sfactor|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|3|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-2|<tuple|2|?>>
    <associate|footnr-3|<tuple|3|?>>
  </collection>
</references>