DOCS=index contact 

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix html/, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)

html/%.html : %.jemdoc MENU
	jemdoc -c jemdoc.conf $<

.PHONY : clean
clean :
	-rm -f html/*.html
