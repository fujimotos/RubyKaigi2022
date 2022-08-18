LINES=10000000
TIME=time -p

all: data.ltsv
	$(TIME) ruby ltsv.rb < data.ltsv
	$(TIME) ruby --jit ltsv.rb < data.ltsv
	$(TIME) perl ltsv.pl < data.ltsv
	$(TIME) python3 ltsv.py < data.ltsv
	$(TIME) lua ltsv.lua < data.ltsv
	$(TIME) luajit ltsv.lua < data.ltsv
	$(TIME) awk -f ltsv.awk < data.ltsv

clean:
	rm -f data
	rm -f data.ltsv

data.ltsv: data
	./data | head -n $(LINES) > $@

data: data.c
	cc -O2 -o $@ $^

perl:
	cat data.ltsv perl
