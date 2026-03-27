.class Lfreemarker/ext/beans/SequenceAdapter;
.super Ljava/util/AbstractList;
.source "SequenceAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateModelAdapter;


# instance fields
.field private final model:Lfreemarker/template/TemplateSequenceModel;

.field private final wrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 37
    iput-object p1, p0, Lfreemarker/ext/beans/SequenceAdapter;->model:Lfreemarker/template/TemplateSequenceModel;

    .line 38
    iput-object p2, p0, Lfreemarker/ext/beans/SequenceAdapter;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4

    .line 57
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/SequenceAdapter;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    iget-object v1, p0, Lfreemarker/ext/beans/SequenceAdapter;->model:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v1, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 59
    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getTemplateModel()Lfreemarker/template/TemplateModel;
    .registers 2

    .line 42
    iget-object v0, p0, Lfreemarker/ext/beans/SequenceAdapter;->model:Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method public getTemplateSequenceModel()Lfreemarker/template/TemplateSequenceModel;
    .registers 2

    .line 64
    iget-object v0, p0, Lfreemarker/ext/beans/SequenceAdapter;->model:Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/SequenceAdapter;->model:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0
    :try_end_6
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 50
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
