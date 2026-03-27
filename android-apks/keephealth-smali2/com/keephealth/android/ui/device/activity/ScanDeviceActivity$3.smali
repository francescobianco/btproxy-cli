.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;
.super Landroid/os/Handler;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Landroid/os/Looper;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 226
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 227
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_d3

    const/16 v0, 0xb

    const/4 v1, 0x1

    if-eq p1, v0, :cond_77

    const/16 v0, 0x156

    if-eq p1, v0, :cond_12

    goto/16 :goto_e2

    .line 229
    :cond_12
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isScanDevice:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 231
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz p1, :cond_4c

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result v0

    if-nez v0, :cond_4c

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mPosition:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(ILcom/keephealth/android/model/bean/BLEDevice;)V

    .line 236
    const-string p1, "rtft9"

    const-string v0, "\u5f00\u59cb\u4e8c\u6b21\u8fde\u63a5"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_4c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$602(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)I

    goto/16 :goto_e2

    .line 241
    :cond_53
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result p1

    if-nez p1, :cond_71

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->af:I
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$602(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)I

    goto :goto_e2

    .line 253
    :cond_77
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 254
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "CmdHelper.getPairingInfo():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getPairingInfo()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnablePair:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getPairingInfo()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_e2

    .line 249
    :cond_d3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableScan:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e2
    :goto_e2
    return-void
.end method
