.class public Lfreemarker/core/TemplateXHTMLOutputModel;
.super Lfreemarker/core/TemplateXMLOutputModel;
.source "TemplateXHTMLOutputModel.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lfreemarker/core/TemplateXMLOutputModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOutputFormat()Lfreemarker/core/CommonMarkupOutputFormat;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/TemplateXHTMLOutputModel;->getOutputFormat()Lfreemarker/core/XHTMLOutputFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputFormat()Lfreemarker/core/MarkupOutputFormat;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/TemplateXHTMLOutputModel;->getOutputFormat()Lfreemarker/core/XHTMLOutputFormat;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFormat()Lfreemarker/core/XHTMLOutputFormat;
    .registers 2

    .line 40
    sget-object v0, Lfreemarker/core/XHTMLOutputFormat;->INSTANCE:Lfreemarker/core/XHTMLOutputFormat;

    return-object v0
.end method

.method public bridge synthetic getOutputFormat()Lfreemarker/core/XMLOutputFormat;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/TemplateXHTMLOutputModel;->getOutputFormat()Lfreemarker/core/XHTMLOutputFormat;

    move-result-object v0

    return-object v0
.end method
