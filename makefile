# Variables
JAVAC = javac
JAVA = java
SRCDIR = .
BINDIR = .
MAINCLASS = aplicacion.Principal

# Regla predeterminada
all: $(BINDIR)/aplicacion/Principal.class

# Regla de compilación
$(BINDIR)/aplicacion/Principal.class: $(SRCDIR)/aplicacion/Principal.java $(SRCDIR)/mates/Matematicas.java
    $(JAVAC) -d $(BINDIR) $^

# Regla de ejecución
run: all
    $(JAVA) -cp $(BINDIR) $(MAINCLASS)

# Regla de limpieza
clean:
    rm -rf $(BINDIR)/aplicacion/*.class $(BINDIR)/mates/*.class
