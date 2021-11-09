CONFIG:=x86.cfg

build:
	runspec --config=$(CONFIG) --action=build --tune=base bzip2

run-test:
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 bzip2

run-ref:
	runspec --config=$(CONFIG) --size=ref --noreportable --tune=base --iterations=1 bzip2

run-999:
	runspec 999 --config=$(CONFIG) --noreportable --n=1

run-fp:
	runspec -c $(CONFIG) -r ref -n 3 fp

build-int:
	runspec -c $(CONFIG) -r ref --action=build -n 3 int

run-int:
	runspec -c $(CONFIG) -r ref -n 3 int

run-int:
	runspec -c $(CONFIG) -r ref -n 3 int

run-int-set:
	runspec --tune=base --config=$(CONFIG) int

build-401:
	runspec -c $(CONFIG) --action=build -i test 401.bzip2

build-473:
	runspec -c $(CONFIG) --action=build -i test 473.astar

run-473:
	runspec -c $(CONFIG) -i ref 473.astar

onlyrun-473:
	runspec -c $(CONFIG) --action=onlyrun -i test 473.astar

setup-473:
	runspec -c $(CONFIG) --action=setup -i test 473.astar

report-473:
	runspec -c $(CONFIG) --action=report -i test 473.astar

clean-473:
	runspec -c $(CONFIG) --action=clean -i test 473.astar

run-4rate:
	runspec -c $(CONFIG) -i ref --rate 4 int

run-all:
	runspec -c $(CONFIG) -i ref -n 3 -I all

clean-all:
	runspec -c $(CONFIG) --action=clean -I all

build-400:
	runspec -c $(CONFIG) --action=build -i test 400.perlbench




