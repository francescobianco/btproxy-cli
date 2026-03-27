.class abstract Lfreemarker/core/OutputFormatBoundBuiltIn;
.super Lfreemarker/core/SpecialBuiltIn;
.source "OutputFormatBoundBuiltIn.java"


# instance fields
.field protected autoEscapingPolicy:I

.field protected outputFormat:Lfreemarker/core/OutputFormat;


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

    .line 38
    iget-object v0, p0, Lfreemarker/core/OutputFormatBoundBuiltIn;->outputFormat:Lfreemarker/core/OutputFormat;

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {p0, p1}, Lfreemarker/core/OutputFormatBoundBuiltIn;->calculateResult(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 40
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "outputFormat was null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method bindToOutputFormat(Lfreemarker/core/OutputFormat;I)V
    .registers 3

    .line 31
    invoke-static {p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lfreemarker/core/OutputFormatBoundBuiltIn;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 33
    iput p2, p0, Lfreemarker/core/OutputFormatBoundBuiltIn;->autoEscapingPolicy:I

    return-void
.end method

.method protected abstract calculateResult(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
