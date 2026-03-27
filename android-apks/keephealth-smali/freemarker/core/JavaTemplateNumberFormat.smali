.class final Lfreemarker/core/JavaTemplateNumberFormat;
.super Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;
.source "JavaTemplateNumberFormat.java"


# instance fields
.field private final formatString:Ljava/lang/String;

.field private final javaNumberFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Ljava/text/NumberFormat;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;-><init>()V

    .line 32
    iput-object p2, p0, Lfreemarker/core/JavaTemplateNumberFormat;->formatString:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lfreemarker/core/JavaTemplateNumberFormat;->javaNumberFormat:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method format(Ljava/lang/Number;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnformattableValueException;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/JavaTemplateNumberFormat;->javaNumberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception v0

    .line 52
    new-instance v1, Lfreemarker/core/UnformattableValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This format can\'t format the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " number. Reason: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 53
    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lfreemarker/core/UnformattableValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public formatToPlainText(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnformattableValueException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 38
    invoke-static {p1}, Lfreemarker/core/TemplateFormatUtil;->getNonNullNumber(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Number;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lfreemarker/core/JavaTemplateNumberFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lfreemarker/core/JavaTemplateNumberFormat;->formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    .line 58
    iget-object v0, p0, Lfreemarker/core/JavaTemplateNumberFormat;->javaNumberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public isLocaleBound()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
