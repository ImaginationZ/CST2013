<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <\doc-data|<doc-title|Class Note for>|<\doc-subtitle>
    Computer Science Theory for the Information Age

    Day 5
  </doc-subtitle>>
    \;

    dd

    d<inactive|<hybrid|dsadsa\\\\>>

    \;

    \;
  <|doc-data>
    \;
  <|doc-data>
    \;
  </doc-data>

  HW 3.19 and 3.30

  <\proposition>
    Phase transitions for incresaing propertions.

    Define Q is an increasing property if when graph has property Q,adding to
    the graph, the graph will still have property Q.

    <\lemma>
      If Q is an increasing property, and
      <math|1\<geqslant\>q\<geqslant\>P\<geqslant\>0> the probability
      <math|G<around*|(|n,q|)>> has Q is greater than probability
      <math|G<around*|(|n,p|)>> has Q.

      <\proof>
        \;

        generate <math|G<around*|(|n,p|)>> and
        <math|G<around*|(|n,<frac|q-p|1-p>|)>>.

        Let H be union of the two graphs. We can prove that <math|H \<equiv\>
        G<around*|(|n,q|)>>.

        For <math|p+<around*|(|1-p|)>*<frac|q-p|1-p> = q.>
      </proof>
    </lemma>
  </proposition>

  <\proposition>
    m-fold replication

    generate m copies of <math|G<around*|(|n,p|)>>.

    include edge in m-fold replication if it exsits in any copy of
    <math|G<around*|(|n,p|)>>.

    resulting has same distrbution has <math|G<around*|(|n,p|)>> where
    <math|q = 1-<around*|(|1-p|)><rsup|m>>.
  </proposition>

  <\proposition>
    \;

    If m-fold replication does not have Q then none of m copies have Q.

    However m-fold replication might have property even if none of m graphs
    have property.

    <math|Prob<around*|(|G<around*|(|n,q|)> does not have Q|)> \<leqslant\>
    <around*|(|Prob<around*|(|G<around*|(|n,p|)> does not have
    Q|)>|)><rsup|m>>
  </proposition>

  <\theorem>
    Any increasing property Q has a phase transition <math|p<around*|(|n|)>>
    where <math|p<around*|(|n|)>> is mininum <math|a<rsub|n>> such that
    <math|G<around*|(|n,a<rsub|n>|)>> has Q with probability 0.5.

    <\proof>
      Let <math|p<rsub|0><around*|(|n|)>> be any function such that
      <math|lim<frac|P<rsub|0><around*|(|n|)>|P<around*|(|n|)>> =
      0\<nocomma\>\<nocomma\>>, need to show that almost surely
      <math|G<around*|(|n,p<rsub|0>|)>> does not have Q.

      proof by contrudiction: <math|Prob<around*|(|G<around*|(|n,p|)> has
      Q|)>> does not converge to zero.suppose\ 

      <math|\<exists\> \<varepsilon\>\<gtr\>0\<nocomma\>\<nocomma\> For
      infinitely many n Prob<around*|(|G<around*|(|n,p|)>has
      Q|)>\<gtr\>\<varepsilon\>>

      Let I be set of n.

      Let <math|m = <around*|\<lceil\>|<frac|1|\<varepsilon\>>|\<rceil\>>>.

      Let <math|G<around*|(|n,p|)>> be m-fold replication of
      <math|G<around*|(|n,p<rsub|0>|)>>.

      <math|Prob<around*|(|G<around*|(|n,p|)> does not have
      Q|)>\<leqslant\><around*|(|1-\<varepsilon\>|)><rsup|m>\<leqslant\><frac|1|e>\<leqslant\><frac|1|2>>

      <math|Prob<around*|(|G<around*|(|n,m*p<rsub|0>|)> has
      Q|)>\<geqslant\>><math|Prob<around*|(|G<around*|(|n,p|)> has
      Q|)>\<geqslant\><frac|1|2>>

      Since <math|P<around*|(|n|)>> is smallest <math|a<rsub|n>> such that
      <math|G<around*|(|n,a<rsub|n>|)> >has Q with probability 0.5, it mush
      be <math|m*p<rsub|0>\<gtr\> a<rsub|n>= p<around*|(|n|)>>.

      so <math|<frac|p<rsub|0><around*|(|n|)>|p<around*|(|n|)>>\<geqslant\><frac|1|m>>
    </proof>
  </theorem>

  <\lemma>
    Expected size of extinct family is finite

    <\proof>
      Let <math|Z<rsub|i>> be random variable indicating number of children
      in i-th generation.

      <math|Prob<around*|(|Z<rsub|i> = k\| extinction|)>
      =<dfrac|Prob<around*|(| extinction\| Z<rsub|i > =
      k|)>*Prob<around*|(|Z<rsub|i> = k|)>|Prob<around*|(|extinction|)>>>
    </proof>

    <math|= <frac|q<rsup|k>*p<rsub|k>|q> =q<rsup|k-1>p<rsub|k>>

    <math|E<around*|(|Z<rsub|i> \| extinction|)> = \<Sigma\>>
  </lemma>
</body>