.class public Lfreemarker/ext/jython/JythonModel;
.super Ljava/lang/Object;
.source "JythonModel.java"

# interfaces
.implements Lfreemarker/template/TemplateBooleanModel;
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModelEx;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;


# static fields
.field static final FACTORY:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field protected final object:Lorg/python/core/PyObject;

.field protected final wrapper:Lfreemarker/ext/jython/JythonWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lfreemarker/ext/jython/JythonModel$1;

    invoke-direct {v0}, Lfreemarker/ext/jython/JythonModel$1;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/JythonModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/JythonWrapper;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    .line 59
    iput-object p2, p0, Lfreemarker/ext/jython/JythonModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    .line 148
    :try_start_a
    new-array v0, v0, [Lorg/python/core/PyObject;

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v2, v1, 0x1

    .line 151
    iget-object v3, p0, Lfreemarker/ext/jython/JythonModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    .line 152
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/template/TemplateModel;

    .line 151
    invoke-virtual {v3, v4}, Lfreemarker/ext/jython/JythonWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_10

    .line 154
    :cond_28
    iget-object p1, p0, Lfreemarker/ext/jython/JythonModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    iget-object v1, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v1, v0}, Lorg/python/core/PyObject;->__call__([Lorg/python/core/PyObject;)Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 143
    :cond_35
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    iget-object v2, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    .line 143
    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/JythonWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/python/core/PyObject;->__call__(Lorg/python/core/PyObject;)Lorg/python/core/PyObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 139
    :cond_4c
    iget-object p1, p0, Lfreemarker/ext/jython/JythonModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__call__()Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_58
    .catch Lorg/python/core/PyException; {:try_start_a .. :try_end_58} :catch_59

    return-object p1

    :catch_59
    move-exception p1

    .line 158
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_6
    :try_start_6
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-virtual {v0}, Lfreemarker/ext/jython/JythonWrapper;->isAttributesShadowItems()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 101
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 103
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__finditem__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    goto :goto_2b

    .line 106
    :cond_1d
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__finditem__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 108
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0
    :try_end_2b
    .catch Lorg/python/core/PyException; {:try_start_6 .. :try_end_2b} :catch_32

    .line 115
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lfreemarker/ext/jython/JythonModel;->wrapper:Lfreemarker/ext/jython/JythonWrapper;

    invoke-virtual {p1, v0}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :catch_32
    move-exception p1

    .line 112
    new-instance v0, Lfreemarker/template/TemplateModelException;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 163
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_6
    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 167
    sget-object v0, Lorg/python/core/Py;->NoConversion:Ljava/lang/Object;

    if-ne p1, v0, :cond_16

    .line 168
    iget-object p1, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_16
    return-object p1
.end method

.method public getAsBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__nonzero__()Z

    move-result v0
    :try_end_6
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 69
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 80
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 3

    .line 174
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public isEmpty()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonModel;->object:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__len__()I

    move-result v0
    :try_end_6
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_6} :catch_c

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    .line 125
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
