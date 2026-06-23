# WorldCupAnalysis
Identifying interesting trends in past World Cup knockout stages. Ranking the difficulty of the groups in the group stages of the 2026 World Cup.

SUMMARY
Initially, the groups were ranked using an average group rating calculated by using the FIFA ranking of each team in the group. This rating had one obvious problem, some of the groups with the lowest average rating were top heavy and were a result of two poorly ranked teams and two highly ranked teams. This lead to a low average rating but the true difficulty of the group is expected to be low as both high ranked teams are likely to go through to the next stage. I then used STDEV for the difficulty rating so that a difficult group would consist of all four teams nearest each other meaning the group has the most competition for its two winner positions. Looking for trends among venues and goals scored,

DATA
wc_all_matches — CSV from Kaggle dataset, description "183 matches Full match-level data including teams, scores, stage, venue, city, country, date, and match notes." used in stadium analysis
wc_2026_teams — VSC from Kaggle dataset, description "48 qualified teams Group assignment, confederation, FIFA rank, head coach, best-ever World Cup result, and 2026 debut indicator"
wc_2026_ranking.csv — query exported as CSV from wc_2026_teams, used to create difficulty ranking dashboard

Tableau Dashboard Group Difficulty Ranking
![Group Difficulty Dashboard](https://github.com/Samgarci17/WorldCupAnalysis/blob/327661b2bd7c59661b4f7dc474ad355233d3321d/Screenshot%202026-06-19%20040313.png)
🔗 [View Interactive Dashboard on Tableau Public](https://public.tableau.com/views/wcBOOK/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

Key Insight

Group F appears to be the hardest group since they have the second smallest SD while also having two high-ranked teams in Japan and the Netherlands. I would rank them first over group B because of the difference in the two top teams in the group. Group E is another sneaky group because Curacao is ranked 81st bringing down the group average and the group SD, without Curacao
group E is ranked first in difficulty among the groups. The exact same situation happens with group G and New Zealand. When NZ is excluded from group G they jump up to the highest difficulty group over group E. 
