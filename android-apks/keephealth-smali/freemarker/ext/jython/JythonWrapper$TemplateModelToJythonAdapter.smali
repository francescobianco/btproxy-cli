.class Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;
.super Lorg/python/core/PyObject;
.source "JythonWrapper.java"

# interfaces
.implements Lfreemarker/template/TemplateModelAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jython/JythonWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateModelToJythonAdapter"
.end annotation


# instance fields
.field private final model:Lfreemarker/template/TemplateModel;

.field final synthetic this$0:Lfreemarker/ext/jython/JythonWrapper;


# direct methods
.method constructor <init>(Lfreemarker/ext/jython/JythonWrapper;Lfreemarker/template/TemplateModel;)V
    .registers 3

    .line 175
    iput-object p1, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->this$0:Lfreemarker/ext/jython/JythonWrapper;

    invoke-direct {p0}, Lorg/python/core/PyObject;-><init>()V

    .line 176
    iput-object p2, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method private getModelClass()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_7

    const-string v0, "null"

    goto :goto_f

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method


# virtual methods
.method public __call__([Lorg/python/core/PyObject;[Ljava/lang/String;)Lorg/python/core/PyObject;
    .registers 7

    .line 217
    iget-object p2, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    instance-of v0, p2, Lfreemarker/template/TemplateMethodModel;

    if-eqz v0, :cond_44

    .line 218
    instance-of p2, p2, Lfreemarker/template/TemplateMethodModelEx;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 221
    :goto_f
    :try_start_f
    array-length v2, p1

    if-ge v1, v2, :cond_2d

    if-eqz p2, :cond_1d

    .line 222
    iget-object v2, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->this$0:Lfreemarker/ext/jython/JythonWrapper;

    aget-object v3, p1, v1

    .line 224
    invoke-virtual {v2, v3}, Lfreemarker/ext/jython/JythonWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_27

    :cond_1d
    aget-object v2, p1, v1

    if-nez v2, :cond_23

    const/4 v2, 0x0

    goto :goto_27

    .line 228
    :cond_23
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    :goto_27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 230
    :cond_2d
    iget-object p1, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->this$0:Lfreemarker/ext/jython/JythonWrapper;

    iget-object p2, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    check-cast p2, Lfreemarker/template/TemplateMethodModelEx;

    invoke-interface {p2, v0}, Lfreemarker/template/TemplateMethodModelEx;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/template/TemplateModel;

    invoke-virtual {p1, p2}, Lfreemarker/ext/jython/JythonWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1
    :try_end_3d
    .catch Lfreemarker/template/TemplateModelException; {:try_start_f .. :try_end_3d} :catch_3e

    return-object p1

    :catch_3e
    move-exception p1

    .line 232
    invoke-static {p1}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1

    .line 235
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "call of non-method model ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->getModelClass()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->TypeError(Ljava/lang/String;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1
.end method

.method public __finditem__(I)Lorg/python/core/PyObject;
    .registers 4

    .line 205
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_19

    .line 207
    :try_start_6
    iget-object v1, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->this$0:Lfreemarker/ext/jython/JythonWrapper;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/ext/jython/JythonWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1
    :try_end_12
    .catch Lfreemarker/template/TemplateModelException; {:try_start_6 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 209
    invoke-static {p1}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1

    .line 212
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "item lookup on non-sequence model ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->getModelClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->TypeError(Ljava/lang/String;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1
.end method

.method public __finditem__(Ljava/lang/String;)Lorg/python/core/PyObject;
    .registers 4

    .line 193
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_19

    .line 195
    :try_start_6
    iget-object v1, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->this$0:Lfreemarker/ext/jython/JythonWrapper;

    check-cast v0, Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/ext/jython/JythonWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1
    :try_end_12
    .catch Lfreemarker/template/TemplateModelException; {:try_start_6 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 197
    invoke-static {p1}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1

    .line 200
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "item lookup on non-hash model ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->getModelClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->TypeError(Ljava/lang/String;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1
.end method

.method public __finditem__(Lorg/python/core/PyObject;)Lorg/python/core/PyObject;
    .registers 3

    .line 185
    instance-of v0, p1, Lorg/python/core/PyInteger;

    if-eqz v0, :cond_f

    .line 186
    check-cast p1, Lorg/python/core/PyInteger;

    invoke-virtual {p1}, Lorg/python/core/PyInteger;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->__finditem__(I)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 188
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->__finditem__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public __len__()I
    .registers 3

    .line 241
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_d

    .line 242
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0

    .line 244
    :cond_d
    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_18

    .line 245
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0
    :try_end_17
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_17} :catch_1a

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0

    :catch_1a
    move-exception v0

    .line 248
    invoke-static {v0}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object v0

    throw v0
.end method

.method public __nonzero__()Z
    .registers 5

    .line 257
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_d

    .line 258
    check-cast v0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    return v0

    .line 260
    :cond_d
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 261
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    if-lez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    return v2

    .line 263
    :cond_1e
    instance-of v1, v0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_2a

    .line 264
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->isEmpty()Z

    move-result v0
    :try_end_28
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_28} :catch_2b

    xor-int/2addr v0, v2

    return v0

    :cond_2a
    return v3

    :catch_2b
    move-exception v0

    .line 267
    invoke-static {v0}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object v0

    throw v0
.end method

.method public getTemplateModel()Lfreemarker/template/TemplateModel;
    .registers 2

    .line 180
    iget-object v0, p0, Lfreemarker/ext/jython/JythonWrapper$TemplateModelToJythonAdapter;->model:Lfreemarker/template/TemplateModel;

    return-object v0
.end method
