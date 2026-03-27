.class public Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;
.super Lfreemarker/cache/TemplateConfigurationFactory;
.source "FirstMatchTemplateConfigurationFactory.java"


# instance fields
.field private allowNoMatch:Z

.field private noMatchErrorDetails:Ljava/lang/String;

.field private final templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;


# direct methods
.method public varargs constructor <init>([Lfreemarker/cache/TemplateConfigurationFactory;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lfreemarker/cache/TemplateConfigurationFactory;-><init>()V

    .line 38
    iput-object p1, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;

    return-void
.end method


# virtual methods
.method public allowNoMatch(Z)Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->setAllowNoMatch(Z)V

    return-object p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/cache/TemplateConfigurationFactoryException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3, p1, p2}, Lfreemarker/cache/TemplateConfigurationFactory;->get(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/core/TemplateConfiguration;

    move-result-object v3

    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 50
    :cond_12
    iget-boolean p2, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->allowNoMatch:Z

    if-nez p2, :cond_51

    .line 51
    new-instance p2, Lfreemarker/cache/TemplateConfigurationFactoryException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FirstMatchTemplateConfigurationFactory has found no matching choice for source name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->noMatchErrorDetails:Ljava/lang/String;

    if-eqz v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error details: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->noMatchErrorDetails:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :cond_43
    const-string v0, "(Set the noMatchErrorDetails property of the factory bean to give a more specific error message. Set allowNoMatch to true if this shouldn\'t be an error.)"

    :goto_45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/cache/TemplateConfigurationFactoryException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_51
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllowNoMatch()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->allowNoMatch:Z

    return v0
.end method

.method public getNoMatchErrorDetails()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->noMatchErrorDetails:Ljava/lang/String;

    return-object v0
.end method

.method public noMatchErrorDetails(Ljava/lang/String;)Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->setNoMatchErrorDetails(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAllowNoMatch(Z)V
    .registers 2

    .line 77
    iput-boolean p1, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->allowNoMatch:Z

    return-void
.end method

.method protected setConfigurationOfChildren(Lfreemarker/template/Configuration;)V
    .registers 6

    .line 113
    iget-object v0, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->templateConfigurationFactories:[Lfreemarker/cache/TemplateConfigurationFactory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 114
    invoke-virtual {v3, p1}, Lfreemarker/cache/TemplateConfigurationFactory;->setConfiguration(Lfreemarker/template/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public setNoMatchErrorDetails(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;->noMatchErrorDetails:Ljava/lang/String;

    return-void
.end method
