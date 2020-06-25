DOCS=index contact dog skills error  

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix html/, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)

html/%.html : %.jemdoc MENU
	./jemdoc.py -o $@ $<

.PHONY : clean
clean :
	-rm -f html/*.html
