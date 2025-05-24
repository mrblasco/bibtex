
BIBFILES = $(wildcard references/sections/*.bib)
MERGED_BIB = references/merged.bib

all: $(MERGED_BIB)

$(MERGED_BIB) : $(BIBFILES) bibtool.cfg
	bibtool -s -d -r bibtool.cfg -i $(BIBFILES) -o $@

# references.bib : main.bib
# 	scripts/clean_references.sh $< > $@

clean:
	rm -f $(MERGED_BIB)


# Notes
#
# bibtool -s = sort -d = check double entries -c = config file