.class abstract Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;
.super Lfreemarker/core/TemplateNumberFormat;
.source "BackwardCompatibleTemplateNumberFormat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lfreemarker/core/TemplateNumberFormat;-><init>()V

    return-void
.end method


# virtual methods
.method abstract format(Ljava/lang/Number;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnformattableValueException;
        }
    .end annotation
.end method
