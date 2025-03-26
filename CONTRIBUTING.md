# Contributing

If something is missing or not right, please submit an issue.

You can also submit a pull request, especially against [table.tsv](table.tsv) — the really simple TSV file database:

- `<`, `>`, `&`, `'`, and `"` are automatically escaped
- rows are separated by line breaks
- line breaks may be CR+LF or just LF
- empty rows are ignored
- trailing line break is required
- columns are separated by tabs (`	`)
- each line should have the same number of tabs (currently 6)

### Example entries from table.tsv

|SYNTAX|DESCRIPTION|CLASS|CATEGORY|KEYWORDS|
|------|-----------|-----|--------|--------|
|local s=TheWorld.Map:GetSize(),l=0;for x=-.5*s,.5*s do for z = -.5*s,.5*s do if TheWorld.Map:IsLandTileAtPoint(4*x,0,4*z)then l=l+1;end end end c_announce(l)|display how many land tiles there are in a world|Query|Query|size area tiles conjugating
|local t=GetRandomItem;GetRandomItem=function()return"greengem"end;c_spawn("ruins_statue_head");GetRandomItem=t |spawn a statue with a specific gem|Spawn|Structure|ruins gem statue head
|c_speedmult(m)|set your speed multiplier to m|Player|Stat|speed run multiplier speedmult *

Keywords aren't required, but providing as many as possible makes it more likely that someone looking for the entry will find it.

<!-- TODO Set up an arguments convention

### Notation for arguments and operands

Note how arguments and operands are given short menmonic names, as follows:

|NAME<br> |PLACEMENT<br><sup>relative to main subject</sub>|TYPE<br><sup>of array</sup>|
| - | - | -|
|x|left|any array|
|y|right|any array (can be on the left in combination with z)|
|z|right|any array (only used when x and y are not enough)|
|m|left|numeric array|
|n|right|numeric array|
|i|left|integer array|
|j|right|integer array|
|a|left|Boolean (0/1)|
|b|right|Boolean (0/1)|
|c|left|character|
|d|right|character|
|F|left|function|
|G|mid|function|
|H|right|function|

A name can optionally be followed by a specification of its rank: 0, 1, or 2 for unit, list, and table.

-->
