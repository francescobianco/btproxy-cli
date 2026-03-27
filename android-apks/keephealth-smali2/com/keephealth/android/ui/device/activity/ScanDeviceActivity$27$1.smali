.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;)V
    .registers 2

    .line 1800
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    .line 1803
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_99

    .line 1804
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf434"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 1806
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1807
    const-string v1, "success..."

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1808
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCanListExist:Z

    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1812
    :cond_99
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->val$tab:I

    if-eqz v0, :cond_a0

    goto :goto_105

    .line 1814
    :cond_a0
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1816
    const-string v0, "\u5df2\u914d\u5bf9\u5217\u8868\u641c\u7d22\u5230\u5bf9\u5e94\u84dd\u7259\u5730\u5740"

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget v3, v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_105

    .line 1818
    :cond_d1
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isCanListExist:Z

    if-eqz v0, :cond_100

    .line 1820
    const-string v0, "\u53ef\u7528\u5217\u8868\u641c\u7d22\u5230\u5bf9\u5e94\u7684\u84dd\u7259\u5730\u5740"

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget v3, v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_105

    .line 1824
    :cond_100
    const-string v0, "\u5f39\u53d6\u6d88\u914d\u5bf9\u63d0\u793a"

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_105
    return-void
.end method
