.class public Lcom/keephealth/android/util/baidumap/StepService;
.super Landroid/app/Service;
.source "StepService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/baidumap/StepService$TimeCount;,
        Lcom/keephealth/android/util/baidumap/StepService$StepBinder;
    }
.end annotation


# static fields
.field private static CURRENT_DATE:Ljava/lang/String; = ""

.field private static duration:I = 0x7530

.field private static stepSensorType:I = -0x1


# instance fields
.field private CURRENT_STEP:I

.field private TAG:Ljava/lang/String;

.field private hasRecord:Z

.field private hasStepCount:I

.field private mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private mCallback:Lcom/keephealth/android/util/baidumap/UpdateUiCallBack;

.field private mStepCount:Lcom/keephealth/android/util/baidumap/StepCount;

.field notifyId_Step:I

.field notify_remind_id:I

.field private previousStepCount:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private stepBinder:Lcom/keephealth/android/util/baidumap/StepService$StepBinder;

.field private time:Lcom/keephealth/android/util/baidumap/StepService$TimeCount;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const-string v0, "StepService"

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->hasRecord:Z

    .line 57
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->hasStepCount:I

    .line 61
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->previousStepCount:I

    .line 69
    new-instance v0, Lcom/keephealth/android/util/baidumap/StepService$StepBinder;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/baidumap/StepService$StepBinder;-><init>(Lcom/keephealth/android/util/baidumap/StepService;)V

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->stepBinder:Lcom/keephealth/android/util/baidumap/StepService$StepBinder;

    const/16 v0, 0x64

    .line 130
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->notifyId_Step:I

    const/16 v0, 0xc8

    .line 134
    iput v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->notify_remind_id:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/baidumap/StepService;)Lcom/keephealth/android/util/baidumap/StepService$TimeCount;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/util/baidumap/StepService;->time:Lcom/keephealth/android/util/baidumap/StepService$TimeCount;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/baidumap/StepService;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/StepService;->startTimeCount()V

    return-void
.end method

.method private addBasePedometerListener()V
    .registers 5

    .line 278
    new-instance v0, Lcom/keephealth/android/util/baidumap/StepCount;

    invoke-direct {v0}, Lcom/keephealth/android/util/baidumap/StepCount;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->mStepCount:Lcom/keephealth/android/util/baidumap/StepCount;

    .line 279
    iget v1, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/baidumap/StepCount;->setSteps(I)V

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 283
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/keephealth/android/util/baidumap/StepService;->mStepCount:Lcom/keephealth/android/util/baidumap/StepCount;

    invoke-virtual {v2}, Lcom/keephealth/android/util/baidumap/StepCount;->getStepDetector()Lcom/keephealth/android/util/baidumap/StepDetector;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->mStepCount:Lcom/keephealth/android/util/baidumap/StepCount;

    new-instance v1, Lcom/keephealth/android/util/baidumap/StepService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/baidumap/StepService$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/util/baidumap/StepService;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/baidumap/StepCount;->initListener(Lcom/keephealth/android/util/baidumap/StepValuePassListener;)V

    return-void
.end method

.method private addCountStepListener()V
    .registers 6

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 221
    iget-object v2, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v4, 0x3

    if-eqz v0, :cond_1b

    .line 223
    sput v1, Lcom/keephealth/android/util/baidumap/StepService;->stepSensorType:I

    .line 224
    iget-object v1, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_28

    :cond_1b
    if-eqz v2, :cond_25

    .line 226
    sput v3, Lcom/keephealth/android/util/baidumap/StepService;->stepSensorType:I

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_28

    .line 229
    :cond_25
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/StepService;->addBasePedometerListener()V

    :goto_28
    return-void
.end method

.method private getTodayDate()Ljava/lang/String;
    .registers 4

    .line 88
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 89
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startStepDetector()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    .line 197
    :cond_7
    const-string v0, "sensor"

    .line 198
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/baidumap/StepService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    .line 202
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/StepService;->addCountStepListener()V

    return-void
.end method

.method private startTimeCount()V
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->time:Lcom/keephealth/android/util/baidumap/StepService$TimeCount;

    if-nez v0, :cond_12

    .line 99
    new-instance v0, Lcom/keephealth/android/util/baidumap/StepService$TimeCount;

    sget v1, Lcom/keephealth/android/util/baidumap/StepService;->duration:I

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/util/baidumap/StepService$TimeCount;-><init>(Lcom/keephealth/android/util/baidumap/StepService;JJ)V

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->time:Lcom/keephealth/android/util/baidumap/StepService$TimeCount;

    .line 101
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->time:Lcom/keephealth/android/util/baidumap/StepService$TimeCount;

    invoke-virtual {v0}, Lcom/keephealth/android/util/baidumap/StepService$TimeCount;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateNotification()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->mCallback:Lcom/keephealth/android/util/baidumap/UpdateUiCallBack;

    if-eqz v0, :cond_9

    .line 109
    iget v1, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/util/baidumap/UpdateUiCallBack;->updateUi(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getStepCount()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    return v0
.end method

.method synthetic lambda$addBasePedometerListener$1$com-keephealth-android-util-baidumap-StepService(I)V
    .registers 2

    .line 287
    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    .line 288
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/StepService;->updateNotification()V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-keephealth-android-util-baidumap-StepService()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/StepService;->startStepDetector()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 152
    iget-object p1, p0, Lcom/keephealth/android/util/baidumap/StepService;->stepBinder:Lcom/keephealth/android/util/baidumap/StepService$StepBinder;

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/util/baidumap/StepService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/baidumap/StepService$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/baidumap/StepService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/StepService;->startTimeCount()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 326
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/baidumap/StepService;->stopForeground(Z)V

    .line 329
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_e

    .line 330
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_e
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 249
    sget v0, Lcom/keephealth/android/util/baidumap/StepService;->stepSensorType:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_25

    .line 251
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-int p1, p1

    .line 253
    iget-boolean v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->hasRecord:Z

    if-nez v0, :cond_16

    .line 254
    iput-boolean v2, p0, Lcom/keephealth/android/util/baidumap/StepService;->hasRecord:Z

    .line 255
    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepService;->hasStepCount:I

    goto :goto_39

    .line 258
    :cond_16
    iget v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->hasStepCount:I

    sub-int/2addr p1, v0

    .line 260
    iget v0, p0, Lcom/keephealth/android/util/baidumap/StepService;->previousStepCount:I

    sub-int v0, p1, v0

    .line 262
    iget v1, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    .line 264
    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepService;->previousStepCount:I

    goto :goto_39

    :cond_25
    const/16 v1, 0x12

    if-ne v0, v1, :cond_39

    .line 267
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-double v0, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v3

    if-nez p1, :cond_39

    .line 268
    iget p1, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/keephealth/android/util/baidumap/StepService;->CURRENT_STEP:I

    .line 271
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/keephealth/android/util/baidumap/StepService;->updateNotification()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    .line 181
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 336
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public registerCallback(Lcom/keephealth/android/util/baidumap/UpdateUiCallBack;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/StepService;->mCallback:Lcom/keephealth/android/util/baidumap/UpdateUiCallBack;

    return-void
.end method
