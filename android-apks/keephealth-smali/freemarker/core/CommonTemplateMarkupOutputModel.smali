.class public abstract Lfreemarker/core/CommonTemplateMarkupOutputModel;
.super Ljava/lang/Object;
.source "CommonTemplateMarkupOutputModel.java"

# interfaces
.implements Lfreemarker/core/TemplateMarkupOutputModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MO:",
        "Lfreemarker/core/CommonTemplateMarkupOutputModel<",
        "TMO;>;>",
        "Ljava/lang/Object;",
        "Lfreemarker/core/TemplateMarkupOutputModel<",
        "TMO;>;"
    }
.end annotation


# instance fields
.field private markupContent:Ljava/lang/String;

.field private final plainTextContent:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->plainTextContent:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->markupContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final getMarkupContent()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->markupContent:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOutputFormat()Lfreemarker/core/CommonMarkupOutputFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfreemarker/core/CommonMarkupOutputFormat<",
            "TMO;>;"
        }
    .end annotation
.end method

.method public bridge synthetic getOutputFormat()Lfreemarker/core/MarkupOutputFormat;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/CommonMarkupOutputFormat;

    move-result-object v0

    return-object v0
.end method

.method final getPlainTextContent()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->plainTextContent:Ljava/lang/String;

    return-object v0
.end method

.method final setMarkupContent(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->markupContent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "markupOutput(format="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfreemarker/core/CommonTemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/CommonMarkupOutputFormat;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/core/CommonMarkupOutputFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->plainTextContent:Ljava/lang/String;

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "plainText="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->plainTextContent:Ljava/lang/String;

    goto :goto_30

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "markup="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/CommonTemplateMarkupOutputModel;->markupContent:Ljava/lang/String;

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
