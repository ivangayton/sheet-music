\version "2.24.3"

{
  \repeat unfold 10
  {
    s1
    \break
  }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Staff
    \remove "Clef_engraver"
    \remove "Time_signature_engraver"
    \remove "Bar_engraver"
  }
}

\paper {
  indent = 0
  ragged-last-bottom = ##f
  top-system-spacing = #'((minimum-distance . 10))
  last-bottom-spacing = #'((minimum-distance . 20))
}

\header {
  tagline = ##f
}

