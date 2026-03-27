.class Lfreemarker/core/BuiltInsForNumbers$doubleBI;
.super Lfreemarker/core/BuiltInForNumber;
.source "BuiltInsForNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "doubleBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Lfreemarker/core/BuiltInForNumber;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 5

    .line 169
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    return-object p2

    .line 172
    :cond_5
    new-instance p2, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(D)V

    return-object p2
.end method
