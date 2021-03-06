<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 2
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date|>
  </doc-date>>

  <\exercise>
    How does the volume of a sphere of radius two behave as the dimension of
    the space increases? What if the radius was large than two but a constant
    independent of <em|><math|d>? What function of <math|d> would the radius
    need to be for a sphere of radius <math|r> to have approximately constant
    volume as<space|0.2spc> the dimension increases?
  </exercise>

  <\answer>
    \;

    <\indent>
      take<\footnote>
        <em|Computer Science Theory for the Information Age>, p10, Lemma 2.1
      </footnote>

      <\equation>
        V<rsub|><around*|(|r,d|)> = <frac|2|d>*<frac|\<pi\><rsup|<frac|d|2>>|\<Gamma\><around*|(|<frac|d|2>|)>>*r<rsup|d>
      </equation>

      for the sphere of radius 2, we have\ 

      <\equation>
        V<rsub|><around*|(|2,d|)> = <frac|2<rsup|>|d>*<frac|2<rsup|d>*\<pi\><rsup|<frac|\<mathd\>|2>>|\<Gamma\><around*|(|<frac|d|2>|)>>
      </equation>

      see into the radio of

      <\equation>
        <frac|V<around*|(|2,d|)>|V<around*|(|2,d-2|)>> =
        <frac|4*\<pi\>|<frac|d|2>-1>
      </equation>

      we can conclude that

      <\proposition*>
        The volume of sphere of radius 2 draws bigger, than smaller, and
        finally goes to

        infinitesimal as the dimension of the space increases.\ 
      </proposition*>
    </indent>

    <\indent>
      When the radius <math|r\<neq\> 2> but remains constant indepent from
      <math|d>, see into the radio

      <\equation>
        <frac|V<around*|(|r,d|)>|V<around*|(|r,d-2|)>> =
        <frac|r<rsup|2>*\<pi\>|<frac|d|2>-1>
      </equation>

      the conclusion goes exactly the same

      <\proposition*>
        The volume of sphere of constant radius draws bigger, than smaller,
        and finally goes to infinitesimal as the dimension of the space
        increases.\ 
      </proposition*>
    </indent>

    <\indent>
      <\note*>
        To be more serious and accurate, there may be
        <math|<around*|(|r,d|)>> with <math|<around*|(|V<around*|(|r,d-1|)>\<less\>V<around*|(|r,d|)>
        \<cap\> V<around*|(|r,d|)> \<gtr\> V<around*|(|r,d+1|)>|)>> for
        <math|V<around*|(|r,d|)>> is not continuous since
        <math|\<Gamma\><around*|(|<frac|d|2>|)>> is not the same for odd and
        even <math|d>, howerver the number of such <math|<around*|(|r,d|)>>
        is countable and rather small.
      </note*>
    </indent>
  </answer>

  <\exercise>
    Consider the upper hemisphere of a unit-radius sphere in
    <math|d>-dimensions. What is the height of the maximum volume cylinder
    that can be placed entirely inside the hemisphere? As you increase the
    height of the cylinder, you need to reduce the cylinder's radius so that
    it will lie entirely within the hemisphere.
  </exercise>

  <\answer>
    \;

    <\indent>
      Denote <math|h> as the height of the cylinder, then the volume of the
      cylinder is

      <\equation>
        V<around*|(|h|)> = h*<around*|(|1-h<rsup|2>|)><rsup|<frac|d-1|2>>*V<around*|(|d-1|)>
        = V<around*|(|d-1|)>*<sqrt|h<rsup|2>*<around*|(|1-h<rsup|2>|)><rsup|d-1>>
      </equation>

      and when <math|>

      <\equation>
        h<rsup|2 > = <frac|1-h<rsup|2>|d-1>
      </equation>

      that is\ 

      <\equation>
        h = <frac|1|<sqrt|d>>
      </equation>

      the volume <math|V<around*|(|h|)>> gets its maximum.
    </indent>
  </answer>
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