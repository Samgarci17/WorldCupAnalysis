# WorldCupAnalysis
Identifying interesting trends in past World Cup knockout stages. Ranking the difficulty of the groups in the group stages of the 2026 World Cup.

SUMMARY
Initially, the groups were ranked using an average group rating calculated by using the FIFA ranking of each team in the group. This rating had one obvious problem, some of the groups with the lowest average rating were top heavy and were a result of two poorly ranked teams and two highly ranked teams. This lead to a low average rating but the true difficulty of the group is expected to be low as both high ranked teams are likely to go through to the next stage. I then used STDEV for the difficulty rating so that a difficult group would consist of all four teams nearest each other meaning the group has the most competition for its two winner positions. Looking for trends among venues and goals scored,

DATA
wc_all_matches — CSV from Kaggle dataset, description "183 matches Full match-level data including teams, scores, stage, venue, city, country, date, and match notes." used in stadium analysis
wc_2026_teams — VSC from Kaggle dataset, description "48 qualified teams Group assignment, confederation, FIFA rank, head coach, best-ever World Cup result, and 2026 debut indicator"
wc_2026_ranking.csv — query exported as CSV from wc_2026_teams, used to create difficulty ranking dashboard

Tableau Dashboard
![Group Difficulty Dashboard](images/group-difficulty.png)

Group Difficulty Ranking —
Team Detail —
Debut Team Highlight —


Key Insight

[your finding here]
