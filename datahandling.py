#| label: tbl-weak-spectro-results
#| tbl-cap: Runtime and results of weak spectroscopy on VLTS examples.
#| echo: false

import pandas as pd
import numpy as np
from tabulate import tabulate
import IPython.display as d

raw = pd.read_csv("data/benchmarking_strong_game.csv", sep=r',', skipinitialspace=True)

examples = pd.DataFrame([
  {"System": "shared/src/test/assets/other/peterson_mutex.csv", "Name": "peterson"},
  {"System": "shared/src/test/assets/vlts/vasy_0_1.csv", "Name": "vasy_0_1"},
  {"System": "shared/src/test/assets/vlts/cwi_1_2.csv", "Name": "cwi_1_2"},
  {"System": "shared/src/test/assets/vlts/vasy_1_4.csv", "Name": "vasy_1_4"},
  {"System": "shared/src/test/assets/vlts/cwi_3_14.csv", "Name": "cwi_3_14"},
  {"System": "shared/src/test/assets/vlts/vasy_5_9.csv", "Name": "vasy_5_9"},
  {"System": "shared/src/test/assets/vlts/vasy_8_24.csv", "Name": "vasy_8_24"},
  {"System": "shared/src/test/assets/vlts/vasy_8_38.csv", "Name": "vasy_8_38"},
  {"System": "shared/src/test/assets/vlts/vasy_10_56.csv", "Name": "vasy_10_56"},
  {"System": "shared/src/test/assets/vlts/vasy_18_73.csv", "Name": "vasy_18_73"},
  {"System": "shared/src/test/assets/vlts/vasy_25_25.csv", "Name": "vasy_25_25"},
])
examples["Name"] = examples["Name"].apply(lambda x: f"`{x}`")

median_times = raw.groupby("System")["Spectroscopy time"].apply(
  lambda x: x.sort_values().iloc[1:-1].mean() / 1000.0 if len(x) > 2 else x.mean() / 1000.0
).reset_index()
examples = examples.merge(median_times, left_on="System", right_on="System", how="left")
columns_to_include = [
  "States", "Transitions", "Bisim pre-minimization time", 
  "Bisim pre-minimized size", "Initial pairs", "Game moves", "enabledness", "trace", "simulation"
]

for column in columns_to_include:
  column_values = raw.groupby("System")[column].first().reset_index()
  examples = examples.merge(column_values, on="System", how="left")

for column in columns_to_include:
  examples[column] = examples[column].apply(lambda x:
    f"{int(x):,}" if (isinstance(x, str) and x.isdigit()) or isinstance(x, float)
    else (f"{x:,}" if isinstance(x, int)
    else "-"))

output = examples[["Name", "States", "Bisim pre-minimized size","Game moves", "Spectroscopy time", "enabledness", "trace", "simulation"]]
table = tabulate(
  output.replace(np.nan, None),
  headers=["System", "$\\states$", "$\\quotient{\\states}{\\beq{B}}$", "$\\gamemoveblank_{\\blacktriangle}$", "time&nbsp;(s)", "$\\quotient{\\states}{\\beq{E}}$", "$\\quotient{\\states}{\\beq{T}}$", "$\\quotient{\\states}{\\beq{1S}}$"],
  tablefmt='pipe', 
  showindex=False, 
  numalign="right",
  floatfmt=".2f",
  stralign="right",
  missingval='-'
)

print(table)

#d.Markdown(table)
