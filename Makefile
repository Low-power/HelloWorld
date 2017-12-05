%:	%.o
	$(LD) $(LDFLAGS) $^ -o $@ $(LIBS)

%.o:	%.s
	$(AS) $(ASFLAGS) $^ -o $@

.SUFFIXES:
