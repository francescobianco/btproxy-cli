.class public Lfreemarker/ext/jython/JythonHashModel;
.super Lfreemarker/ext/jython/JythonModel;
.source "JythonHashModel.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;

.field private static final KEYS:Ljava/lang/String; = "keys"

.field private static final KEYSET:Ljava/lang/String; = "keySet"

.field private static final VALUES:Ljava/lang/String; = "values"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lfreemarker/ext/jython/JythonHashModel$1;

    invoke-direct {v0}, Lfreemarker/ext/jython/JythonHashModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/JythonHashModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jython/JythonModel;-><init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V

    return-void
.end method


# virtual methods
.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonHashModel;->object:Lorg/python/core/PyObject;

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-nez v0, :cond_12

    .line 84
    iget-object v0, p0, Lfreemarker/ext/jython/JythonHashModel;->object:Lorg/python/core/PyObject;

    const-string v1, "keySet"

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_21

    .line 87
    iget-object v1, p0, Lfreemarker/ext/jython/JythonHashModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__call__()Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;
    :try_end_20
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_20} :catch_3e

    return-object v0

    .line 92
    :cond_21
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'?keys\' is not supported as there is no \'keys\' nor \'keySet\' attribute on an instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->INSTANCE:Lfreemarker/ext/jython/JythonVersionAdapter;

    iget-object v3, p0, Lfreemarker/ext/jython/JythonHashModel;->object:Lorg/python/core/PyObject;

    .line 94
    invoke-virtual {v2, v3}, Lfreemarker/ext/jython/JythonVersionAdapter;->getPythonClassName(Lorg/python/core/PyObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3e
    move-exception v0

    .line 90
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    iget-object v0, p0, Lfreemarker/ext/jython/JythonHashModel;->object:Lorg/python/core/PyObject;

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

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 102
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonHashModel;->object:Lorg/python/core/PyObject;

    const-string v1, "values"

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 104
    iget-object v1, p0, Lfreemarker/ext/jython/JythonHashModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__call__()Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;
    :try_end_16
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_16} :catch_34

    return-object v0

    .line 109
    :cond_17
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'?values\' is not supported as there is no \'values\' attribute on an instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->INSTANCE:Lfreemarker/ext/jython/JythonVersionAdapter;

    iget-object v3, p0, Lfreemarker/ext/jython/JythonHashModel;->object:Lorg/python/core/PyObject;

    .line 111
    invoke-virtual {v2, v3}, Lfreemarker/ext/jython/JythonVersionAdapter;->getPythonClassName(Lorg/python/core/PyObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_34
    move-exception v0

    .line 107
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
