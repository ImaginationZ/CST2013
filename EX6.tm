<TeXmacs|1.0.7.18>

<style|<tuple|generic|varsession>>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 6
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date|>
  </doc-date>>

  <\exercise>
    Modify the proof that every monotone property has a threshold for
    <math|G<around*|(|n,p|)>> to apply to the 3-CNF satisfiability problem.
  </exercise>

  <\answer>
    \;

    <\indent>
      We'll use <math|F<around*|(|n,m|)>> to represent a 3-CNF formula with
      <math|n> variables, <math|m> clauses.

      <\definition>
        The increasing property of unsatisfiability.

        <\indent>
          <math|Q> is the increasing property of <math|F<around*|(|n,m|)>> if
          when a formula <math|F> has the property any formula obtained by
          adding clauses to <math|F> must also have the property.
        </indent>
      </definition>

      <\definition>
        D-fold replication of <math|F<around*|(|n,m|)>>

        <\indent>
          To make an M-fold repilcation <math|F<rsup|><around*|(|n,m<rprime|'>|)>>
          of <math|F<around*|(|n,m|)>>, first make d copies of
          <math|F<around*|(|n,m|)>> with clauses generated independently,
          then include every clause present in any of the d copies into
          <math|F<around*|(|n,m<rprime|'> |)>>.
        </indent>
      </definition>

      <\lemma>
        Let <math|Q> be an increasing property of <math|F<around*|(|n,m|)>>.
        for <math|m<rsub|1>\<less\>m<rsub|2>>

        <\equation*>
          Prob<around*|(|F<around*|(|n,m<rsub|1>|)> has Q|)> \<leqslant\>
          Prob<around*|(|F<around*|(|n,m<rsub|2>|)> has Q|)>
        </equation*>

        <\proof>
          <\indent>
            First we generated <math|F<around*|(|n,m<rsub|1>|)>>, then we
            generate <math|F<around*|(|n,m<rsub|2>-m<rsub|1>|)>>, finally we
            include every clause present in either
            <math|F<around*|(|n,m<rsub|!>|)>> or
            <math|F<around*|(|n,m<rsub|2>-m<rsub|1>|)>> to get the
            <math|F<around*|(|n,m<rsub|2>|)>>. By this mean we know that if
            <math|F<around*|(|n,m<rsub|1>|)>> has property Q
            <math|F<around*|(|n,m<rsub|2>|)>> must has property Q as well.
          </indent>
        </proof>
      </lemma>

      <\theorem*>
        Every increasing property Q of <math|F<around*|(|n,m<around*|(|n|)>|)>>
        has a threshold at <math|m<around*|(|n|)>=a>, where for each n, a is
        the minimum real number such that\ 

        <\equation*>
          Prob<around*|(|F<around*|(|n,a|)> has Q|)> = <frac|1|2>
        </equation*>

        <\proof>
          \;

          <\indent>
            Let <math|m<rsub|0><around*|(|n|)>> be any function such that
            <math|<below|lim|n\<rightarrow\>\<infty\>><frac|m<rsub|0><around*|(|n|)>|m<around*|(|n|)>>
            = 0>. We need to prove that

            <\equation>
              <below|lim|n\<rightarrow\>\<infty\>>Prob<around*|(|F<around*|(|n,m<rsub|0><around*|(|n|)>|)>
              has Q|)>= 0
            </equation>

            Assume that <math|Prob<around*|(|F<around*|(|n,m<rsub|0><around*|(|n|)>|)>
            has Q|)>> does not converge to zero as n goes to infinity. Then
            there must be a infinity subsequence I of n such that \ 

            <\equation>
              \<exists\> \<varepsilon\>\<gtr\>0\<nocomma\>\<nocomma\>\<forall\>
              n\<in\>I Prob<around*|(|F<around*|(|n,m<rsub|0><around*|(|n|)>|)>
              has Q|)>\<gtr\>\<varepsilon\>
            </equation>

            Let <math|d = <around*|\<lceil\>|<frac|1|\<varepsilon\>>|\<rceil\>>>,
            and let <math|F<rsup|><around*|(|n,m<rprime|'><around*|(|n|)>|)>>
            be the d-fold replication of <math|F<around*|(|n,m<rsub|0><around*|(|n|)>|)>>.
            Similar proof to Lemma 3 we have

            <\equation>
              Prob<around*|(|F<around*|(|n,m<rprime|'><around*|(|n|)>|)> dose
              not have Q|)>\<leqslant\> <around*|(|Prob<around*|(|F<around*|(|n,m<rsub|0><around*|(|n|)>|)>
              does not have Q|)>|)><rsup|d>
            </equation>

            while

            <\equation>
              m<rprime|'><around*|(|n|)> =
              1-<around*|(|1-m<rsub|0><around*|(|n|)>|)><rsup|d>\<leqslant\>d*m<rsub|0><around*|(|n|)>
            </equation>

            so that

            <\eqnarray*>
              <tformat|<table|<row|<cell|Prob<around*|(|F<around*|(|n,d*m<rsub|0><around*|(|n|)>|)>
              does not have Q|)>>|<cell|\<leqslant\>>|<cell|<around*|(|Prob<around*|(|F<around*|(|n,m<rsub|0><around*|(|n|)>|)>
              does not have Q|)>|)><rsup|d>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|1-\<varepsilon\>|)><rsup|d>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|e>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|2><eq-number>>>>>
            </eqnarray*>

            For infinity many n, since <math|m<around*|(|n|)>> is the minimum
            that <math|Prob<around*|(|F<around*|(|n,m<around*|(|n|)>|)> has
            Q|)> = <frac|1|2>>, by Lemma 3,
            <math|d*m<rsub|0><around*|(|n|)>\<geqslant\>m<around*|(|n|)>>,
            which contradicts the hypothesis that
            \ <math|<below|lim|n\<rightarrow\>\<infty\>><frac|m<rsub|0><around*|(|n|)>|m<around*|(|n|)>>
            = 0>.
          </indent>

          \;
        </proof>
      </theorem*>
    </indent>
  </answer>

  <\exercise>
    Verify that the sum of r rank-one matrices
    <em|<math|<below|<above|<big|sum>|r>|i=1>\<sigma\><rsub|i>*<strong|u><rsub|i>*<strong|\<upsilon\>><rsup|T><rsub|i>>>
    can be written as <math|<strong|U*D*V><rsup|T>>, where the
    <math|<strong|u><rsub|i>> are the columns of <math|<strong|U>> and
    <math|<strong|\<upsilon\>><rsub|i>> are the columns of <math|<strong|V>>.
    To do this, first verify that for any two matrices <math|<strong|P>> and
    <strong|Q>, we have\ 

    <\equation*>
      \<b-P\>*\<b-Q\> <rsup|T>= <below|<big|sum>|i>\<b-p\><rsub|i>*\<b-q\><rsup|T><rsub|i>
    </equation*>

    where <math|\<b-p\><rsub|i>> is the <math|i<rsup|th>> column of
    <math|\<b-P\>> and <math|\<b-q\><rsub|i>> is the <math|i<rsup|th>> column
    of <math|\<b-Q\>>.
  </exercise>

  <\answer>
    \;

    <\indent>
      First we prove <math|\<b-P\>*\<b-Q\> <rsup|T>=
      <below|<big|sum>|i>\<b-p\><rsub|i>*\<b-q\><rsup|T><rsub|i>>.

      <\proof>
        \;

        Let <math|\<b-A\> = \<b-P\>*\<b-Q\> <rsup|T>> and <math|\<b-B\> =
        <below|<big|sum>|i>\<b-p\><rsub|i>*\<b-q\><rsup|T><rsub|i>>. Then

        <\equation>
          a<rsub|i j> = <below|<above|<big|sum>|r>|k=1>p<rsub|i k>*q<rsub|j
          k>
        </equation>

        and

        <\eqnarray*>
          <tformat|<table|<row|<cell|b<rsub|i
          j>>|<cell|=>|<cell|<below|<above|<big|sum>|r>|i=1><around*|(|\<b-p\><rsub|i>*\<b-q\><rsup|T><rsub|i>|)><rsub|i
          j><eq-number>>>|<row|<cell|>|<cell|=>|<cell|<below|<above|<big|sum>|r>|k=1>p<rsub|i
          k>*q<rsub|j k>>>>>
        </eqnarray*>

        so we have

        <\equation>
          a<rsub|i j> = b<rsub|i j>
        </equation>

        which is\ 

        <\equation>
          \<b-P\>*\<b-Q\> <rsup|T>= <below|<big|sum>|i>\<b-p\><rsub|i>*\<b-q\><rsup|T><rsub|i>
        </equation>

        \;
      </proof>
    </indent>

    <\indent>
      Then we prove <math|<below|<above|<big|sum>|r>|i=1>\<sigma\><rsub|i>*<strong|u><rsub|i>*<strong|\<upsilon\>><rsup|T><rsub|i>
      = <strong|U*D*V><rsup|T>>.

      <\proof>
        \;

        Let <math|\<b-A\> = <strong|U*D*V><rsup|T>> and <math|\<b-B\> =
        <below|<above|<big|sum>|r>|i=1>\<sigma\><rsub|i>*<strong|u><rsub|i>*<strong|\<upsilon\>><rsup|T><rsub|i>>.
        Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|b<rsub|i
          j>>|<cell|=>|<cell|<big|sum><rsup|r><rsub|i=1><around*|(|\<sigma\><rsub|i>*<strong|u><rsub|i>*<strong|\<upsilon\>><rsup|T><rsub|i>|)><rsub|i
          j>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><rsub|i>*<big|sum><rsup|r><rsub|k
          =1>u<rsub|i k>*v<rsub|j k>>>>>
        </eqnarray*>

        so if we let <math|\<b-D\>> be a diagonal matrix with

        <\equation>
          d<rsub|i i> = \<sigma\><rsub|i>
        </equation>

        we can find that

        <\equation>
          a<rsub|i j> = <big|sum><rsup|r><rsub|k =1>u<rsub|i
          k>*\<sigma\><rsub|i>*v<rsub|j k>
        </equation>

        which is

        <\equation>
          \<b-A\> = \<b-B\>
        </equation>

        \;
      </proof>
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
    <associate|auto-1|<tuple|1|3>>
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