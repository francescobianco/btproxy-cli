.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getDeviceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 2

    .line 891
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 918
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableDeviceInfo:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 919
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 894
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo:Z

    if-eqz v0, :cond_74

    .line 895
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnableDeviceInfo:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x14

    .line 896
    new-array v0, v0, [B

    .line 897
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 898
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x81

    if-ne v1, v2, :cond_74

    .line 900
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iput-boolean p1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo:Z

    .line 902
    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 903
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess:\u8bbe\u5907\u578b\u53f7 "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v0, "TA1J01N5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "TA2J01N5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "T02WS3N3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "TB0EW5N9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    goto :goto_6d

    .line 908
    :cond_67
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V

    goto :goto_74

    .line 906
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$14;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_74
    :goto_74
    return-void
.end method
