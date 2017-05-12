
# DNA barcoding the fishes of Lizard Island (Great Barrier Reef)

Experiments with MaterialSample, sequences, and GBIF.

GBIF dataset id   [d03ce806-e16f-4cdb-a964-0b965523b908](http://www.gbif.org/dataset/d03ce806-e16f-4cdb-a964-0b965523b908).

Steinke, D., deWaard, J., Gomon, M., Johnson, J., Larson, H., Lucanus, O., … Ward, R. (2017, April 13). DNA barcoding the fishes of Lizard Island (Great Barrier Reef). Biodiversity Data Journal. Pensoft Publishers. https://doi.org/10.3897/bdj.5.e12409

Initial attempt to encode occurrences as http://rs.tdwg.org/dwc/terms/MaterialSample failed, GBIF wouldn’t even index the eml file so the dataset page showed just the metadata from the dataset creation API call.

Changing the meta.xml from http://rs.tdwg.org/dwc/terms/MaterialSample to http://rs.tdwg.org/dwc/terms/Occurrence resulted in the EML file being parsed, occurrences appeared after about 15 mins.




