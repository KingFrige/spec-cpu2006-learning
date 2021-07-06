README
========

install
----------

[Installing SPEC CPU2006 Under Unix](https://www.spec.org/cpu2006/Docs/install-guide-unix.html)

```bash
cd <spec-cpu-install-dir>

source shrc
```

config
-----------

```bash
cd $SPEC/config
cp Example-linux64-amd64-gcc43+.cfg my-linux64-amd64-gcc43+.cfg
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
```

reference
------------

[1]. [SPEC CPU2006 Documentation](https://www.spec.org/cpu2006/Docs/)

[2]. [Speckle](https://github.com/ccelio/Speckle)
