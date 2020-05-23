DOCS=index 

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix html/, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)

html/%.html : %.jemdoc MENU
	jemdoc $<

.PHONY : clean
clean :
	-rm -f html/*.html
