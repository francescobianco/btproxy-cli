.class Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;
.super Lcom/google/android/gms/location/LocationCallback;
.source "LocationBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->startGoogleLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 159
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$300(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isGetGPS:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$302(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;Z)Z

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->openGPS:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$100(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    :cond_2b
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/GPSConverterUtils;->gps84_To_Gcj02(DD)Lcom/keephealth/android/util/GPS;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 171
    invoke-virtual {v0}, Lcom/keephealth/android/util/GPS;->getLat()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 172
    invoke-virtual {v0}, Lcom/keephealth/android/util/GPS;->getLon()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 175
    :cond_47
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isInSport:Z
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$400(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " \'\' "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Google\u540e\u53f0\u5b9a\u4f4d\u539f\u59cb11"

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isInSport:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$400(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z

    move-result v0

    if-nez v0, :cond_8b

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGPSBackground:Z

    if-eqz v0, :cond_11e

    .line 181
    :cond_8b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->startDate:J
    invoke-static {v0, v7, v8}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$502(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;J)J

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLatitude:D
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$600(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)D

    move-result-wide v7

    cmpl-double v0, v7, v1

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLongitude:D
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$700(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)D

    move-result-wide v7

    cmpl-double v0, v7, v3

    if-nez v0, :cond_a9

    return-void

    .line 185
    :cond_a9
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 186
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-le v5, v8, :cond_da

    .line 187
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->mpathSmoothTool:Lcom/keephealth/android/util/baidumap/PathSmoothTool;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$900(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Lcom/keephealth/android/util/baidumap/PathSmoothTool;

    move-result-object v9

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    iget-object v10, v10, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    iget-object v11, v11, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v9, v10, v0}, Lcom/keephealth/android/util/baidumap/PathSmoothTool;->getGoogleDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v9

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->betweenDis:D
    invoke-static {v5, v9, v10}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$802(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;D)D

    .line 196
    :cond_da
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J
    invoke-static {v5, v9, v10}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$202(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;J)J

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_f0

    .line 200
    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    iget-object v9, v9, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_f0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLatitude:D
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$602(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;D)D

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastLongitude:D
    invoke-static {v0, v3, v4}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$702(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;D)D

    if-gez v5, :cond_fd

    goto :goto_fe

    :cond_fd
    move v7, v8

    .line 212
    :goto_fe
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastGpsType:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$1000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)I

    move-result v0

    if-eq v7, v0, :cond_11e

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->lastGpsType:I
    invoke-static {v0, v7}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$1002(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;I)I

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->openGPS:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$100(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 215
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {v7}, Lcom/keephealth/android/util/ble/CmdHelper;->sendGps(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 219
    :cond_11e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Lat: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->locationBeansGoogle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$2;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->isInSport:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$400(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Google\u540e\u53f0\u5b9a\u4f4d\u539f\u59cb"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
