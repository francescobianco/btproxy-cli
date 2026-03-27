.class Lfreemarker/core/BuiltInsForNumbers$floatBI;
.super Lfreemarker/core/BuiltInForNumber;
.source "BuiltInsForNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "floatBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Lfreemarker/core/BuiltInForNumber;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 4

    .line 179
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    return-object p2

    .line 182
    :cond_5
    new-instance p2, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleNumber;-><init>(F)V

    return-object p2
.end method
