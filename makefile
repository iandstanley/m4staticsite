PAGES= index about

SITE=site
THEME=theme/default
STATIC=static
BUILD=build
HTML=build/index.html build/about.html

M4FILES=$(foreach I,$(PAGES), pages/$I.m4 )
MDFILES=$(foreach I,$(PAGES), pages/$I.md )
HTMLFILES=$(foreach I,$(PAGES), build/$I.html )

#all: $(BUILD)

site: 	$(MDFILES) $(M4FILES) $(HTMLFILES) site.m4 


build/%.html: pages/%.m4 pages/%.md
	m4 $< > $@ 

#pages/index.m4: pages/index.md
	# build html from .m4 file
#	m4  index.m4

#build/about.html: pages/about.m4
#	m4 $< > $@
	
#$(HTML): $(BUILD)/%.html: $(PAGES)/%.m4
#	m4  $< > $@
