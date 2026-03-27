.class public Lfreemarker/core/TemplateRTFOutputModel;
.super Lfreemarker/core/CommonTemplateMarkupOutputModel;
.source "TemplateRTFOutputModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/core/CommonTemplateMarkupOutputModel<",
        "Lfreemarker/core/TemplateRTFOutputModel;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lfreemarker/core/CommonTemplateMarkupOutputModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOutputFormat()Lfreemarker/core/CommonMarkupOutputFormat;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/TemplateRTFOutputModel;->getOutputFormat()Lfreemarker/core/RTFOutputFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputFormat()Lfreemarker/core/MarkupOutputFormat;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/TemplateRTFOutputModel;->getOutputFormat()Lfreemarker/core/RTFOutputFormat;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFormat()Lfreemarker/core/RTFOutputFormat;
    .registers 2

    .line 40
    sget-object v0, Lfreemarker/core/RTFOutputFormat;->INSTANCE:Lfreemarker/core/RTFOutputFormat;

    return-object v0
.end method
