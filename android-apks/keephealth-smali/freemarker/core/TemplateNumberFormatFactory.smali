.class public abstract Lfreemarker/core/TemplateNumberFormatFactory;
.super Lfreemarker/core/TemplateValueFormatFactory;
.source "TemplateNumberFormatFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lfreemarker/core/TemplateValueFormatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/Environment;)Lfreemarker/core/TemplateNumberFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation
.end method
