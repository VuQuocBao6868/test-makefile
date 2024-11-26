CC     = gcc
CFLAGS = -I.
DEPS   = math.h
OBJ    = main.o math.o

# Set up rules
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)  
    # Ensure this line starts with a tab

program: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)  
    # Ensure this line starts with a tab

.PHONY: clean

clean: 
	rm -f $(OBJ) program 
     # This removes object files and the program binary





# $@	The name of the current target (e.g., the file being created).
# $<	The first prerequisite of the rule (e.g., the .c file for a .o target).
# $^	All prerequisites of the rule (space-separated).
# $?	Prerequisites that are newer than the target (i.e., changed files).
# $*	The "stem" of a target pattern (used in pattern rules).