BOOK_TARGETS=$(patsubst books/%,docs/%/index.html,$(wildcard books/*))

docs: $(BOOK_TARGETS)

docs/%/index.html: $(shell find books/$% -name '*.md' -o -name '*.png')
	gitbook build books/$* docs/$*

.PHONY: docs
