.class public Lcom/keephealth/android/util/baidumap/StepCount;
.super Ljava/lang/Object;
.source "StepCount.java"

# interfaces
.implements Lcom/keephealth/android/util/baidumap/StepCountListener;


# instance fields
.field private count:I

.field private mCount:I

.field private mStepValuePassListener:Lcom/keephealth/android/util/baidumap/StepValuePassListener;

.field private stepDetector:Lcom/keephealth/android/util/baidumap/StepDetector;

.field private timeOfLastPeak:J

.field private timeOfThisPeak:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->count:I

    .line 13
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mCount:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfLastPeak:J

    .line 16
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfThisPeak:J

    .line 20
    new-instance v0, Lcom/keephealth/android/util/baidumap/StepDetector;

    invoke-direct {v0}, Lcom/keephealth/android/util/baidumap/StepDetector;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->stepDetector:Lcom/keephealth/android/util/baidumap/StepDetector;

    .line 21
    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/baidumap/StepDetector;->initListener(Lcom/keephealth/android/util/baidumap/StepCountListener;)V

    return-void
.end method


# virtual methods
.method public countStep()V
    .registers 5

    .line 33
    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfThisPeak:J

    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfLastPeak:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfThisPeak:J

    .line 35
    iget-wide v2, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfLastPeak:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_35

    .line 36
    iget v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->count:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_1e

    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->count:I

    goto :goto_37

    :cond_1e
    if-ne v0, v2, :cond_2c

    add-int/2addr v0, v1

    .line 39
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->count:I

    .line 40
    iget v1, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mCount:I

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/util/baidumap/StepCount;->notifyListener()V

    goto :goto_37

    .line 43
    :cond_2c
    iget v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mCount:I

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/util/baidumap/StepCount;->notifyListener()V

    goto :goto_37

    .line 47
    :cond_35
    iput v1, p0, Lcom/keephealth/android/util/baidumap/StepCount;->count:I

    :goto_37
    return-void
.end method

.method public getStepDetector()Lcom/keephealth/android/util/baidumap/StepDetector;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->stepDetector:Lcom/keephealth/android/util/baidumap/StepDetector;

    return-object v0
.end method

.method public initListener(Lcom/keephealth/android/util/baidumap/StepValuePassListener;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mStepValuePassListener:Lcom/keephealth/android/util/baidumap/StepValuePassListener;

    return-void
.end method

.method public notifyListener()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mStepValuePassListener:Lcom/keephealth/android/util/baidumap/StepValuePassListener;

    if-eqz v0, :cond_9

    .line 58
    iget v1, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mCount:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/util/baidumap/StepValuePassListener;->stepChanged(I)V

    :cond_9
    return-void
.end method

.method public setSteps(I)V
    .registers 4

    .line 63
    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepCount;->mCount:I

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepCount;->count:I

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfLastPeak:J

    .line 66
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepCount;->timeOfThisPeak:J

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/util/baidumap/StepCount;->notifyListener()V

    return-void
.end method
