.class Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;
.super Landroid/os/Handler;
.source "IntelligentNotificationAddServiceTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)V
    .registers 2

    .line 1379
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1382
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x156

    if-eq p1, v0, :cond_7

    goto :goto_6d

    .line 1384
    :cond_7
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$802(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1385
    const-string p1, "AppApplication.connectingOrno1:\u56de\u8fde3"

    const-string v1, "hfgffr2"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$800(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 1388
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-nez p1, :cond_55

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    if-nez p1, :cond_55

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    if-nez p1, :cond_55

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_55

    .line 1391
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "AppApplication.connectingOrno1:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "gf3e3"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1392
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrnoTwo:Z

    .line 1393
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 1406
    :cond_55
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 1407
    const-string p1, "sendEmptyMessageDelayed_3"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$6;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6d
    :goto_6d
    return-void
.end method
