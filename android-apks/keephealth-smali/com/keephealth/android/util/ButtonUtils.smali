.class public Lcom/keephealth/android/util/ButtonUtils;
.super Ljava/lang/Object;
.source "ButtonUtils.java"


# static fields
.field private static DIFF:J = 0x3e8L

.field private static lastButtonId:I = -0x1

.field private static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastDoubleClick()Z
    .registers 3

    const/4 v0, -0x1

    .line 14
    sget-wide v1, Lcom/keephealth/android/util/ButtonUtils;->DIFF:J

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    return v0
.end method

.method public static isFastDoubleClick(I)Z
    .registers 3

    .line 23
    sget-wide v0, Lcom/keephealth/android/util/ButtonUtils;->DIFF:J

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result p0

    return p0
.end method

.method public static isFastDoubleClick(IJ)Z
    .registers 11

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    sget-wide v2, Lcom/keephealth/android/util/ButtonUtils;->lastClickTime:J

    sub-long v4, v0, v2

    .line 35
    sget v6, Lcom/keephealth/android/util/ButtonUtils;->lastButtonId:I

    if-ne v6, p0, :cond_1c

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1c

    cmp-long p1, v4, p1

    if-gez p1, :cond_1c

    cmp-long p1, v4, v6

    if-lez p1, :cond_1c

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_1c
    sput-wide v0, Lcom/keephealth/android/util/ButtonUtils;->lastClickTime:J

    .line 39
    sput p0, Lcom/keephealth/android/util/ButtonUtils;->lastButtonId:I

    const/4 p0, 0x0

    return p0
.end method
