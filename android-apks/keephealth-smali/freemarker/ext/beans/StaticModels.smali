.class Lfreemarker/ext/beans/StaticModels;
.super Lfreemarker/ext/beans/ClassBasedModelFactory;
.source "StaticModels.java"


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/BeansWrapper;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/ClassBasedModelFactory;-><init>(Lfreemarker/ext/beans/BeansWrapper;)V

    return-void
.end method


# virtual methods
.method protected createModel(Ljava/lang/Class;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 41
    new-instance v0, Lfreemarker/ext/beans/StaticModel;

    invoke-virtual {p0}, Lfreemarker/ext/beans/StaticModels;->getWrapper()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/StaticModel;-><init>(Ljava/lang/Class;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object v0
.end method
