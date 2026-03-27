.class Lfreemarker/core/BuiltInsForOutputFormatRelated$no_escBI;
.super Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;
.source "BuiltInsForOutputFormatRelated.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForOutputFormatRelated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "no_escBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForOutputFormatRelated$AbstractConverterBI;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateResult(Ljava/lang/String;Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 31
    invoke-virtual {p2, p1}, Lfreemarker/core/MarkupOutputFormat;->fromMarkup(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object p1

    return-object p1
.end method
