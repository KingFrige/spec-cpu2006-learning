CONFIG:=x86.cfg

# action
473-build0:
	runspec --config=$(CONFIG) --action=build -i test astar

473-build1:
	runspec -c $(CONFIG) --action=build -i test 473.astar

473-buildsetup:
	runspec -c $(CONFIG) --action=buildsetup -i test 473.astar

473-configpp:
	runspec -c $(CONFIG) --action=configpp -i test 473.astar

473-onlyrun:
	runspec -c $(CONFIG) --action=onlyrun -i test 473.astar

473-report:
	runspec -c $(CONFIG) --action=report -i test 473.astar

473-run:
	runspec -c $(CONFIG) --action=run -i test 473.astar

473-validate:
	runspec -c $(CONFIG) --action=clean -i test 473.astar

473-setup:
	runspec -c $(CONFIG) --action=setup -i test 473.astar

473-clean:
	runspec -c $(CONFIG) --action=clean -i test 473.astar

473-clobber:
	runspec -c $(CONFIG) --action=clobber -i test 473.astar

473-trash:
	runspec -c $(CONFIG) --action=trash -i test 473.astar

473-scrub:
	runspec -c $(CONFIG) --action=scrub -i test 473.astar



# size
build-473-ref:
	runspec --config=$(CONFIG) --action=build -i ref --tune=base 473.astar

run-473-ref:
	runspec --config=$(CONFIG) --action=run -i ref --tune=base 473.astar

clean-473-ref:
	runspec --config=$(CONFIG) --action=clean -i ref --tune=base 473.astar

build-473-train:
	runspec --config=$(CONFIG) --action=build -i train --tune=base 473.astar

run-473-train:
	runspec --config=$(CONFIG) --action=run -i train --tune=base 473.astar

clean-473-train:
	runspec --config=$(CONFIG) --action=clean -i train --tune=base 473.astar

# rate & speed
run-speed:
	runspec -c $(CONFIG) -i test 473.astar

run-4rate:
	runspec -c $(CONFIG) -i test --rate 4 473.astar


# iterations
run-iterations:
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 astar


# tune
run-473-base:
	runspec --config=$(CONFIG) -i test --tune=base 473.astar

run-473-peak:
	runspec --config=$(CONFIG) -i test --tune=peak 473.astar

run-473-all:
	runspec --config=$(CONFIG) -i test --tune=all 473.astar


# suite
build-int:
	runspec -c $(CONFIG) -i ref --action=build -n 3 int

run-int:
	runspec -c $(CONFIG) -i test -n 3 int

run-int-rpt:
	runspec int --config=$(CONFIG) --reportable --n=1

run-int-norpt:
	runspec int --config=$(CONFIG) --noreportable --n=1

run-all:
	runspec -c $(CONFIG) -i ref -n 3 -I all

run-fp:
	runspec -c $(CONFIG) -i ref -n 3 fp

clean-all:
	runspec -c $(CONFIG) --action=clean -I all

scrub-all:
	runspec -c $(CONFIG) --action=scrub -I all

