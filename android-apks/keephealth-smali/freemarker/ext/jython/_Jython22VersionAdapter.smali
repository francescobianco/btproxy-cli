.class public Lfreemarker/ext/jython/_Jython22VersionAdapter;
.super Lfreemarker/ext/jython/JythonVersionAdapter;
.source "_Jython22VersionAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lfreemarker/ext/jython/JythonVersionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getPythonClassName(Lorg/python/core/PyObject;)Ljava/lang/String;
    .registers 2

    .line 42
    invoke-virtual {p1}, Lorg/python/core/PyObject;->getType()Lorg/python/core/PyType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/python/core/PyType;->getFullName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isPyInstance(Ljava/lang/Object;)Z
    .registers 2

    .line 34
    instance-of p1, p1, Lorg/python/core/PyJavaInstance;

    return p1
.end method

.method public pyInstanceToJava(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 38
    check-cast p1, Lorg/python/core/PyJavaInstance;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/python/core/PyJavaInstance;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
