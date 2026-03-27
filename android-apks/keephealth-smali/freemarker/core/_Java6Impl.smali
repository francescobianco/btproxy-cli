.class public final Lfreemarker/core/_Java6Impl;
.super Ljava/lang/Object;
.source "_Java6Impl.java"

# interfaces
.implements Lfreemarker/core/_Java6;


# static fields
.field public static final INSTANCE:Lfreemarker/core/_Java6;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lfreemarker/core/_Java6Impl;

    invoke-direct {v0}, Lfreemarker/core/_Java6Impl;-><init>()V

    sput-object v0, Lfreemarker/core/_Java6Impl;->INSTANCE:Lfreemarker/core/_Java6;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExponentSeparator(Ljava/text/DecimalFormatSymbols;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public setRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V
    .registers 3

    .line 40
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    return-void
.end method
