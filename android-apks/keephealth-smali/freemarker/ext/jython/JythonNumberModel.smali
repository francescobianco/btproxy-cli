.class public Lfreemarker/ext/jython/JythonNumberModel;
.super Lfreemarker/ext/jython/JythonModel;
.source "JythonNumberModel.java"

# interfaces
.implements Lfreemarker/template/TemplateNumberModel;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lfreemarker/ext/jython/JythonNumberModel$1;

    invoke-direct {v0}, Lfreemarker/ext/jython/JythonNumberModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/JythonNumberModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jython/JythonModel;-><init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V

    return-void
.end method


# virtual methods
.method public getAsNumber()Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 60
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonNumberModel;->object:Lorg/python/core/PyObject;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 61
    sget-object v1, Lorg/python/core/Py;->NoConversion:Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    goto :goto_12

    .line 64
    :cond_f
    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 62
    :cond_12
    :goto_12
    iget-object v0, p0, Lfreemarker/ext/jython/JythonNumberModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__float__()Lorg/python/core/PyFloat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/python/core/PyFloat;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_20
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    .line 66
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
