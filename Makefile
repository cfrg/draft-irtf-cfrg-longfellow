MMARK := mmark

all: draft-irtf-cfrg-longfellow.md
	$(MMARK) draft-irtf-cfrg-longfellow.md  > draft-irtf-cfrg-longfellow.xml
	xml2rfc --text -N -n --v3 draft-irtf-cfrg-longfellow.xml
	xml2rfc --html --v3 draft-irtf-cfrg-longfellow.xml

.PHONY: clean
clean:
	rm -f *.txt *.xml *.html *.pdf
