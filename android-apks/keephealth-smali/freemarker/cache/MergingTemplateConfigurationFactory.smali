.class public Lfreemarker/cache/MergingTemplateConfigurationFactory;
.super Lfreemarker/cache/TemplateConfigurationFactory;
.source "MergingTemplateConfigurationFactory.java"


# instance fields
.field private final templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;


# direct methods
.method public varargs constructor <init>([Lfreemarker/cache/TemplateConfigurationFactory;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lfreemarker/cache/TemplateConfigurationFactory;-><init>()V

    .line 38
    iput-object p1, p0, Lfreemarker/cache/MergingTemplateConfigurationFactory;->templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/cache/TemplateConfigurationFactoryException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lfreemarker/cache/MergingTemplateConfigurationFactory;->templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_7
    if-ge v4, v1, :cond_39

    aget-object v5, v0, v4

    .line 47
    invoke-virtual {v5, p1, p2}, Lfreemarker/cache/TemplateConfigurationFactory;->get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;

    move-result-object v5

    if-eqz v5, :cond_36

    if-nez v2, :cond_15

    move-object v2, v5

    goto :goto_36

    :cond_15
    if-nez v3, :cond_33

    .line 53
    invoke-virtual {p0}, Lfreemarker/cache/MergingTemplateConfigurationFactory;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 59
    new-instance v6, Lfreemarker/core/TemplateConfiguration;

    invoke-direct {v6}, Lfreemarker/core/TemplateConfiguration;-><init>()V

    .line 60
    invoke-virtual {v6, v3}, Lfreemarker/core/TemplateConfiguration;->setParentConfiguration(Lfreemarker/template/Configuration;)V

    .line 61
    invoke-virtual {v6, v2}, Lfreemarker/core/TemplateConfiguration;->merge(Lfreemarker/core/TemplateConfiguration;)V

    move-object v2, v6

    move-object v3, v2

    goto :goto_33

    .line 55
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The TemplateConfigurationFactory wasn\'t associated to a Configuration yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_33
    :goto_33
    invoke-virtual {v3, v5}, Lfreemarker/core/TemplateConfiguration;->merge(Lfreemarker/core/TemplateConfiguration;)V

    :cond_36
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_39
    return-object v2
.end method

.method protected setConfigurationOfChildren(Lfreemarker/template/Configuration;)V
    .registers 6

    .line 73
    iget-object v0, p0, Lfreemarker/cache/MergingTemplateConfigurationFactory;->templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 74
    invoke-virtual {v3, p1}, Lfreemarker/cache/TemplateConfigurationFactory;->setConfiguration(Lfreemarker/template/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
