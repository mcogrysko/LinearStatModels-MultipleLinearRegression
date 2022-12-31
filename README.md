# LinearStatModels-MultipleLinearRegression

Predictors that Contribute to a Baseball Team’s Win Percentage

Question: Which metrics contribute to the Baltimore Orioles win percentage?

Summary: In this analysis, I examine the metrics that contribute to a baseball team’s win percentage using multiple linear regression. I use data from the Baltimore Orioles seasons from 1984 to 2022. The response data is the team’s win percentage (wins / games played). There are 17 predictors that are used in the analysis.

Data set: Orioles_Data_1984_2022_MOgrysko.csv

<table>
<tr><th>Name</th><th>Type</th><th>Description</th></tr>
<tr>
<td>W_L_Percentage</td>
<td>Float</td>
<td>Response - wins/games played</td>
</tr>
<tr>
<td>R_Scored</td>
<td>Integer</td>
<td>runs scored</td>
</tr>
<tr>
<td>BatAge</td>
<td>Float</td>
<td>average batter age</td>
</tr>
<tr>
<td>PAge</td>
<td>Float</td>
<td>average pitcher age</td>
</tr>
<tr>
<td>NumBat</td>
<td>Integer</td>
<td># batters used</td>
</tr>
<tr>
<td>NumP</td>
<td>Integer</td>
<td># pitchers used</td>
</tr>
<tr>
<td>Hits_B</td>
<td>Integer</td>
<td>team hits</td>
</tr>
<tr>
<td>HR_B</td>
<td>Integer</td>
<td>team home runs</td>
</tr>
<tr>
<td>SB_B</td>
<td>Integer</td>
<td>team stolen bases</td>
</tr>
<tr>
<td>BB_B</td>
<td>Integer</td>
<td>team walks</td>
</tr>
<tr>
<td>SO_B</td>
<td>Integer</td>
<td>team strike outs</td>
</tr>
<tr>
<td>BA_B</td>
<td>Float</td>
<td>team batting average</td>
</tr>
<tr>
<td>E</td>
<td>Integer</td>
<td>team errors</td>
</tr>
<tr>
<td>ERA</td>
<td>Float</td>
<td>team earned run average</td>
</tr>
<tr>
<td>HR_P</td>
<td>Integer</td>
<td>team home runs allowed</td>
</tr>
<tr>
<td>BB_P</td>
<td>Integer</td>
<td>team walks allowed</td>
</tr>
<tr>
<td>SO_P</td>
<td>Integer</td>
<td>team strike outs</td>
</tr>
<tr>
<td>WHIP</td>
<td>Float</td>
<td>team walks + hits / innings pitched</td>
</tr>
</table>


