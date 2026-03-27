.class public abstract Lfreemarker/core/TemplateDateFormat;
.super Lfreemarker/core/TemplateValueFormat;
.source "TemplateDateFormat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lfreemarker/core/TemplateValueFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lfreemarker/template/TemplateDateModel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lfreemarker/core/TemplateDateFormat;->formatToPlainText(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract formatToPlainText(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public abstract isLocaleBound()Z
.end method

.method public abstract isTimeZoneBound()Z
.end method

.method public abstract parse(Ljava/lang/String;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation
.end method
