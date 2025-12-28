\version "2.18.2"
%\include "predefined-guitar-fretboards.ly"

\header {
  title = "Night Life"
  subtitle = ""
  composer = "Willie Nelson"
  tagline = \markup {
    \column {
      "Night Life by Wille Nelson"
      "Arranged by Dave Botkin and Ivan Gayton"
      "Summerland, BC 2025"
    }
  }
}

turnaround = \chordmode {
  c2
  a2:m
  d2
  g2
}
versechords = \chordmode {
  c1 c:7 f f:m
}
 
changes = \chordmode {
    \turnaround
    \turnaround
    \break
    \versechords
    \turnaround
    \turnaround
}

<<
  \new ChordNames \chordmode {
    \changes
  }
  \new Voice = "chordchanges" \with {
    \consists "Pitch_squash_engraver"
  } \relative c'' {
    \improvisationOn
    c4^\markup {
      \fret-diagram "6-x;5-x;4-10;3-9;2-8;1-8;"
    } 
    c 
    a^\markup {
      \fret-diagram "6-x;5-x;4-x;3-9;2-10;1-8;"
    }
    a | 
    d^\markup {
      \fret-diagram "6-x;5-x;4-12;3-11;2-10;1-10;"
    } 
    d 
    g ^\markup {
      \fret-diagram "6-x;5-8;4-10;3-10;2-10;1-8;"
    }
    g | 
    c c c c | c c c c
    
    c4 c c c | c^\markup {
      \fret-diagram "6-x;5-x;4-10;3-9;2-11;1-8;"
    }
    c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    
  }
  \new Lyrics \lyricsto "chordchanges" {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    When_that 
    ev'nin' _ _ sun_goes down _ _
    Yeah_you'll find me hangin' a round _
    Because the night life
    It ain't_no good life but it's my life
    Yeah, yeah, yeah listen to the blues
    Listen to what the blues are sayin'
    Oh, please listen to the blues
    Listen to the blues they're playin'
    Ah, ah, all of the people just like you and me
    They're all dreamin' about their old used to be
    Because the night life
    It ain't no good life but it's my life
    They tell me life's an empty scene
    An avenue of broken dreams
    Because the night life
    It ain't no good life but it's my life
  }
>>