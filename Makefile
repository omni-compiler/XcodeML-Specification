.PHONY: all pdf clean
SUBDIRS=XcodeML-C XcodeML-F

all:
	@for subdir in $(SUBDIRS) ; do \
	$(MAKE) -C $$subdir ; \
	if test $$? -ne 0; then exit 1; fi ; \
	done

pdf:
	@for subdir in $(SUBDIRS) ; do \
	$(MAKE) -C $$subdir pdf ; \
	if test $$? -ne 0; then exit 1; fi ; \
	done

clean:
	@for subdir in $(SUBDIRS) ; do \
	$(MAKE) -C $$subdir clean ; \
	if test $$? -ne 0; then exit 1; fi ; \
	done

