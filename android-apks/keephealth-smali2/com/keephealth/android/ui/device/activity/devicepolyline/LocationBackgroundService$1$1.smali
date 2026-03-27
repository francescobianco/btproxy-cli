.class Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "LocationBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 6

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$200(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$200(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-lez p1, :cond_2f

    .line 123
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2f

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->stopService(Landroid/content/Intent;)Z

    :cond_2f
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u6536\u5230\u53d1\u9001gps\u5f3a\u5ea6\u56de\u590d\u6570\u636e\u539f\u59cb:"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 105
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xa3

    if-ne p1, v1, :cond_a4

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a4

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    array-length v1, v0

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p1, v1, :cond_a4

    .line 106
    array-length p1, v0

    const/4 v1, 0x5

    if-le p1, v1, :cond_a4

    .line 107
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_75

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$202(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;J)J

    goto :goto_a4

    .line 110
    :cond_75
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$200(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_a4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->timeGps:J
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->access$200(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-lez p1, :cond_a4

    .line 111
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    if-eqz p1, :cond_a4

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;

    sget-object v0, Lcom/keephealth/android/app/AppApplication;->locationServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationBackgroundService;->stopService(Landroid/content/Intent;)Z

    :cond_a4
    :goto_a4
    return-void
.end method
