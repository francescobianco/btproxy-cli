.class public abstract Lfreemarker/core/CommonMarkupOutputFormat;
.super Lfreemarker/core/MarkupOutputFormat;
.source "CommonMarkupOutputFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MO:",
        "Lfreemarker/core/CommonTemplateMarkupOutputModel;",
        ">",
        "Lfreemarker/core/MarkupOutputFormat<",
        "TMO;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lfreemarker/core/MarkupOutputFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public final concat(Lfreemarker/core/CommonTemplateMarkupOutputModel;Lfreemarker/core/CommonTemplateMarkupOutputModel;)Lfreemarker/core/CommonTemplateMarkupOutputModel;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;TMO;)TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getPlainTextContent()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getMarkupContent()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p2}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getPlainTextContent()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p2}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getMarkupContent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_27

    if-eqz v2, :cond_27

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, v4

    :goto_28
    if-eqz v1, :cond_3e

    if-eqz v3, :cond_3e

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3f

    :cond_3e
    move-object v5, v4

    :goto_3f
    if-nez v2, :cond_7a

    if-eqz v5, :cond_44

    goto :goto_7a

    :cond_44
    if-eqz v0, :cond_60

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->getMarkupString(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1

    .line 95
    :cond_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, p2}, Lfreemarker/core/CommonMarkupOutputFormat;->getMarkupString(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1

    .line 89
    :cond_7a
    :goto_7a
    invoke-virtual {p0, v2, v5}, Lfreemarker/core/CommonMarkupOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic concat(Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    check-cast p1, Lfreemarker/core/CommonTemplateMarkupOutputModel;

    check-cast p2, Lfreemarker/core/CommonTemplateMarkupOutputModel;

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/CommonMarkupOutputFormat;->concat(Lfreemarker/core/CommonTemplateMarkupOutputModel;Lfreemarker/core/CommonTemplateMarkupOutputModel;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method

.method public final fromMarkup(Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fromMarkup(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->fromMarkup(Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method

.method public final fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lfreemarker/core/CommonMarkupOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->fromPlainTextByEscaping(Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method

.method public final getMarkupString(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getMarkupContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 74
    :cond_7
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getPlainTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/CommonMarkupOutputFormat;->escapePlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->setMarkupContent(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getMarkupString(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    check-cast p1, Lfreemarker/core/CommonTemplateMarkupOutputModel;

    invoke-virtual {p0, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->getMarkupString(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getSourcePlainText(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getPlainTextContent()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSourcePlainText(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    check-cast p1, Lfreemarker/core/CommonTemplateMarkupOutputModel;

    invoke-virtual {p0, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->getSourcePlainText(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAutoEscapedByDefault()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getPlainTextContent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 105
    :cond_11
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getMarkupContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public bridge synthetic isEmpty(Lfreemarker/core/TemplateMarkupOutputModel;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    check-cast p1, Lfreemarker/core/CommonTemplateMarkupOutputModel;

    invoke-virtual {p0, p1}, Lfreemarker/core/CommonMarkupOutputFormat;->isEmpty(Lfreemarker/core/CommonTemplateMarkupOutputModel;)Z

    move-result p1

    return p1
.end method

.method public isOutputFormatMixingAllowed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TMO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public final output(Lfreemarker/core/CommonTemplateMarkupOutputModel;Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMO;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getMarkupContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 53
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_11

    .line 55
    :cond_a
    invoke-virtual {p1}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getPlainTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/CommonMarkupOutputFormat;->output(Ljava/lang/String;Ljava/io/Writer;)V

    :goto_11
    return-void
.end method

.method public bridge synthetic output(Lfreemarker/core/TemplateMarkupOutputModel;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    check-cast p1, Lfreemarker/core/CommonTemplateMarkupOutputModel;

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/CommonMarkupOutputFormat;->output(Lfreemarker/core/CommonTemplateMarkupOutputModel;Ljava/io/Writer;)V

    return-void
.end method

.method public abstract output(Ljava/lang/String;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
