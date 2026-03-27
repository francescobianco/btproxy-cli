.class public abstract Lfreemarker/core/TemplateDateFormatFactory;
.super Lfreemarker/core/TemplateValueFormatFactory;
.source "TemplateDateFormatFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lfreemarker/core/TemplateValueFormatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/Environment;)Lfreemarker/core/TemplateDateFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation
.end method
