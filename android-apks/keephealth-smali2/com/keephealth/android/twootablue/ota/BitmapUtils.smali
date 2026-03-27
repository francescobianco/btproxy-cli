.class public Lcom/keephealth/android/twootablue/ota/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countZeroBit([B)I
    .registers 6

    .line 17
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_13

    aget-byte v3, p0, v1

    :goto_7
    add-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_10

    or-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    return v2
.end method

.method public static getZeroBitIndexMap([BI)[I
    .registers 12

    .line 28
    invoke-static {p0}, Lcom/keephealth/android/twootablue/ota/BitmapUtils;->countZeroBit([B)I

    move-result v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nick_getZero_num"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-array v0, p1, [I

    .line 34
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_23
    if-ge v3, v1, :cond_3e

    aget-byte v6, p0, v3

    move v7, v2

    :goto_28
    if-ge v7, p1, :cond_3b

    .line 36
    rem-int v8, v4, p1

    const/4 v9, 0x1

    shl-int v8, v9, v8

    and-int/2addr v8, v6

    if-nez v8, :cond_36

    .line 39
    aput v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_36
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3e
    return-object v0
.end method
