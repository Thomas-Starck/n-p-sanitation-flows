HOW TO RUN THE CODE AND GET THE RESULTS

This is the code to reproduce and generate the results for the nutrient flow analysis of the French sanitation system. It is rendered as a user-friendly website interface (https://thomas-starck.github.io/n-p-sanitation-flows/) using a github repository (https://github.com/Thomas-Starck/n-p-sanitation-flows). It is also stored on a permanent institutional repository on zenodo, with a digital object identifier (https://zenodo.org/doi/10.5281/zenodo.7990171).

The results are present in output_data, and the full website in docs.

To fully reproduce the results from scratch: 
  - delete the output_data , graphs and docs folders
  - open the Sanitation-NP-Flows-France.Rproj file in Rstudio. 
  - the virtual environment was monitored with the renv package (version 1.0.5 https://rstudio.github.io/renv/articles/renv.html), with the version of all the used packages in the renv.lock file. If needed, install the renv package. Then run renv::init() in the console, and select "Restore the project from the lockfile". The virtual environment will be recreated in the renv folder.
  - finally, in the terminal, run "quarto render". This will run the .qmd files in the order specified in _quarto.yml, and will render the numerical results in the output_data, and the html pages of the website in docs.

The source_data folder includes data on wastewater treatment plants flow in each French basin, industry discharges, food intakes... that are used to produce our results.

The .qmd files clean, normalize and combine the data from the different sources, and produce an html page detailing the results.

Graphs used for the academic article are rendered in the graphs folder (generated from 32_figures.qmd).

Open the website (online or in the docs folder) to see more results and descriptions.


WHAT IS THE OUPUT_DATA CONTENT ?

- all_WWTP folder : 1 file for each water agency basin. Displays for each year all the wastewater treatment plants with the following information : incoming and outgoing pollution, yield, and wastewater treatment plant description. The sanitation portal csv provides more extensive description of the wastewater treatment plats + destinations of produced sludge.

- basins folder : nutrient flows and ratios aggregated at the basin scale. Besides raw reported nutrient flows, there are also adjusted nutrient flows, extrapolated from the share of unreported data. Also reported for each year are the number of wastewater treatment plant and their total capacity, in population equivalent (PE). The sanitation portal csv provides sludge destination for each basin.

- basin_PE folder : same as basin folder, but also discriminates the wastewater treatment plant size categories (based on capacity, 5 categories).

-industry_sewers_network_discharge folder : nutrient discharge in sewers by industries, from GEREP and georisque databases. 1 file aggregated at the basin scales and 1 with all industries.

-nutrient_ingestion_excretion folder : data on nutrient ingestion by age and sex, and computed nutrient excretions at the national, regional, departmental, communes and basins scales.

-sankey_flows folder : nitrogen and phosphorus flows of our nutrient flows analysis, at the nation and basins scales.

-sludge_composition folder : comparison of our estimated nitrogen and phosphorus sludge content to literature values. 

-sludge_destination folder : relative share of the different sludge destination, at the national scale and for each basin.

-zipf_law folder : data to look for a zipf law relation, at the basin and national scale (rank of wastewater treatment plant vs capacity).


WHAT IS THE SOURCE_DATA CONTENT ?

-data in source_data folders (for instance 0_industry_discharge) are fully described in their respective website pages (0_industry_discharge.html).

