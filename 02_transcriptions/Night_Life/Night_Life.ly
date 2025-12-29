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

intro = \chordmode {
  c2 a2:m d2 g2
}
versechords = \chordmode {
  c1 c:7 f f:m
}
turnaround = \chordmode {
  c2 f c g
}
falldown = \chordmode {
  c2 b4 bes a1:m
}
climbup = \chordmode {
  d4 e f ges g1
}
finale = \chordmode {
  c2 f c4 b8 c1:7
}

 
changes = \chordmode {
    \intro \intro \break
    \versechords \intro \intro \break
    \versechords \intro \turnaround \break
    \versechords \intro \break
    \versechords \intro \turnaround \break
    \versechords
    \intro
    \intro
    \versechords
    \falldown
    \climbup
    \falldown
    \climbup
    \finale
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
    c c c c | c c c c | c4 c c c | 
    c%^\markup {
     % \fret-diagram "6-x;5-x;4-10;3-9;2-11;1-8;"
    %}
       c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    c4 c c c | c c c c | c c c c | c c c c
    
  }
  \new Lyrics \lyricsto "chordchanges" {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    When_the ev'nin' _ _ sun_goes down _ _
    you_can find me just hangin'_a round _
    and the night life
    It ain't_a good life but it's my life _ _ _ _ _
    
    Lonely people _ _ just_like me _
    We're dreamin' of old used to be _ _
    and_the night life 
    It ain't a good life but it's my life
    
    Just listen to the blues they're playin
    And then listen to what the blues are sayin'
    
    Well it's just another scene
    from a world of broken dreams
    and the night life
    It ain't no good life but it's my life
    
    When you're livin' all alone
    Once small room to call your home
    And the night life
    it ain't a good life, but it's my life
    Oh yes the night life
    It ain't a good life, but it's my life
    Oh yes the night life
    It ain't the good life, but it's my life
  }
>>