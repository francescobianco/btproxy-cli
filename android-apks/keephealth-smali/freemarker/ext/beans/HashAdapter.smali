.class public Lfreemarker/ext/beans/HashAdapter;
.super Ljava/util/AbstractMap;
.source "HashAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateModelAdapter;


# instance fields
.field private entrySet:Ljava/util/Set;

.field private final model:Lfreemarker/template/TemplateHashModel;

.field private final wrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 44
    iput-object p1, p0, Lfreemarker/ext/beans/HashAdapter;->model:Lfreemarker/template/TemplateHashModel;

    .line 45
    iput-object p2, p0, Lfreemarker/ext/beans/HashAdapter;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-void
.end method

.method static synthetic access$000(Lfreemarker/ext/beans/HashAdapter;)Lfreemarker/template/TemplateHashModelEx;
    .registers 1

    .line 38
    invoke-direct {p0}, Lfreemarker/ext/beans/HashAdapter;->getModelEx()Lfreemarker/template/TemplateHashModelEx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lfreemarker/ext/beans/HashAdapter;)Lfreemarker/ext/beans/BeansWrapper;
    .registers 1

    .line 38
    iget-object p0, p0, Lfreemarker/ext/beans/HashAdapter;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-object p0
.end method

.method private getModelEx()Lfreemarker/template/TemplateHashModelEx;
    .registers 4

    .line 174
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter;->model:Lfreemarker/template/TemplateHashModel;

    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_9

    .line 175
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    return-object v0

    .line 177
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Operation supported only on TemplateHashModelEx. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/ext/beans/HashAdapter;->model:Lfreemarker/template/TemplateHashModel;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement it though."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 82
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/HashAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_8
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .line 90
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-object v0

    .line 93
    :cond_5
    new-instance v0, Lfreemarker/ext/beans/HashAdapter$1;

    invoke-direct {v0, p0}, Lfreemarker/ext/beans/HashAdapter$1;-><init>(Lfreemarker/ext/beans/HashAdapter;)V

    iput-object v0, p0, Lfreemarker/ext/beans/HashAdapter;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter;->wrapper:Lfreemarker/ext/beans/BeansWrapper;

    iget-object v1, p0, Lfreemarker/ext/beans/HashAdapter;->model:Lfreemarker/template/TemplateHashModel;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 75
    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getTemplateModel()Lfreemarker/template/TemplateModel;
    .registers 2

    .line 49
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter;->model:Lfreemarker/template/TemplateHashModel;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter;->model:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModel;->isEmpty()Z

    move-result v0
    :try_end_6
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 57
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public size()I
    .registers 3

    .line 64
    :try_start_0
    invoke-direct {p0}, Lfreemarker/ext/beans/HashAdapter;->getModelEx()Lfreemarker/template/TemplateHashModelEx;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0
    :try_end_8
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    .line 66
    new-instance v1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
