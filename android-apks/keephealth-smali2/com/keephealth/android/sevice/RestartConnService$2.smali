.class Lcom/keephealth/android/sevice/RestartConnService$2;
.super Landroid/os/Handler;
.source "RestartConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/RestartConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/RestartConnService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/RestartConnService;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService$2;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x156

    if-eq p1, v0, :cond_7

    goto :goto_61

    .line 86
    :cond_7
    iget-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService$2;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    # setter for: Lcom/keephealth/android/sevice/RestartConnService;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1, v1}, Lcom/keephealth/android/sevice/RestartConnService;->access$202(Lcom/keephealth/android/sevice/RestartConnService;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService$2;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    # getter for: Lcom/keephealth/android/sevice/RestartConnService;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/sevice/RestartConnService;->access$200(Lcom/keephealth/android/sevice/RestartConnService;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 90
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-nez p1, :cond_4e

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    if-nez p1, :cond_4e

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    if-nez p1, :cond_4e

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_4e

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "AppApplication.connectingOrno1:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gf3e3"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 94
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrnoTwo:Z

    .line 95
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 108
    :cond_4e
    iget-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService$2;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    # getter for: Lcom/keephealth/android/sevice/RestartConnService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/RestartConnService;->access$100(Lcom/keephealth/android/sevice/RestartConnService;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService$2;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    # getter for: Lcom/keephealth/android/sevice/RestartConnService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/RestartConnService;->access$100(Lcom/keephealth/android/sevice/RestartConnService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_61
    :goto_61
    return-void
.end method
