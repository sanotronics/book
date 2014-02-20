SOURCE_FILE_NAME = workshops/*.md
BOOK_FILE_NAME = makerland

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template template.tex \
	--toc

makerland.pdf:
	$(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o $(BOOK_FILE_NAME).pdf

dancebot:
	$(PDF_BUILDER) $(PDF_BUILDER_FLAGS) workshops/dancebot.md -o dancebot.pdf
	
home:
	$(PDF_BUILDER) $(PDF_BUILDER_FLAGS) "workshops/home_automation.md" -o "home_automation.pdf"

clean:
	rm -f $(BOOK_FILE_NAME).pdf