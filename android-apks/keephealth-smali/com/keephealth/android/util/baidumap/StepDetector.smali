.class public Lcom/keephealth/android/util/baidumap/StepDetector;
.super Ljava/lang/Object;
.source "StepDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final InitialValue:F

.field ThreadValue:F

.field TimeInterval:I

.field final ValueNum:I

.field continueUpCount:I

.field continueUpFormerCount:I

.field gravityNew:F

.field gravityOld:F

.field isDirectionUp:Z

.field lastStatus:Z

.field private mStepListeners:Lcom/keephealth/android/util/baidumap/StepCountListener;

.field oriValues:[F

.field peakOfWave:F

.field tempCount:I

.field tempValue:[F

.field timeOfLastPeak:J

.field timeOfNow:J

.field timeOfThisPeak:J

.field valleyOfWave:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->oriValues:[F

    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->ValueNum:I

    .line 20
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempValue:[F

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempCount:I

    .line 23
    iput-boolean v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->isDirectionUp:Z

    .line 25
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpCount:I

    .line 27
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpFormerCount:I

    .line 29
    iput-boolean v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->lastStatus:Z

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->peakOfWave:F

    .line 33
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->valleyOfWave:F

    const-wide/16 v1, 0x0

    .line 35
    iput-wide v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfThisPeak:J

    .line 37
    iput-wide v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfLastPeak:J

    .line 39
    iput-wide v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfNow:J

    .line 41
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->gravityNew:F

    .line 43
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->gravityOld:F

    const v0, 0x3fa66666    # 1.3f

    .line 45
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->InitialValue:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 47
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->ThreadValue:F

    const/16 v0, 0xfa

    .line 49
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->TimeInterval:I

    return-void
.end method


# virtual methods
.method public averageValue([FI)F
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_a

    .line 170
    aget v2, p1, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr v0, p1

    const/high16 p2, 0x41000000    # 8.0f

    cmpl-float v1, v0, p2

    if-ltz v1, :cond_17

    const p1, 0x4089999a    # 4.3f

    goto :goto_41

    :cond_17
    const/high16 v1, 0x40e00000    # 7.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_25

    cmpg-float p2, v0, p2

    if-gez p2, :cond_25

    const p1, 0x40533333    # 3.3f

    goto :goto_41

    :cond_25
    cmpl-float p2, v0, p1

    if-ltz p2, :cond_31

    cmpg-float p2, v0, v1

    if-gez p2, :cond_31

    const p1, 0x40133333    # 2.3f

    goto :goto_41

    :cond_31
    const/high16 p2, 0x40400000    # 3.0f

    cmpl-float p2, v0, p2

    if-ltz p2, :cond_3e

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3e

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_41

    :cond_3e
    const p1, 0x3fa66666    # 1.3f

    :goto_41
    return p1
.end method

.method public detectorNewStep(F)V
    .registers 8

    .line 78
    iget v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->gravityOld:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a

    .line 79
    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->gravityOld:F

    goto :goto_5a

    .line 81
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/baidumap/StepDetector;->detectorPeak(FF)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 82
    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfThisPeak:J

    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfLastPeak:J

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfNow:J

    .line 84
    iget-wide v2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfLastPeak:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->TimeInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_37

    iget v2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->peakOfWave:F

    iget v3, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->valleyOfWave:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->ThreadValue:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_37

    .line 86
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfThisPeak:J

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->mStepListeners:Lcom/keephealth/android/util/baidumap/StepCountListener;

    invoke-interface {v0}, Lcom/keephealth/android/util/baidumap/StepCountListener;->countStep()V

    .line 96
    :cond_37
    iget-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfNow:J

    iget-wide v2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfLastPeak:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->TimeInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5a

    iget v2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->peakOfWave:F

    iget v3, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->valleyOfWave:F

    sub-float v4, v2, v3

    const v5, 0x3fa66666    # 1.3f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5a

    .line 98
    iput-wide v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->timeOfThisPeak:J

    sub-float/2addr v2, v3

    .line 99
    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/baidumap/StepDetector;->peakValleyThread(F)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->ThreadValue:F

    .line 103
    :cond_5a
    :goto_5a
    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->gravityOld:F

    return-void
.end method

.method public detectorPeak(FF)Z
    .registers 8

    .line 118
    iget-boolean v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->isDirectionUp:Z

    iput-boolean v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->lastStatus:Z

    cmpl-float p1, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_12

    .line 120
    iput-boolean v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->isDirectionUp:Z

    .line 121
    iget p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpCount:I

    goto :goto_1a

    .line 123
    :cond_12
    iget p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpCount:I

    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpFormerCount:I

    .line 124
    iput v2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpCount:I

    .line 125
    iput-boolean v2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->isDirectionUp:Z

    .line 128
    :goto_1a
    iget-boolean p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->isDirectionUp:Z

    if-nez p1, :cond_2e

    if-eqz v0, :cond_2e

    iget v3, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->continueUpFormerCount:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2b

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2e

    .line 130
    :cond_2b
    iput p2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->peakOfWave:F

    return v1

    :cond_2e
    if-nez v0, :cond_34

    if-eqz p1, :cond_34

    .line 133
    iput p2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->valleyOfWave:F

    :cond_34
    return v2
.end method

.method public initListener(Lcom/keephealth/android/util/baidumap/StepCountListener;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->mStepListeners:Lcom/keephealth/android/util/baidumap/StepCountListener;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    .line 55
    iget-object v2, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->oriValues:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    :cond_10
    iget-object p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->oriValues:[F

    aget v0, p1, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget p1, p1, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->gravityNew:F

    .line 59
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/baidumap/StepDetector;->detectorNewStep(F)V

    return-void
.end method

.method public peakValleyThread(F)F
    .registers 8

    .line 147
    iget v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->ThreadValue:F

    .line 148
    iget v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempCount:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_10

    .line 149
    iget-object v3, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempValue:[F

    aput p1, v3, v1

    add-int/2addr v1, v2

    .line 150
    iput v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempCount:I

    goto :goto_28

    .line 152
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempValue:[F

    invoke-virtual {p0, v0, v3}, Lcom/keephealth/android/util/baidumap/StepDetector;->averageValue([FI)F

    move-result v0

    :goto_16
    if-ge v2, v3, :cond_23

    .line 154
    iget-object v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempValue:[F

    add-int/lit8 v4, v2, -0x1

    aget v5, v1, v2

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 156
    :cond_23
    iget-object v1, p0, Lcom/keephealth/android/util/baidumap/StepDetector;->tempValue:[F

    const/4 v2, 0x3

    aput p1, v1, v2

    :goto_28
    return v0
.end method
