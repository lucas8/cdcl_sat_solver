FILES=data.hs    \
	  status.hs  \
	  chooser.hs \
	  loader.hs  \
	  solver.hs
MAIN=main.hs
BENCH=problems.hs  \
	  benchmark.hs
TESTS=problems.hs \
	  test.hs

all: main bench tests

main: $(FILES) $(MAIN)
	ghc $^

bench: $(FILES) $(BENCH)
	ghc $^

tests: $(FILES) $(TESTS)
	ghc $^

.PHONY:all main bench tests

