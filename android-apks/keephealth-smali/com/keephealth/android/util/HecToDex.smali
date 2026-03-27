.class public Lcom/keephealth/android/util/HecToDex;
.super Ljava/lang/Object;
.source "HecToDex.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hexToDec(Ljava/lang/String;)I
    .registers 2

    const/16 v0, 0x10

    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
