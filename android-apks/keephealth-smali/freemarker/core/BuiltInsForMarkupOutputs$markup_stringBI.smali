.class Lfreemarker/core/BuiltInsForMarkupOutputs$markup_stringBI;
.super Lfreemarker/core/BuiltInForMarkupOutput;
.source "BuiltInsForMarkupOutputs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMarkupOutputs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "markup_stringBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lfreemarker/core/BuiltInForMarkupOutput;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateResult(Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 35
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-interface {p1}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lfreemarker/core/MarkupOutputFormat;->getMarkupString(Lfreemarker/core/TemplateMarkupOutputModel;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
