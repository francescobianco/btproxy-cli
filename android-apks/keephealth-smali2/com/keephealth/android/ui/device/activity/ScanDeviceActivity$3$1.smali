.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$0$com-keephealth-android-ui-device-activity-ScanDeviceActivity$3$1()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getDeviceInfo()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 5

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnablePair:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u914d\u5bf9\u6210\u529f \u53d1\u9001\u84dd\u7259\u6570\u636e\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 284
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result p1

    if-nez p1, :cond_c1

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_ae

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v0, "Wish6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a4

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v0, "Wish3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a4

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v0, "wish3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a4

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v0, "KR-S2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a4

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v0, "wish6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 288
    :cond_a4
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    return-void

    .line 292
    :cond_ae
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c1
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 260
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xc3

    if-ne v0, v2, :cond_fa

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result v0

    if-nez v0, :cond_fa

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnablePair:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u914d\u5bf9\u6210\u529f \u53d1\u9001\u84dd\u7259\u6570\u636e\u6210\u529f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->aConnect:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 265
    new-array v0, v0, [B

    .line 266
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "CmdHelper.getPairingInfo():"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 268
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    .line 269
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_f3

    .line 270
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v2, "Wish6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e9

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v2, "Wish3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e9

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v2, "wish3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e9

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v2, "KR-S2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e9

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    const-string v2, "wish6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 271
    :cond_e9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    return-void

    .line 275
    :cond_f3
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getDeviceInfo(I[B)V
    invoke-static {v1, p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I[B)V

    :cond_fa
    return-void
.end method
