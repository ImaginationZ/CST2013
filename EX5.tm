<TeXmacs|1.0.7.18>

<style|<tuple|generic|varsession>>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 5
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date|>
  </doc-date>>

  <\exercise>
    Let <math|x<rsub|i>,1\<leqslant\>i\<leqslant\>n>, be a set of indicator
    variables with identical probability distributions. Let
    <math|x=<above|<below|\<Sigma\>|i=1>|n>x<rsub|i>> and suppose
    <math|E<around*|(|x|)>\<rightarrow\>\<infty\>>. Show that if the
    <math|x<rsub|i>> are statistically independent the
    <math|Prob<around*|(|x=0|)>\<rightarrow\>0>.
  </exercise>

  <\proof>
    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<sigma\><rsup|2><around*|(|x|)>>|<cell|=>|<cell|E<around*|(|x<rsup|2>|)>-E<rsup|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|n*E<around*|(|x<rsup|2><rsub|1>|)>+2*C<rsup|2><rsub|n>E<rsup|2><around*|(|x<rsub|1>|)>-n<rsup|2>*E<rsup|2><around*|(|x<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|n<around*|(|E<around*|(|x<rsub|1><rsup|2>|)>-E<rsup|2><around*|(|x<rsub|1>|)>|)>>>|<row|<cell|>|<cell|=
      >|<cell|n*\<sigma\><rsup|2><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|n|4><eq-number>>>>>
    </eqnarray*>

    <\indent>
      use the Chabyshev's inequality, we have
    </indent>

    <\eqnarray*>
      <tformat|<table|<row|<cell|Prob<around*|(|x=0|)>>|<cell|\<leqslant\>>|<cell|Prob<around*|(|<around*|\||x-E<around*|(|x|)>|\|>\<geqslant\>E<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<dfrac|\<sigma\><rsup|2><around*|(|x|)>|E<rsup|2><around*|(|x|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|n><eq-number>>>>>
    </eqnarray*>

    <\indent>
      thus as n goes to infinity, <math|Prob<around*|(|x=0|)>> goes to zero.
    </indent>
  </proof>

  \;

  <\exercise>
    Consider a model of random subset <math|N<around*|(|n,p|)>> of integers
    <math|<around*|{|1,2,\<ldots\>,n|}>> where, <math|N<around*|(|n,p|)>> is
    the set obtained by independently at random including each of
    <math|<around*|{|1,2,\<ldots\>,n|}>> into the set with probability
    <math|p>. Define what an ``increasing property'' of
    <math|N<around*|(|n,p|)>> means. Prove that every increasing property of
    <math|N<around*|(|n,p|)>> has a threshold.
  </exercise>

  <\answer>
    \;

    <\definition*>
      \;

      <\indent>
        Q is an increasing property of N if when a subset N has the property
        any subset obtained by adding element to N must also have the
        property.
      </indent>
    </definition*>

    <\lemma*>
      Every increasing porperty of <math|N<around*|(|n,p|)>> has a threshold.

      <\proof>
        \;

        <\indent>
          <\lemma>
            If Q is an increasing property and
            <math|0\<leqslant\>p\<leqslant\>q\<leqslant\>1>, then the
            probability that <math|N<around*|(|n,p|)>> has property Q is less
            than or equal to the probability that <math|N<around*|(|n,p|)>>
            has property Q.

            <\proof>
              \;

              <\indent>
                generate <math|N<around*|(|n,q|)>> in this way: first
                generate <math|N<around*|(|n,p|)>>. Then generate
                independently another subset
                <math|N<around*|(|n,<frac|q-p|1-p>|)>> and take the union by
                putting on an element iff at least one of the two subsets has
                that element. We call this union operation replication, and
                call this subset obtained <math|H>.

                We claim that <math|H> has the same distrubition as
                <math|N<around*|(|n,q|)>>. This follows since the probability
                that an element is in <math|H> is
                <math|p+<around*|(|1-p|)>*<frac|q-p|1-p>=q> and clearly the
                elements of <math|H> are in/out independently. Now the lemma
                follows since whenever <math|N<around*|(|n,p|)>> has the
                property Q, <math|H> also has the property Q.
              </indent>
            </proof>
          </lemma>
        </indent>

        <\indent>
          <\lemma>
            Any monotone property Q of <math|N<around*|(|n,p|)>> has a phase
            transition at <math|p<around*|(|n|)>>, where for each n,
            <math|p<around*|(|n|)>> is the minimum real number a for which
            the probability that <math|N<around*|(|n,p|)>> has property Q is
            <math|<frac|1|2>>.
          </lemma>

          <\proof>
            \;

            <\indent>
              Suppose <math|p<rsub|0><around*|(|n|)>> is any function such
              that

              <\equation*>
                <below|lim|n\<rightarrow\>\<infty\>><frac|p<rsub|0><around*|(|n|)>|p<around*|(|n|)>>=0
              </equation*>

              We will show that almost surely
              <math|N<around*|(|n,p<rsub|0>|)>> does not have property Q.
              Suppose this is false. Then the probability that
              <math|N<around*|(|n,p<rsub|0>|)>> has the property Q does not
              converge to zero, so there must be a positive real number
              <math|\<varepsilon\>> such that the probability that
              <math|N<around*|(|n,p<rsub|0>|)>> has property Q is at least
              <math|\<varepsilon\>> on an infinite subsequence I of n.

              Let <math|m = <around*|\<lceil\>|<around*|(|<frac|1|\<varepsilon\>>|)>|\<rceil\>>>.
              Let H be the m-fold replication of
              <math|N<around*|(|n,p<rsub|0>|)>>. For all <math|n\<in\> I>, we
              have

              <\eqnarray*>
                <tformat|<table|<row|<cell|Prob<around*|(|N<around*|(|n,m*p<rsub|0>|)>
                does not have Q|)>>|<cell|\<leqslant\>>|<cell|Prob<around*|(|H
                does not have Q|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|Prob<around*|(|N<around*|(|n,p<rsub|0>|)>
                does not have Q|)>|)><rsup|m>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|1-\<varepsilon\>|)><rsup|m>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|e<rsup|-1>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|2><eq-number>>>>>
              </eqnarray*>

              So for these n, since <math|p<around*|(|n|)>> is the minimum
              real number a for which the probability that
              <math|N<around*|(|n,p|)>> has property Q is <math|<frac|1|2>>,
              <math|m*p<rsub|0>\<geqslant\>p<around*|(|n|)>>. This implies
              that <math|<frac|p<rsub|0><around*|(|n|)>|p<around*|(|n|)>>> is
              at least <math|<frac|1|m>> infinitely contradicting the
              hypothesis that <math|<below|lim|n\<rightarrow\>\<infty\>><frac|p<rsub|0><around*|(|n|)>|p<around*|(|n|)>>=0>.
            </indent>

            \;
          </proof>
        </indent>

        \;
      </proof>
    </lemma*>

    \;
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