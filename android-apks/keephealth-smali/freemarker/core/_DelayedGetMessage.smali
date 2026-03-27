.class public Lfreemarker/core/_DelayedGetMessage;
.super Lfreemarker/core/_DelayedConversionToString;
.source "_DelayedGetMessage.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 31
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const-string p1, "[No exception message]"

    :cond_10
    return-object p1
.end method
