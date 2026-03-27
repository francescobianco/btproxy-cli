.class public final Lfreemarker/core/CombinedMarkupOutputFormat;
.super Lfreemarker/core/CommonMarkupOutputFormat;
.source "CombinedMarkupOutputFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/core/CommonMarkupOutputFormat<",
        "Lfreemarker/core/TemplateCombinedMarkupOutputModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final inner:Lfreemarker/core/MarkupOutputFormat;

.field private final name:Ljava/lang/String;

.field private final outer:Lfreemarker/core/MarkupOutputFormat;


# direct methods
.method public constructor <init>(Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/MarkupOutputFormat;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/CombinedMarkupOutputFormat;-><init>(Ljava/lang/String;Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/MarkupOutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/MarkupOutputFormat;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Lfreemarker/core/CommonMarkupOutputFormat;-><init>()V

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_2c

    .line 52
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lfreemarker/core/MarkupOutputFormat;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lfreemarker/core/MarkupOutputFormat;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2c
    iput-object p1, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    .line 54
    iput-object p3, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->inner:Lfreemarker/core/MarkupOutputFormat;

    return-void
.end method


# virtual methods
.method public escapePlainText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    iget-object v1, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->inner:Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v1, p1}, Lfreemarker/core/MarkupOutputFormat;->escapePlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/core/MarkupOutputFormat;->escapePlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInnerOutputFormat()Lfreemarker/core/MarkupOutputFormat;
    .registers 2

    .line 97
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->inner:Lfreemarker/core/MarkupOutputFormat;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v0}, Lfreemarker/core/MarkupOutputFormat;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOuterOutputFormat()Lfreemarker/core/MarkupOutputFormat;
    .registers 2

    .line 93
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    return-object v0
.end method

.method public isAutoEscapedByDefault()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v0}, Lfreemarker/core/MarkupOutputFormat;->isAutoEscapedByDefault()Z

    move-result v0

    return v0
.end method

.method public isLegacyBuiltInBypassed(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v0, p1}, Lfreemarker/core/MarkupOutputFormat;->isLegacyBuiltInBypassed(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isOutputFormatMixingAllowed()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v0}, Lfreemarker/core/MarkupOutputFormat;->isOutputFormatMixingAllowed()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/CombinedMarkupOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/TemplateCombinedMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method

.method protected newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/TemplateCombinedMarkupOutputModel;
    .registers 4

    .line 103
    new-instance v0, Lfreemarker/core/TemplateCombinedMarkupOutputModel;

    invoke-direct {v0, p1, p2, p0}, Lfreemarker/core/TemplateCombinedMarkupOutputModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/CombinedMarkupOutputFormat;)V

    return-object v0
.end method

.method public output(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->outer:Lfreemarker/core/MarkupOutputFormat;

    iget-object v1, p0, Lfreemarker/core/CombinedMarkupOutputFormat;->inner:Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v1, p1}, Lfreemarker/core/MarkupOutputFormat;->escapePlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lfreemarker/core/MarkupOutputFormat;->output(Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method
