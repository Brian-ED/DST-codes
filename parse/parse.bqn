l‿t←@+10‿9 # Newline and tab
S←{(1↓𝕨)⊸∾⁼¨⌾(1⊸↓)·×∘≠¨⊸/ 𝕨((⊢-˜+`×¬)∘(≠∘⊢↑⍷)⊔⊢)𝕩}
Disp ← {"o.txt"•FChars 6↓∾´(l∾"----"∾l)⊸∾¨𝕩}

ParseOTXT ← {𝕊:
  Disp (∨`∧∨⟜«)∘≠⟜l⊸/¨(«2≤+`⌾⌽∘=⟜l)⊸/¨⌾(¯1⊸↓) (»2≤+`∘=⟜l)⊸/¨  " — " S •FChars "i.txt"
}

# ????
# does hound wave starter work with worms too?
# unsure if it's that command specifically but there was definitely one command in hounded that does it
# ????

# keyword to crabby hermit: pearl

#TODO: Improve
# Move to the other shard quickly. Extra features: migrate(3, AllPlayers[3]) takes the second joined player to the other third connection. by default it takes MasterSim (world owner) to the other shard's portal (cause 0 is always an invalid id).

#Make world wet. ???(TODO test later).

topOfOutput ← 1↓∾´t∾¨"SYNTAX"‿"DESCRIPTION"‿"CLASS"‿"CATEGORY"‿"KEYWORDS"

ParseAfterManualTXT ← {𝕊:
  o←•FChars "manual.txt"
  "No tabs allowed"!∧´o≠t
  o S˜↩ l‿l
  o S¨˜↩<l∾"----"∾l
  [q,a]←⍉∘>o # Questions, answers
  (∧´'.'=¯1⊑¨q)!˜"Questions must end with punctuation"
  (∧´q⊑¨⊸∊'A'+↕26)!˜"Questions must start with a uppercase letter"
  (∧´{∧´¬('a'+↕26)∊˜⊑¨∾⟜⟨""⟩⁼'.'∾⁼¨('.'⊸=/¯1↓↓)¬∘∊⟜l‿' '⊸/𝕩}¨q)!˜"All letters after punctuation must be uppercase"

  # Gonna make everything one line to make it easier to program with for now:
  [q,a] {1↓∾´' '∾¨ ∨`∘≠⟜' '⊸/¨ ⟨l⟩S𝕩}¨↩
  "parser-output.tsv" •FChars l∾˜topOfOutput∾∾´l∾¨∾⟜t⊸∾¨˝ [a,q]∾3/≍"TODO"¨a
}
ParseAfterManualTXT@
