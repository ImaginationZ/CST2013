<TeXmacs|1.0.7.18>

<style|<tuple|generic|varsession>>

<\body>
  <doc-data|<doc-title|Assignment for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 7
  </doc-subtitle>|<doc-author|<author-data|<author-name|Zen
  Huang>|<\author-affiliation>
    5120309027

    2012 ACM class<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<abbr|<strong|<abbr|<strong|<abbr|<strong|>>>>>>>>>>>>>
  </author-affiliation>>>|<\doc-date>
    <date|>
  </doc-date>>

  <\exercise>
    Suppose <math|\<b-A\>> is an <math|n\<times\>n> matrix with block
    diagonal structure with <math|k> equal size blocks where all entries of
    the <math|i<rsup|th>> block are <math|a<rsub|i>> with
    <math|a<rsub|1>\<gtr\>a<rsub|2>\<gtr\>\<ldots\>\<gtr\>a<rsub|k>\<gtr\>0>.
    Show that <math|\<b-A\>> has exactly <math|k> nonzero sigular vectors
    <math|\<b-v\><rsub|1>,\<b-v\><rsub|2>,\<ldots\>,\<b-v\><rsub|k>> where
    <math|\<b-v\><rsub|i>> has the value <math|<around*|(|<frac|k|n>|)><rsup|1/2>>
    in the coordinates corresponding to the <math|i<rsup|th>> block and 0
    elsewhere. In other words, the singualr vectors exactly identify the
    blocks of the diagonal. What happens if
    <math|a<rsub|1>=a<rsub|2>=\<ldots\>=a<rsub|k>>? In the case where the
    <math|a<rsub|i>> are equal, what is the structure of the set of all
    possible singular vectors?
  </exercise>

  <\answer>
    \;

    <\indent>
      Let <math|\<b-v\><rsub|1> = <matrix|<tformat|<twith|table-hyphen|n>|<twith|table-lsep|4>|<twith|table-rsep|4>|<twith|table-bsep|4>|<twith|table-tsep|4>|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|x<rsub|n>>>>>>>
      with <math|x<rsup|2><rsub|1>+x<rsub|2><rsup|2>+\<cdots\>+x<rsub|n><rsup|2>
      = 1>, then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||\<b-A\>*\<b-v\><rsub|1>|\|>>|<cell|=>|<cell|<sqrt|<frac|n|k>*<around*|(|<below|<above|<big|sum>|<frac|n|k>>|i=1>a<rsub|1>*x<rsub|i>|)><rsup|2>+<frac|n|k>*<around*|(|<below|<above|<big|sum>|2*<frac|n|k>>|i=<frac|n|k>+1>a<rsub|2>*x<rsub|i>|)><rsup|2>+\<cdots\>+<frac|n|k>*<around*|(|<below|<above|<big|sum>|k*<frac|n|k>>|i=<around*|(|k-1|)>*<frac|n|k>+1>a<rsub|k>*x<rsub|i>|)><rsup|2>|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|n|k>*<sqrt|*a<rsup|2><rsub|1>*<around*|(|<below|<above|<big|sum>|<frac|n|k>>|i=1>x<rsup|2><rsub|i>|)><rsup|>+a<rsup|2><rsub|2>*<around*|(|<below|<above|<big|sum>|2*<frac|n|k>>|i=<frac|n|k>+1>x<rsup|2><rsub|i>|)>+\<cdots\>+a<rsup|2><rsub|k>*<around*|(|<below|<above|<big|sum>|k*<frac|n|k>>|i=<around*|(|k-1|)>*<frac|n|k>+1>x<rsup|2><rsub|i>|)>|>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|n|k>*<sqrt|a<rsup|2><rsub|1>*<rsup|>>>>|<row|<cell|>|<cell|=>|<cell|<frac|n*a<rsub|1>|k>>>>>
      </eqnarray*>

      Then when <math|x<rsub|1>= x<rsub|2> =
      \<cdots\>=x<rsub|<frac|n|k>>=<sqrt|<frac|n|k>>> and for the else
      <math|x<rsub|i> = 0> the <math|<around*|\||\<b-A\>*\<b-v\><rsub|1>|\|>>
      reaches its maximum. So we have <math|\<b-v\><rsub|1>=
      <matrix|<tformat|<table|<row|<cell|<sqrt|<frac|n|k>>>>|<row|<cell|<sqrt|<frac|n|k>>>>|<row|<cell|\<vdots\>>>|<row|<cell|<sqrt|<frac|n|k>>>>|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>>
      with <math|\<sigma\><rsub|1> = <frac|n*a<rsub|1>|k>>.
    </indent>

    <\indent>
      Then let <math|\<b-v\><rsub|2>=<matrix|<tformat|<table|<row|<cell|y<rsub|1>>>|<row|<cell|y<rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|y<rsub|n>>>>>>>
      be another unit vector perpendicular to <math|\<b-v\><rsub|1>> so with

      <\eqnarray*>
        <tformat|<table|<row|<cell|y<rsup|2><rsub|1>+y<rsub|2><rsup|2>+\<cdots\>+y<rsup|2><rsub|n>>|<cell|=>|<cell|1>>|<row|<cell|y<rsub|1>+y<rsub|2>+\<cdots\>+y<rsub|<frac|n|k>>>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||\<b-A\>*\<b-v\><rsub|2>|\|>>|<cell|=>|<cell|<sqrt|<frac|n|k>*<around*|(|<below|<above|<big|sum>|<frac|n|k>>|i=1>a<rsub|1>*y<rsub|i>|)><rsup|2>+<frac|n|k>*<around*|(|<below|<above|<big|sum>|2*<frac|n|k>>|i=<frac|n|k>+1>a<rsub|2>*y<rsub|i>|)><rsup|2>+\<cdots\>+<frac|n|k>*<around*|(|<below|<above|<big|sum>|k*<frac|n|k>>|i=<around*|(|k-1|)>*<frac|n|k>+1>a<rsub|k>*y<rsub|i>|)><rsup|2>|>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|0+<frac|n|k>*<around*|(|<below|<above|<big|sum>|2*<frac|n|k>>|i=<frac|n|k>+1>a<rsub|2>*y<rsub|i>|)><rsup|2>+\<cdots\>+<frac|n|k>*<around*|(|<below|<above|<big|sum>|k*<frac|n|k>>|i=<around*|(|k-1|)>*<frac|n|k>+1>a<rsub|k>*y<rsub|i>|)><rsup|2>|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|n|k>*<sqrt|*a<rsup|2><rsub|2>*<around*|(|<below|<above|<big|sum>|2*<frac|n|k>>|i=<frac|n|k>+1>y<rsup|2><rsub|i>|)><rsup|>+a<rsup|2><rsub|3>*<around*|(|<below|<above|<big|sum>|3*<frac|n|k>>|i=2*<frac|n|k>+1>y<rsup|2><rsub|i>|)>+\<cdots\>+a<rsup|2><rsub|k>*<around*|(|<below|<above|<big|sum>|k*<frac|n|k>>|i=<around*|(|k-1|)>*<frac|n|k>+1>y<rsup|2><rsub|i>|)>|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|n|k>*<sqrt|a<rsup|2><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|n*a<rsub|2>|k>>>>>
      </eqnarray*>

      \ Then when <math|y<rsub|<frac|n|k>+1>= y<rsub|<frac|n|k>+2> =
      \<cdots\>=y<rsub|2*<frac|n|k>>=<sqrt|<frac|n|k>>> and for the else
      <math|y<rsub|i> = 0> the <math|<around*|\||\<b-A\>*\<b-v\><rsub|2>|\|>>
      reaches its maximum. So we have <math|\<b-v\><rsub|2>=
      <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>|<row|<cell|<sqrt|<frac|n|k>>>>|<row|<cell|<sqrt|<frac|n|k>>>>|<row|<cell|\<vdots\>>>|<row|<cell|<sqrt|<frac|n|k>>>>|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>>
      with <math|\<sigma\><rsub|2> = <frac|n*a<rsub|2>|k>>.
    </indent>

    <\indent>
      Similarly for all the else <math|\<b-v\><rsub|i>>, when the
      <math|<around*|(|<around*|(|i-1|)>*<frac|n|k>+1|)><rsup|th>\<sim\><around*|(|i*<frac|n|k>|)><rsup|th>>
      component if <math|\<b-v\><rsub|i>> is <math|<sqrt|<frac|n|k>>> and all
      the other compoents are zero, the <math|<around*|\||\<b-A\>*\<b-v\><rsub|i>|\|>>
      reaches its maximum with <math|\<sigma\><rsub|i>=
      <frac|n*a<rsub|i>|k>>.
    </indent>

    \;

    <\indent>
      When under the situation that <math|a<rsub|1>=a<rsub|2>=\<ldots\>=a<rsub|k>
      = a<rsub|0>>, let <math|\<b-v\><rsub|i> =
      <matrix|<tformat|<twith|table-hyphen|n>|<twith|table-lsep|4>|<twith|table-rsep|4>|<twith|table-bsep|4>|<twith|table-tsep|4>|<table|<row|<cell|x<rsub|1>>>|<row|<cell|x<rsub|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|x<rsub|n>>>>>>>
      with <math|x<rsup|2><rsub|1>+x<rsub|2><rsup|2>+\<cdots\>+x<rsub|n><rsup|2>
      = 1>, then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||\<b-A\>*\<b-v\><rsub|i>|\|>>|<cell|=>|<cell|<sqrt|<frac|n|k>*<around*|(|<below|<above|<big|sum>|<frac|n|k>>|i=1>a<rsub|1>*x<rsub|i>|)><rsup|2>+<frac|n|k>*<around*|(|<below|<above|<big|sum>|2*<frac|n|k>>|i=<frac|n|k>+1>a<rsub|2>*x<rsub|i>|)><rsup|2>+\<cdots\>+<frac|n|k>*<around*|(|<below|<above|<big|sum>|k*<frac|n|k>>|i=<around*|(|k-1|)>*<frac|n|k>+1>a<rsub|k>*x<rsub|i>|)><rsup|2>|>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>*<sqrt|<frac|n|k>>*<sqrt|<around*|(|<below|<above|<big|sum>|<frac|n|k>>|i=1>x<rsub|i>|)><rsup|2>+<around*|(|<below|<above|<big|sum>|2*<frac|n|k>>|i=<frac|n|k>+1>*x<rsub|i>|)><rsup|2>+\<cdots\>+<around*|(|<below|<above|<big|sum>|k*<frac|n|k>>|i=<around*|(|k-1|)>*<frac|n|k>+1>x<rsub|i>|)><rsup|2>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|n*a<rsub|0>|k><sqrt|<below|<above|<big|sum>|n>|i=1>x<rsup|2><rsub|i>>*>>|<row|<cell|>|<cell|=>|<cell|<frac|n*a<rsub|0>|k>>>>>
      </eqnarray*>

      When <math|\<b-v\><rsub|i>> has some constant
      <math|<around*|(|<around*|(|i-1|)>*<frac|n|k>+1|)><rsup|th>\<sim\><around*|(|i*<frac|n|k>|)><rsup|th>>
      components with equal vaule and all the nonzero components' square
      value add up to 1, <math|<around*|\||\<b-A\>*\<b-v\><rsub|i>|\|>>
      reaches its maxmimum. So all possible singular vectors are a set of
      orthonormal basis on the space formed by
      <math|\<b-v\><rsub|1>\<sim\>\<b-v\><rsub|k>> given below.
    </indent>
  </answer>

  <\exercise>
    Computer the singlar valued decomposition of the matrix

    <\equation*>
      \<b-A\> = <matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>
    </equation*>
  </exercise>

  <\answer>
    \;

    <\indent>
      We caculate the engenvectors and engenvalues of
      <math|\<b-A\><rsup|T>*\<b-A\>>.

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<b-A\><rsup|T>*\<b-A\>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|2>|<cell|4>>>>>*<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|10>|<cell|14>>|<row|<cell|14>|<cell|20>>>>>>>>>
      </eqnarray*>

      By

      <\equation*>
        <around*|\||\<lambda\>*I-\<b-A\><rsup|T>*\<b-A\>|\|>=
        <around*|\||<matrix|<tformat|<table|<row|<cell|\<lambda\>-10>|<cell|-14>>|<row|<cell|-14>|<cell|\<lambda\>-20>>>>>|\|>=0
      </equation*>

      We have <math|\<sigma\><rsub|1>=\<lambda\><rsub|1> =
      <sqrt|15+<sqrt|221>>> and <math|\<sigma\><rsub|2>=\<lambda\><rsub|2>=<sqrt|15-<sqrt|221>>>.

      By caculating the engenvector

      <\equation*>
        <around*|(|\<lambda\>*I-\<b-A\><rsup|T>*\<b-A\>|)>*\<b-v\>=\<b-0\>
      </equation*>

      We have <math|\<b-v\><rsub|1>=<matrix|<tformat|<table|<row|<cell|<sqrt|<frac|<sqrt|221>-5|2*<sqrt|221>>>>>|<row|<cell|<sqrt|<frac|<sqrt|221>+5|2*<sqrt|221>>>>>>>>>
      and <math|\<b-v\><rsub|2>=<matrix|<tformat|<table|<row|<cell|-<sqrt|<frac|<sqrt|221>+5|2*<sqrt|221>>>>>|<row|<cell|<sqrt|<frac|<sqrt|221>-5|2*<sqrt|221>>>>>>>>>.

      And so <math|\<b-u\><rsub|1>= <frac|\<b-A\>*\<b-v\><rsub|1>|\<sigma\><rsub|1>>=<matrix|<tformat|<table|<row|<cell|<sqrt|<frac|<sqrt|221>-10|2*<sqrt|221>>>>>|<row|<cell|<sqrt|<frac|<sqrt|221>+10|2*<sqrt|221>>>>>>>>>
      and <math|\<b-u\><rsub|2>= <frac|\<b-A\>*\<b-v\><rsub|2>|\<sigma\><rsub|2>>=<matrix|<tformat|<table|<row|<cell|<sqrt|<frac|<sqrt|221>+10|2*<sqrt|221>>>>>|<row|<cell|-<sqrt|<frac|<sqrt|221>-10|2*<sqrt|221>>>>>>>>>
      .

      So

      <\eqnarray*>
        <tformat|<cwith|1|-1|1|-1|cell-width|>|<cwith|1|-1|1|-1|cell-hmode|auto>|<cwith|1|-1|1|-1|cell-halign|l>|<cwith|1|-1|1|-1|cell-hyphen|n>|<table|<row|<cell|\<b-A\>>|<cell|=>|<cell|\<b-U\>*\<b-D\>*\<b-V\><rsup|T>>>|<row|<cell|>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|<sqrt|<frac|<sqrt|221>-10|2*<sqrt|221>>>>|<cell|<sqrt|<frac|<sqrt|221>+10|2*<sqrt|221>>>>>|<row|<cell|<sqrt|<frac|<sqrt|221>+10|2*<sqrt|221>>>>|<cell|-<sqrt|<frac|<sqrt|221>-10|2*<sqrt|221>>>>>>>>*<matrix|<tformat|<cwith|1|-1|1|-1|cell-hyphen|t>|<table|<row|<\cell>
          <sqrt|15+<sqrt|221>>
        </cell>|<\cell>
          0
        </cell>>|<row|<\cell>
          0
        </cell>|<\cell>
          <sqrt|15-<sqrt|221>>
        </cell>>>>>*<matrix|<tformat|<table|<row|<cell|<sqrt|<frac|<sqrt|221>-5|2*<sqrt|221>>>>|<cell|<sqrt|<frac|<sqrt|221>+5|2*<sqrt|221>>>>>|<row|<cell|-<sqrt|<frac|<sqrt|221>+5|2*<sqrt|221>>>>|<cell|<sqrt|<frac|<sqrt|221>-5|2*<sqrt|221>>>>>>>>>>>>
      </eqnarray*>
    </indent>
  </answer>

  \;
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