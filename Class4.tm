<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <\doc-data|<doc-title|Class Note for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 4
  </doc-subtitle>>
    \;
  <|doc-data>
    \;
  <|doc-data>
    \;
  </doc-data>

  Homework:

  3.11

  search www for an undirected graph or a data base that can be converted tp
  a graph. Find the connected components and count the number of each size.

  <\proposition>
    \;

    another stress! no matter how large the graphy
    <math|G<around*|(|n,<frac|d|n>|)>> is, the expection of triangles in each
    is indepent from n.

    a review for first moment method and second moment argument.
  </proposition>

  <\proposition>
    see into threshole for hamilton circle

    There's <math|<frac|1|2>*<around*|(|n-1|)>!> posible circles(without
    direction) in a n-graphy.\ 

    <math|E<around*|(|x|)> = ><math|<frac|1|2>*<around*|(|n-1|)>!<around*|(|<frac|d|n>|)><rsup|n>\<approx\><around*|(|<frac|n|e>|)><rsup|n><around*|(|<frac|d|n>|)><rsup|n>
    = <around*|(|<frac|d|e>|)><rsup|n>>

    with a thrshole in d=e.

    however usually d = <math|ln n> is a threshole,
  </proposition>

  Next for giant component

  <\proposition>
    ask how much giant component a graph has

    breadth first search

    grenerate the graph with when search the graph! NOT break the
    independence of edges.

    probabity that a vertix is noy discovered in frest i steps is
    <math|<around*|(|1-<frac|d|n>|)><rsup|n>>

    Let <math|Z<rsub|i>> be the number of vertices discovered in i steps.

    <math|Z<rsub|i> = binomial<around*|(|n-1,1-<around*|(|1-<frac|d|n>|)><rsup|n>|)>>.
  </proposition>

  <\proposition>
    if there would be two giant component?

    answer is no.
  </proposition>

  next for Branching process

  <\proposition>
    denote <math|P<rsub|i>> as a root has i children.

    make a generating function of <math|f<around*|(|x|)> =
    <above|<below|\<Sigma\>|i=0>|\<infty\>>p<rsub|i>x<rsup|i>> !see into
    generating function

    to prove <math|f<rsub|j+1><around*|(|x|)> =
    f<rsub|j><around*|(|f<around*|(|x|)>|)>>

    the generating function for <math|x<rsub|1>+x<rsub|2>> where
    <math|x<rsub|1>> and <math|x<rsub|2>> are independent random variable
    with gemerate function <math|f<around*|(|x|)>> is
    <math|f<rsup|2><around*|(|x|)>>.for:

    <math|f<around*|(|x|)> = <above|<below|\<Sigma\>|i=0>|\<infty\>>p<rsub|i>x<rsup|i>>

    <math|f<rsup|2><around*|(|x|)> = p<rsup|2><rsub|0>
    \<noplus\>+<around*|(|p<rsub|0>p<rsub|1>+p<rsub|1>p<rsub|0>|)>*x+<around*|(|p<rsub|0>p<rsub|2>+p<rsub|1>p<rsub|1>+p<rsub|2>p<rsub|0>|)>*x<rsup|2>+\<ldots\>>
    obviously.

    Let <math|z<rsub|j>> be number of children in jth generation.

    \;

    \;
  </proposition>
</body>