.class final Lfreemarker/core/ExtendedDecimalFormatParser$1;
.super Ljava/lang/Object;
.source "ExtendedDecimalFormatParser.java"

# interfaces
.implements Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ExtendedDecimalFormatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;
        }
    .end annotation

    .line 67
    const-string v0, "up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 68
    sget-object p2, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    goto :goto_57

    .line 69
    :cond_b
    const-string v0, "down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 70
    sget-object p2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    goto :goto_57

    .line 71
    :cond_16
    const-string v0, "ceiling"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 72
    sget-object p2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    goto :goto_57

    .line 73
    :cond_21
    const-string v0, "floor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 74
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_57

    .line 75
    :cond_2c
    const-string v0, "halfDown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 76
    sget-object p2, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    goto :goto_57

    .line 77
    :cond_37
    const-string v0, "halfEven"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 78
    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_57

    .line 79
    :cond_42
    const-string v0, "halfUp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 80
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    goto :goto_57

    .line 81
    :cond_4d
    const-string v0, "unnecessary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 82
    sget-object p2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 90
    :goto_57
    sget-object v0, Lfreemarker/core/_JavaVersions;->JAVA_6:Lfreemarker/core/_Java6;

    if-eqz v0, :cond_5f

    .line 94
    # setter for: Lfreemarker/core/ExtendedDecimalFormatParser;->roundingMode:Ljava/math/RoundingMode;
    invoke-static {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser;->access$002(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/math/RoundingMode;)Ljava/math/RoundingMode;

    return-void

    .line 91
    :cond_5f
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;

    const-string p2, "For setting the rounding mode you need Java 6 or later."

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_67
    new-instance p1, Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;

    const-string p2, "Should be one of: up, down, ceiling, floor, halfDown, halfEven, unnecessary"

    invoke-direct {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
