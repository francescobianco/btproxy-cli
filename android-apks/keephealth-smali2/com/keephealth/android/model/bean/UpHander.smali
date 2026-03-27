.class public Lcom/keephealth/android/model/bean/UpHander;
.super Ljava/lang/Object;
.source "UpHander.java"


# instance fields
.field private effectiveEndHour:I

.field private effectiveEndMinute:I

.field private effectiveOnOff:Z

.field private effectiveRepetitions:I

.field private effectiveStartHour:I

.field private effectiveStartMinute:I

.field private lightTime:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toByte(Z)I
    .registers 8

    const/4 v0, 0x7

    .line 65
    new-array v1, v0, [Z

    fill-array-data v1, :array_1c

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_17

    .line 67
    aget-boolean v4, v1, v2

    if-eqz v4, :cond_14

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    if-eqz p1, :cond_1b

    or-int/lit8 v3, v3, 0x1

    :cond_1b
    return v3

    :array_1c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getEffectiveEndHour()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveEndHour:I

    return v0
.end method

.method public getEffectiveEndMinute()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveEndMinute:I

    return v0
.end method

.method public getEffectiveRepetitions()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveRepetitions:I

    return v0
.end method

.method public getEffectiveStartHour()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveStartHour:I

    return v0
.end method

.method public getEffectiveStartMinute()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveStartMinute:I

    return v0
.end method

.method public getLightTime()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/keephealth/android/model/bean/UpHander;->lightTime:I

    return v0
.end method

.method public isEffectiveOnOff()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveOnOff:Z

    return v0
.end method

.method public setEffectiveEndHour(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveEndHour:I

    return-void
.end method

.method public setEffectiveEndMinute(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveEndMinute:I

    return-void
.end method

.method public setEffectiveOnOff(Z)V
    .registers 3

    .line 57
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveOnOff:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/keephealth/android/model/bean/UpHander;->toByte(Z)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveRepetitions:I

    .line 59
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveOnOff:Z

    return-void
.end method

.method public setEffectiveStartHour(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveStartHour:I

    return-void
.end method

.method public setEffectiveStartMinute(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/keephealth/android/model/bean/UpHander;->effectiveStartMinute:I

    return-void
.end method

.method public setLightTime(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/model/bean/UpHander;->lightTime:I

    return-void
.end method
