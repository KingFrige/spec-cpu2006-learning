README
========

install
----------

[Installing SPEC CPU2006 Under Unix](https://www.spec.org/cpu2006/Docs/install-guide-unix.html)


init
----------

- speccpu2006

```bash
export SPEC=<spec-cpu-install-dir>
cd $SPEC

source shrc; cd -
```

- toolchain

- quick init
```
source setenv.sh
```

config
-----------

```bash
cp config/*.cfg $SPEC/config
```

[SPEC CPU2006 Config Files](https://www.spec.org/cpu2006/Docs/config.html)


runspec
----------

[The 'runspec' Command](https://www.spec.org/cpu2006/Docs/runspec.html)


test
--------

```bash
cd $SPEC

cd <spec-cpu-learning>

cat Makefile

make run-int
make run-fp
make run-all

make CONFIG=riscv.cfg build-int

make CONFIG=riscv.cfg build-401
```

reference
------------

[1]. [SPEC CPU2006 Documentation](https://www.spec.org/cpu2006/Docs/)

[2]. [Speckle](https://github.com/ccelio/Speckle)
