.class Lfreemarker/core/JavaTemplateDateFormat;
.super Lfreemarker/core/TemplateDateFormat;
.source "JavaTemplateDateFormat.java"


# instance fields
.field private final javaDateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lfreemarker/core/TemplateDateFormat;-><init>()V

    .line 38
    iput-object p1, p0, Lfreemarker/core/JavaTemplateDateFormat;->javaDateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public formatToPlainText(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lfreemarker/core/JavaTemplateDateFormat;->javaDateFormat:Ljava/text/DateFormat;

    invoke-static {p1}, Lfreemarker/core/TemplateFormatUtil;->getNonNullDate(Lfreemarker/template/TemplateDateModel;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 57
    iget-object v0, p0, Lfreemarker/core/JavaTemplateDateFormat;->javaDateFormat:Ljava/text/DateFormat;

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 58
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 59
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public isLocaleBound()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeZoneBound()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic parse(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/JavaTemplateDateFormat;->parse(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;I)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnparsableValueException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object p2, p0, Lfreemarker/core/JavaTemplateDateFormat;->javaDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 51
    new-instance p2, Lfreemarker/core/UnparsableValueException;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lfreemarker/core/UnparsableValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
