.class public Lfreemarker/ext/jython/JythonSequenceModel;
.super Lfreemarker/ext/jython/JythonModel;
.source "JythonSequenceModel.java"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateCollectionModel;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lfreemarker/ext/jython/JythonSequenceModel$1;

    invoke-direct {v0}, Lfreemarker/ext/jython/JythonSequenceModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/JythonSequenceModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jython/JythonModel;-><init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonSequenceModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    iget-object v1, p0, Lfreemarker/ext/jython/JythonSequenceModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v1, p1}, Lorg/python/core/PyObject;->__finditem__(I)Lorg/python/core/PyObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_c
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 61
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .registers 2

    .line 77
    new-instance v0, Lfreemarker/ext/jython/JythonSequenceModel$2;

    invoke-direct {v0, p0}, Lfreemarker/ext/jython/JythonSequenceModel$2;-><init>(Lfreemarker/ext/jython/JythonSequenceModel;)V

    return-object v0
.end method

.method public size()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonSequenceModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__len__()I

    move-result v0
    :try_end_6
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 72
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
