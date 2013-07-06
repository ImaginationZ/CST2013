<TeXmacs|1.0.7.18>

<style|<tuple|generic|varsession>>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 9
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date|>
  </doc-date>>

  <\exercise>
    Consider a random walk on the positive half line, that is the integers
    <math|1,2,3,\<ldots\>,>. At the origin, always move right one step. At
    all other integers move right with probability <math|2/3> and left with
    probability <math|1/3>. What is the escape probabilty?
  </exercise>

  <\answer>
    \;

    <\indent>
      Take the line as a link of server resistances. As the fraction of
      moving probability at vertex <math|v<rsub|i>> indicates the fraction of
      the resistance left to the right, let the first resistance at the right
      of <math|v<rsub|1>> be one, the resistances follow

      <\equation>
        r<rsub|i> = <around*|(|<frac|1|2>|)><rsup|i-1>
      </equation>

      From the relationship between the <strong|effective resistance> and
      <strong|escape probability><\footnote>
        <em|Computer Science Theory for the Information Age>, P142
      </footnote> we know

      <\equation>
        P<rsub|escape>=<frac|r<rsub|1>|r<rsub|effect>>
      </equation>

      where <math|r<rsub|1>=1>, the effective resistance between vertex
      <math|v<rsub|i>> and the right infinate far point <math|r<rsub|effect>>
      follows

      <\eqnarray*>
        <tformat|<table|<row|<cell|r<rsub|effect> >|<cell|=>|<cell|
        <below|<above|<big|sum>|\<infty\>>|i=1><around*|(|<frac|1|2>|)><rsup|i-1>>>|<row|<cell|>|<cell|=>|<cell|2<eq-number>>>>>
      </eqnarray*>

      so the escape probabilty is\ 

      <\equation>
        P<rsub|escape>=<frac|r<rsub|1>|r<rsub|effect>> =<frac|1|2>
      </equation>
    </indent>
  </answer>

  \;

  <\exercise>
    Using the Metropolis-hasting Algorithm create a Markov chain whose
    stationary probability is that given in the following table.

    <block*|<tformat|<cwith|1|1|1|1|cell-hyphen|n>|<cwith|1|1|1|1|cell-width|>|<cwith|1|1|1|1|cell-hmode|auto>|<table|<row|<cell|<math|x<rsub|1>*x<rsub|2>>>|<cell|00>|<cell|01>|<cell|02>|<cell|10>|<cell|11>|<cell|12>|<cell|20>|<cell|21>|<cell|22>>|<row|<cell|Prob>|<cell|<math|1/16>>|<cell|<math|1/8>>|<cell|<math|1/16>>|<cell|<math|1/8>>|<cell|<math|1/4>>|<cell|<math|1/8>>|<cell|<math|1/16>>|<cell|<math|1/8>>|<cell|<math|1/16>>>>>>
  </exercise>

  <\answer>
    \;

    <\indent>
      The transition matrix is

      <\equation>
        P = <matrix|<tformat|<cwith|1|6|4|4|cell-background|darker
        grey>|<cwith|1|1|4|9|cell-background|darker
        grey>|<cwith|2|3|6|9|cell-background|darker
        grey>|<cwith|4|6|7|8|cell-background|darker
        grey>|<cwith|4|5|9|9|cell-background|darker
        grey>|<cwith|5|5|8|8|cell-background|>|<cwith|3|3|4|6|cell-background|darker
        grey>|<cwith|4|4|2|3|cell-background|darker
        grey>|<cwith|4|5|3|3|cell-background|darker
        grey>|<cwith|5|9|1|1|cell-background|darker
        grey>|<cwith|7|9|1|3|cell-background|darker
        grey>|<cwith|6|6|2|2|cell-background|darker
        grey>|<cwith|6|9|7|7|cell-background|darker
        grey>|<cwith|7|7|9|9|cell-background|darker
        grey>|<cwith|7|8|6|6|cell-background|darker
        grey>|<cwith|9|9|4|5|cell-background|darker
        grey>|<cwith|8|8|4|4|cell-background|darker
        grey>|<cwith|7|7|5|5|cell-background|darker
        grey>|<table|<row|<cell|<frac|1|2>>|<cell|<frac|1|4>>|<cell|<frac|1|4>>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|8>>|<cell|<frac|1|2>>|<cell|<frac|1|8>>|<cell|0>|<cell|<frac|1|4>>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|4>>|<cell|<frac|1|2>>|<cell|<frac|1|4>>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|8>>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|1|4>>|<cell|<frac|1|8>>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|1|8>>|<cell|0>|<cell|0>|<cell|<frac|1|2>>|<cell|<frac|1|8>>|<cell|0>|<cell|<frac|1|8>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|1|8>>|<cell|0>|<cell|<frac|1|4>>|<cell|<frac|1|2>>|<cell|0>|<cell|0>|<cell|<frac|1|8>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|1|4>>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|1|4>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|1|4>>|<cell|0>|<cell|0>|<cell|<frac|1|2>>|<cell|<frac|1|8>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<frac|1|4>>|<cell|0>|<cell|<frac|1|4>>|<cell|<frac|1|2>>>>>>
      </equation>

      where

      <\equation>
        \<b-v\>= <around*|(|v<rsub|00>,v<rsub|01>,v<rsub|02>,v<rsub|10>,v<rsub|11>,v<rsub|12>,v<rsub|20>,v<rsub|21>,v<rsub|22>|)>
      </equation>
    </indent>
  </answer>

  \;
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