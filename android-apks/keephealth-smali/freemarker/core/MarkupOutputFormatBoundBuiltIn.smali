.class abstract Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;
.super Lfreemarker/core/SpecialBuiltIn;
.source "MarkupOutputFormatBoundBuiltIn.java"


# instance fields
.field protected outputFormat:Lfreemarker/core/MarkupOutputFormat;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lfreemarker/core/SpecialBuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;->outputFormat:Lfreemarker/core/MarkupOutputFormat;

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {p0, p1}, Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;->calculateResult(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 38
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "outputFormat was null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method bindToMarkupOutputFormat(Lfreemarker/core/MarkupOutputFormat;)V
    .registers 2

    .line 30
    invoke-static {p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;->outputFormat:Lfreemarker/core/MarkupOutputFormat;

    return-void
.end method

.method protected abstract calculateResult(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
