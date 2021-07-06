
build:
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base bzip2
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base perlbench
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base gcc
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base bwaves
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base gamess
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base mcf
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base milc
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base zeusmp
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base gromacs
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base cactusADM
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base leslie3d
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base namd
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base gobmk
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base dealII
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base soplex
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base povray
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base calculix
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base hmmer
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base sjeng
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base GemsFDTD
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base libquantum
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base h264ref
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base tonto
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base lbm
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base omnetpp
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base astar
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base wrf
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base sphinx3
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base xalancbmk
	runspec --config=my-linux64-amd64-gcc43+.cfg --action=build --tune=base specrand

run-test:
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 bzip2
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 perlbench
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 gcc
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 bwaves
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 gamess
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 mcf
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 milc
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 zeusmp
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 gromacs
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 cactusADM
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 leslie3d
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 namd
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 gobmk
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 dealII
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 soplex
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 povray
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 calculix
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 hmmer
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 sjeng
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 GemsFDTD
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 libquantum
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 h264ref
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 tonto
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 lbm
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 omnetpp
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 astar
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 wrf
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 sphinx3
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 xalancbmk
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=test --noreportable --tune=base --iterations=1 specrand

run-ref:
	runspec --config=my-linux64-amd64-gcc43+.cfg --size=ref --noreportable --tune=base --iterations=1 bzip2

run-999:
	runspec 999 --config=my-linux64-amd64-gcc43+.cfg --noreportable --n=1

run-fp:
	runspec -c my-linux64-amd64-gcc43+.cfg -r ref -n 3 fp

run-int:
	runspec -c my-linux64-amd64-gcc43+.cfg -r ref -n 3 int

run-int-set:
	runspec --tune=base --config=my-linux64-amd64-gcc43+.cfg int

run-473:
	runspec -c my-linux64-amd64-gcc43+.cfg -i ref 473.astar

run-4rate:
	runspec -c my-linux64-amd64-gcc43+.cfg -i ref --rate 4 int

run-all:
	runspec -c my-linux64-amd64-gcc43+.cfg -i ref -n 3 -I all
