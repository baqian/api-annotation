
syntaxCase:
	@touch test/fixtures/syntax/case_$(case).js
	@touch test/fixtures/syntax/case_$(case).json

test:
	@./node_modules/.bin/mocha --recursive test

test-cov:
	@./node_modules/.bin/mocha -r jscoverage --recursive test

.PHONY: syntaxCase test test-cov