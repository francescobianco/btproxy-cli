.class public Lfreemarker/cache/ConditionalTemplateConfigurationFactory;
.super Lfreemarker/cache/TemplateConfigurationFactory;
.source "ConditionalTemplateConfigurationFactory.java"


# instance fields
.field private final matcher:Lfreemarker/cache/TemplateSourceMatcher;

.field private final templateConfiguration:Lfreemarker/core/TemplateConfiguration;

.field private final templateConfigurationFactory:Lfreemarker/cache/TemplateConfigurationFactory;


# direct methods
.method public constructor <init>(Lfreemarker/cache/TemplateSourceMatcher;Lfreemarker/cache/TemplateConfigurationFactory;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lfreemarker/cache/TemplateConfigurationFactory;-><init>()V

    .line 40
    iput-object p1, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->matcher:Lfreemarker/cache/TemplateSourceMatcher;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfiguration:Lfreemarker/core/TemplateConfiguration;

    .line 42
    iput-object p2, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfigurationFactory:Lfreemarker/cache/TemplateConfigurationFactory;

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateSourceMatcher;Lfreemarker/core/TemplateConfiguration;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lfreemarker/cache/TemplateConfigurationFactory;-><init>()V

    .line 47
    iput-object p1, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->matcher:Lfreemarker/cache/TemplateSourceMatcher;

    .line 48
    iput-object p2, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfiguration:Lfreemarker/core/TemplateConfiguration;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfigurationFactory:Lfreemarker/cache/TemplateConfigurationFactory;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/cache/TemplateConfigurationFactoryException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->matcher:Lfreemarker/cache/TemplateSourceMatcher;

    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/TemplateSourceMatcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-object v0, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfigurationFactory:Lfreemarker/cache/TemplateConfigurationFactory;

    if-eqz v0, :cond_11

    .line 57
    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/TemplateConfigurationFactory;->get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;

    move-result-object p1

    return-object p1

    .line 59
    :cond_11
    iget-object p1, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfiguration:Lfreemarker/core/TemplateConfiguration;

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method protected setConfigurationOfChildren(Lfreemarker/template/Configuration;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfiguration:Lfreemarker/core/TemplateConfiguration;

    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v0, p1}, Lfreemarker/core/TemplateConfiguration;->setParentConfiguration(Lfreemarker/template/Configuration;)V

    .line 71
    :cond_7
    iget-object v0, p0, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;->templateConfigurationFactory:Lfreemarker/cache/TemplateConfigurationFactory;

    if-eqz v0, :cond_e

    .line 72
    invoke-virtual {v0, p1}, Lfreemarker/cache/TemplateConfigurationFactory;->setConfiguration(Lfreemarker/template/Configuration;)V

    :cond_e
    return-void
.end method
