GITTINS_10000_URL := http://downloads.tor-lattimore.com/gittins/10000.zip

all: data
	scons

data: gittins/5000.bin

.PHONY: all data

gittins/10000.zip: gittins
	curl --progress-bar ${GITTINS_10000_URL} > $@

gittins/%.bin: gittins/%.zip
	unzip -d gittins $<
