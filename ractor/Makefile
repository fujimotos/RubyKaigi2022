LINES=1000000
TIME=time -p

all: data.nginx
	$(TIME) ruby nginx.rb < data.nginx
	$(TIME) ruby ractor.rb < data.nginx

clean:
	rm -f data
	rm -f data.nginx

data.nginx: data
	./data | head -n $(LINES) > $@

data: data.c
	cc -O2 -o $@ $^
