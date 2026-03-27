.class public Lfreemarker/ext/beans/_EnumModels;
.super Lfreemarker/ext/beans/ClassBasedModelFactory;
.source "_EnumModels.java"


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/ClassBasedModelFactory;-><init>(Lfreemarker/ext/beans/BeansWrapper;)V

    return-void
.end method


# virtual methods
.method protected createModel(Ljava/lang/Class;)Lfreemarker/template/TemplateModel;
    .registers 6

    .line 39
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 48
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    .line 49
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Enum;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 52
    :cond_1f
    new-instance p1, Lfreemarker/ext/beans/SimpleMapModel;

    invoke-virtual {p0}, Lfreemarker/ext/beans/_EnumModels;->getWrapper()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/beans/SimpleMapModel;-><init>(Ljava/util/Map;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 31
    invoke-super {p0, p1}, Lfreemarker/ext/beans/ClassBasedModelFactory;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .line 31
    invoke-super {p0}, Lfreemarker/ext/beans/ClassBasedModelFactory;->isEmpty()Z

    move-result v0

    return v0
.end method
