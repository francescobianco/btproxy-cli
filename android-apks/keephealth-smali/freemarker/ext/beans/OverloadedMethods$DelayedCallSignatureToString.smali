.class abstract Lfreemarker/ext/beans/OverloadedMethods$DelayedCallSignatureToString;
.super Lfreemarker/core/_DelayedConversionToString;
.source "OverloadedMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DelayedCallSignatureToString"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/beans/OverloadedMethods;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/OverloadedMethods;[Ljava/lang/Object;)V
    .registers 3

    .line 255
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedMethods$DelayedCallSignatureToString;->this$0:Lfreemarker/ext/beans/OverloadedMethods;

    .line 256
    invoke-direct {p0, p2}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method abstract argumentToString(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 261
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 264
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_20

    if-eqz v1, :cond_14

    .line 265
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_14
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lfreemarker/ext/beans/OverloadedMethods$DelayedCallSignatureToString;->argumentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 269
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
