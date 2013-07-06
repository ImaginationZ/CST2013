<TeXmacs|1.0.7.18>

<style|<tuple|generic|varsession>>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 10
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date|>
  </doc-date>>

  <\exercise>
    Label the points in the plane that are within the circle of radius one as
    <math|+1> and label the points in the annulus of inner radius two and
    outer radius three as <math|-1>. Find a function <math|\<phi\>> mapping
    the points to a higher dimensional space where the two sets are linearly
    separable.
  </exercise>

  <\answer>
    \;

    <\indent>
      Let <math|\<phi\>> be

      <\equation>
        \<phi\><around*|(|x,y|)>= <around*|(|x,y,<sqrt|x<rsup|2>+y<rsup|2>>|)>
      </equation>

      For\ 

      <\equation>
        \<forall\><around*|(|x<rsub|1>,y<rsub|1>|)>,<around*|(|x<rsub|2>,y<rsub|2>|)><around*|(|<around*|(|<around*|(|x<rsub|1>,y<rsub|1>|)>\<neq\><around*|(|x<rsub|2>,y<rsub|2>|)>|)>\<Rightarrow\><around*|(|\<phi\><around*|(|x<rsub|1>,y<rsub|1>|)>\<neq\>\<phi\><around*|(|x<rsub|2>,y<rsub|2>|)>|)>|)>
      </equation>

      And the plane <math|z=1> can separate the two sets.
    </indent>
  </answer>

  \;

  <\exercise>
    Prove that the VC-dimension of circles is three.
  </exercise>

  <\proof>
    \;

    <\indent>
      For the three points forming a triangle as they are not in a line.
      Obviously any set of them can be shattered by a circle. However three
      points in a line cannot be shattered for any cirle containing the
      externel two points, it must contain the internal point.
    </indent>

    <\indent>
      Consider four points. If any three of them stand in a line, they cannot
      be shattered by circles as shown above. In another case, if one point
      is inside the convex hull of the other three points. So let's just
      consider the four points forming a convex quadrangle. We use two
      circles each only consisting two diamond points in this quadrangle.
      This makes the two circles divide the plane into four regions, which is
      not possible.
    </indent>
  </proof>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|language|english>
    <associate|sfactor|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|2|3>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|5|7>>
    <associate|auto-6|<tuple|6|8>>
    <associate|auto-7|<tuple|7|9>>
    <associate|auto-8|<tuple|8|10>>
    <associate|auto-9|<tuple|9|11>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-2|<tuple|2|?>>
    <associate|footnr-3|<tuple|3|?>>
  </collection>
</references>