.class public Lcom/keephealth/android/model/bean/HeartRateInterval;
.super Ljava/lang/Object;
.source "HeartRateInterval.java"


# static fields
.field private static final DEFAULT_MAX_VALUE:I = 0xdc

.field private static final DEFAULT_REGION_VALUE:I = 0xe1


# instance fields
.field public aerobicThreshold:I

.field public burnFatThreshold:I

.field public customWarinValue:I

.field public isCustomHr:Z

.field public isCustomWarin:Z

.field public limintThreshold:I

.field public maxHr:I

.field public minHr:I

.field public userMaxHR:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->burnFatThreshold:I

    const/16 v1, 0xa5

    .line 6
    iput v1, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->aerobicThreshold:I

    .line 7
    iput v0, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->limintThreshold:I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomWarin:Z

    const/16 v2, 0xdc

    .line 10
    iput v2, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->customWarinValue:I

    .line 12
    iput-boolean v1, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomHr:Z

    .line 13
    iput v2, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->maxHr:I

    .line 14
    iput v0, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->minHr:I

    return-void
.end method


# virtual methods
.method public getAerobicThreshold()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->aerobicThreshold:I

    return v0
.end method

.method public getBurnFatThreshold()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->burnFatThreshold:I

    return v0
.end method

.method public getLimintThreshold()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->limintThreshold:I

    return v0
.end method

.method public setAerobicThreshold(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->aerobicThreshold:I

    return-void
.end method

.method public setBurnFatThreshold(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->burnFatThreshold:I

    return-void
.end method

.method public setLimintThreshold(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->limintThreshold:I

    return-void
.end method

.method public setUserMaxHR(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/model/bean/HeartRateInterval;->userMaxHR:I

    return-void
.end method
