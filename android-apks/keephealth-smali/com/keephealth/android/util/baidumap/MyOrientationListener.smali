.class public Lcom/keephealth/android/util/baidumap/MyOrientationListener;
.super Ljava/lang/Object;
.source "MyOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/baidumap/MyOrientationListener$OnOrientationListener;
    }
.end annotation


# instance fields
.field private lastX:F

.field private mContext:Landroid/content/Context;

.field private mOnOrientationListener:Lcom/keephealth/android/util/baidumap/MyOrientationListener$OnOrientationListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 59
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 61
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 63
    iget v0, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->lastX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_24

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mOnOrientationListener:Lcom/keephealth/android/util/baidumap/MyOrientationListener$OnOrientationListener;

    if-eqz v0, :cond_24

    .line 67
    invoke-interface {v0, p1}, Lcom/keephealth/android/util/baidumap/MyOrientationListener$OnOrientationListener;->onOrientationChanged(F)V

    .line 71
    :cond_24
    iput p1, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->lastX:F

    :cond_26
    return-void
.end method

.method public setOnOrientationListener(Lcom/keephealth/android/util/baidumap/MyOrientationListener$OnOrientationListener;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mOnOrientationListener:Lcom/keephealth/android/util/baidumap/MyOrientationListener$OnOrientationListener;

    return-void
.end method

.method public start()V
    .registers 4

    .line 27
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    const/4 v1, 0x3

    .line 31
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 34
    :cond_15
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1f

    .line 36
    iget-object v1, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1f
    return-void
.end method

.method public stop()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/MyOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_7
    return-void
.end method
