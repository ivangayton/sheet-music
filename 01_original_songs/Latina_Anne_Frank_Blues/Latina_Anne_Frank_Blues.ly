\version "2.18.2"
melody = \relative c''' {
  \clef treble
  \key e \minor
  \time 4/4

  \partial 4. g8 e \appoggiatura d32 e8~ |
  e8 d8 b bes a g e d b bes a r e g4. | 
  e2~ e8 e'8 r4 | 
  d2~ d8 g'8 e \appoggiatura d32 e8~ | \break
  e8 d8 b bes a g e d b bes a r r a8 bes b~ | 
  b1 |
  b2~ b8 g''8 e \appoggiatura d32 e8~
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

harmonies = \chordmode {
  r4. e1 a1 e1 e1:7 e1 e1 b1:7
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}