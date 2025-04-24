
BIBFILES = $(wildcard sections/*.bib)
MERGED_BIB = main.bib

all: $(MERGED_BIB)

$(MERGED_BIB) : $(BIBFILES)
	bibtool -s -d -r bibtool.cfg -i $(BIBFILES) -o $@

references.bib : main.bib
	scripts/clean_references.sh $< > $@

clean:
	rm -f $(MERGED_BIB)


# Notes
#
# bibtool -s = sort -d = check double entries -c = config file