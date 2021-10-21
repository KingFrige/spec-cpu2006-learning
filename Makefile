CONFIG:=x86.cfg

build:
	runspec --config=$(CONFIG) --action=build --tune=base bzip2
	runspec --config=$(CONFIG) --action=build --tune=base perlbench
	runspec --config=$(CONFIG) --action=build --tune=base gcc
	runspec --config=$(CONFIG) --action=build --tune=base bwaves
	runspec --config=$(CONFIG) --action=build --tune=base gamess
	runspec --config=$(CONFIG) --action=build --tune=base mcf
	runspec --config=$(CONFIG) --action=build --tune=base milc
	runspec --config=$(CONFIG) --action=build --tune=base zeusmp
	runspec --config=$(CONFIG) --action=build --tune=base gromacs
	runspec --config=$(CONFIG) --action=build --tune=base cactusADM
	runspec --config=$(CONFIG) --action=build --tune=base leslie3d
	runspec --config=$(CONFIG) --action=build --tune=base namd
	runspec --config=$(CONFIG) --action=build --tune=base gobmk
	runspec --config=$(CONFIG) --action=build --tune=base dealII
	runspec --config=$(CONFIG) --action=build --tune=base soplex
	runspec --config=$(CONFIG) --action=build --tune=base povray
	runspec --config=$(CONFIG) --action=build --tune=base calculix
	runspec --config=$(CONFIG) --action=build --tune=base hmmer
	runspec --config=$(CONFIG) --action=build --tune=base sjeng
	runspec --config=$(CONFIG) --action=build --tune=base GemsFDTD
	runspec --config=$(CONFIG) --action=build --tune=base libquantum
	runspec --config=$(CONFIG) --action=build --tune=base h264ref
	runspec --config=$(CONFIG) --action=build --tune=base tonto
	runspec --config=$(CONFIG) --action=build --tune=base lbm
	runspec --config=$(CONFIG) --action=build --tune=base omnetpp
	runspec --config=$(CONFIG) --action=build --tune=base astar
	runspec --config=$(CONFIG) --action=build --tune=base wrf
	runspec --config=$(CONFIG) --action=build --tune=base sphinx3
	runspec --config=$(CONFIG) --action=build --tune=base xalancbmk
	runspec --config=$(CONFIG) --action=build --tune=base specrand

run-test:
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 bzip2
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 perlbench
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 gcc
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 bwaves
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 gamess
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 mcf
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 milc
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 zeusmp
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 gromacs
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 cactusADM
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 leslie3d
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 namd
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 gobmk
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 dealII
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 soplex
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 povray
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 calculix
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 hmmer
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 sjeng
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 GemsFDTD
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 libquantum
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 h264ref
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 tonto
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 lbm
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 omnetpp
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 astar
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 wrf
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 sphinx3
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 xalancbmk
	runspec --config=$(CONFIG) --size=test --noreportable --tune=base --iterations=1 specrand

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

run-473:
	runspec -c $(CONFIG) -i ref 473.astar

run-4rate:
	runspec -c $(CONFIG) -i ref --rate 4 int

run-all:
	runspec -c $(CONFIG) -i ref -n 3 -I all

clean-all:
	runspec -c $(CONFIG) --action=clean -I all
