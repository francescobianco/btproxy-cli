.class public abstract Lfreemarker/cache/TemplateConfigurationFactory;
.super Ljava/lang/Object;
.source "TemplateConfigurationFactory.java"


# instance fields
.field private cfg:Lfreemarker/template/Configuration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/cache/TemplateConfigurationFactoryException;
        }
    .end annotation
.end method

.method public getConfiguration()Lfreemarker/template/Configuration;
    .registers 2

    .line 80
    iget-object v0, p0, Lfreemarker/cache/TemplateConfigurationFactory;->cfg:Lfreemarker/template/Configuration;

    return-object v0
.end method

.method public final setConfiguration(Lfreemarker/template/Configuration;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lfreemarker/cache/TemplateConfigurationFactory;->cfg:Lfreemarker/template/Configuration;

    if-eqz v0, :cond_f

    if-ne p1, v0, :cond_7

    return-void

    .line 65
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The TemplateConfigurationFactory is already bound to another Configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_f
    iput-object p1, p0, Lfreemarker/cache/TemplateConfigurationFactory;->cfg:Lfreemarker/template/Configuration;

    .line 71
    invoke-virtual {p0, p1}, Lfreemarker/cache/TemplateConfigurationFactory;->setConfigurationOfChildren(Lfreemarker/template/Configuration;)V

    return-void
.end method

.method protected abstract setConfigurationOfChildren(Lfreemarker/template/Configuration;)V
.end method
