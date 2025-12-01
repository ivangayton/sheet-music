\version "2.18.2"

\header {
  title = "Country Roads"
  subtitle = ""
  composer = "John Denver"
  tagline = \markup {
    \column {
      "Country Roads by John Denver"
      "Arranged by Kana Nakamaya"
      "Mishima Mura, Kagoshima, Japan 2021"
    }
  }
}

melodyVerseI = \relative c' {
  r4 d8 d e4 d |
  r4 e8 d e4 g |
  r4 a8 a b4 a | 
  e4 e8 d e4 g |
  r4 d8 d e4 d |
  e8 g g a b4 r4 |
  a4 a8 a8 b4 a4 |
  e8 g8 g8 a8 g4
}

verseI = \lyricmode {
  Al -- most hea -- ven, West Vir -- gin -- ia 
  Blue Ridge Moun -- tains, Shenan -- do -- ah Ri -- ver.
  Life is old here, old -- er than the trees,
  Younger than the moun -- tains, blow -- in' in the breeze.
}

chorus = \lyricmode {
  Coun -- try roads, take me home, to the place I be -- long
  West Vir -- gin -- ia, moun -- tain ma -- ma, take me home coun -- try roads.
}

verseII = \lyricmode {
  All my memo -- ries  ga -- ther 'round her, 
  Mi -- ner's la -- dy, stranger to blue wa -- ter.
  Dark and dus -- ty, pain -- ted on the sky, 
  misty taste of moon -- shine, tear -- drop in my eye.
}

bridge = \lyricmode {  
  I hear her voice, in the mornin' hour she calls me.    
  The radio reminds me of my home far away.    
  And drivin' down the road I get a feelin' that I should have been home 
  yesterday, yesterday.
}

melodyChorus = \relative c' {
  g'8 a |
  b2. b16( a) g8 | 
  a2. b8 a |
  g2. b8 d |
  e2. e8 b |
  d8 b2 r8 b8 g |
  a8 b2 r8 b8 a |
  g2. g8 e |
  g2. r4
}

versechords = \chordmode {
  g1 e:m d c2 g
  g1 e:m d c2 g
}
choruschords = \chordmode {
  g1 d e c 
  g d c g
}
bridgechords = \chordmode {
  e2:m d2 g1
  c2 g2 d1
  e2:m f2 c2 g2  
  d d:7
}


compchords = \chordmode {
  %\set chordChanges = ##t % if no change, don't show
  \versechords \break
  \choruschords \break
  \versechords \break
  \choruschords \break
  \bridgechords \break
  \choruschords \break
  \choruschords \break
  }

voxstaff = \new Staff \with {
  %instrumentName = "Vocal" shortInstrumentName = "Vx"
} <<
  \set Staff.explicitClefVisibility = #'#(#f #t #t)
  \new Voice = "vox" { \autoBeamOff 
                       \melodyVerseI 
                       \melodyChorus 
                       \melodyVerseI
                       \melodyChorus
  }
  \new Lyrics \lyricsto "vox" { 
    \verseI 
    \chorus
    \verseII
    \chorus
    \bridge
    \chorus
    \chorus
    Take me home, country roads.
    Take me home, country roads.
  }
>>

\score {
  <<
    %\new FretBoards { \compchords }
    \new ChordNames { \compchords }
    \voxstaff
    
    
  >>
}


