<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 1
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date>
  </doc-date>>

  <\exercise>
    Project the surface area of a sphere of radius <math|<sqrt|d>> in
    d-dimensions onto a line through the center. For d equal 2 and 3, derive
    an explicit formula for how the projected surface area changes as we move
    along the line. For large d, argue (intuitively) that the projected
    surface area should behave like a Gaussian.
  </exercise>

  <\answer>
    \;

    <\indent>
      Suppose we pick the line with <math|<around*|(| x<rsub|2> = x<rsub|3> =
      \<ldots\>=x<rsub|d> = 0 |)>>, calculate the derivate surface area
      parallel to this line, so that we have
    </indent>

    <\equation>
      d S<rsub|p><around*|(|x<rsub|1>|)> =
      A<rsub|d-2><around*|(|<sqrt|d-x<rsub|1><rsup|2>>|)>*d x<rsub|1>
    </equation>

    <\jump-in>
      <\verse>
        where <math|A<rsub|d><around*|(|r|)>> is the surface area of a
        d-dimensional sphere.
      </verse>
    </jump-in>

    <\indent>
      Notice that the integral of this notion is not equal to the surface
      area of the sphere.
    </indent>

    <\indent>
      In particular, the case of 2-dimensional sphere
    </indent>

    <\equation>
      d S<rsub|p><around*|(|x<rsub|1>|)> = 2*d x<rsub|1>
    </equation>

    <\indent>
      the case of 3-dimensional sphere
    </indent>

    <\equation>
      d S<rsub|p><around*|(|x<rsub|1>|)> = 2*\<pi\><sqrt|d-x<rsup|2>>*d
      x<rsub|1>
    </equation>

    <\indent>
      And for the cases of high-dimensional situations,
      <right-aligned|>take<\footnote>
        <em|Computer Science Theory for the Information Age>, p10, Lemma 2.1
      </footnote>

      <\equation>
        A<rsub|d ><around*|(|r|)> = <frac|2*\<pi\><rsup|<frac|d|2>>|\<Gamma\><around*|(|<frac|d|2>|)>>*r<rsup|d-1>
      </equation>

      we have

      <\equation>
        <frac|d S<rsub|p><around*|(|x<rsub|1>|)>|d x<rsub|1>>=
        <frac|2*\<pi\><rsup|<frac|d|2>-1>|\<Gamma\><around*|(|<frac|d|2>-1|)>>*<around*|(|d-x<rsup|2><rsub|1>|)><rsup|<frac|d-3|2>>
      </equation>

      consider the Stirling's formula for the gamma function<\footnote>
        <em|Wikipedia>, <em|Stirling's approximation>,
        en.wikipedia.org/wiki/Stirling%27s_approximation
      </footnote>

      <\equation>
        \<Gamma\><around*|(|x|)> = <sqrt|<frac|2*\<pi\>|x>>*<around*|(|<frac|x|e>|)><rsup|x>
      </equation>

      we have

      <\equation>
        <frac|d S<rsub|p><around*|(|x<rsub|1>|)>|d x<rsub|1>> =
        <frac|2*\<pi\><rsup|<frac|d|2>-1>|
        <sqrt|<frac|4*\<pi\>|d-2>>*<around*|(|<frac|d-2|2e>|)><rsup|<frac|d|2>-1>>*<around*|(|d-x<rsup|2><rsub|1>|)><rsup|<frac|d-3|2>>=<frac|O<around*|(|\<pi\><rsup|<frac|d-1|2>>|)>*O<around*|(|<around*|(|d-x<rsup|2><rsub|1>|)><rsup|<frac|d-3|2>>|)>|O<around*|(|<around*|(|d-2|)><rsup|<frac|d-1|2>>|)>>
      </equation>

      take <math|d \<rightarrow\> +\<infty\>>

      \;
    </indent>
  </answer>

  <\exercise>
    For what value of d is the volume, <math|V<around*|(|d|)>>, of a
    d-dimonsional unit sphere maximum?\ 
  </exercise>

  <\answer>
    \;

    <\indent>
      Take<\footnote>
        <em|Computer Science Theory for the Information Age>, p10, Lemme 2.1
      </footnote>
    </indent>

    <\equation>
      V<around*|(|d|)> = <frac|2|d>*<frac|\<pi\><rsup|<frac|d|2>>|\<Gamma\><around*|(|<frac|d|2>|)>>
    </equation>

    <\verse>
      where gamma function

      <\equation>
        \<Gamma\><around*|(|x|)> = <around*|(|x-1|)>*\<Gamma\><around*|(|x-1|)>
      </equation>
    </verse>

    <\indent>
      Consider the ratio

      <\equation>
        r<around*|(|d|)> = <frac|V<around*|(|d|)>|V<around*|(|d-2|)>> =
        <frac|<frac|2|d>*<frac|\<pi\><rsup|<frac|d|2>>|\<Gamma\><around*|(|<frac|d|2>|)>>|<frac|2|d-2>*<frac|\<pi\><rsup|<frac|d|2>-1>|\<Gamma\><around*|(|<frac|d|2>-1|)>>>
        = <frac|2*\<pi\>|d>*
      </equation>

      for <math|d \<geqslant\> 7>, <math|r<around*|(|d|)> \<less\> 1>, so the
      maximum of volume must be with <math|d = 6> or <math|d = 5>.

      <\equation>
        V<around*|(|6|)> = <frac|2*\<pi\>|6>*V<around*|(|4|)> =
        <frac|\<pi\><rsup|2>|6>*V<around*|(|2|)> = <frac|\<pi\><rsup|3>|6>
      </equation>

      <\equation>
        V<around*|(|5|)> = <frac|2*\<pi\>|5>*V<around*|(|3|)> =
        <frac|8*\<pi\><rsup|2>|15>
      </equation>

      Notice that

      <\equation>
        V<around*|(|6|)> \<less\> V<around*|(|5|)>
      </equation>

      So the maximum volume of all d-dimensional unit sphere is

      <\equation>
        V<rsub|m> = V<around*|(|5|)> = <frac|8*\<pi\><rsup|2>|15> \<approx\>
        5.26379
      </equation>
    </indent>
  </answer>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
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