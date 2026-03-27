.class final Lfreemarker/ext/jython/JythonNumberModel$1;
.super Ljava/lang/Object;
.source "JythonNumberModel.java"

# interfaces
.implements Lfreemarker/ext/util/ModelFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jython/JythonNumberModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;
    .registers 4

    .line 45
    new-instance v0, Lfreemarker/ext/jython/JythonNumberModel;

    check-cast p1, Lorg/python/core/PyObject;

    check-cast p2, Lfreemarker/ext/jython/JythonWrapper;

    invoke-direct {v0, p1, p2}, Lfreemarker/ext/jython/JythonNumberModel;-><init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V

    return-object v0
.end method
