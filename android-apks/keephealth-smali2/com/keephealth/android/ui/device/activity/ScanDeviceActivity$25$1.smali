.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$rssi:I

.field final synthetic val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1258
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput p4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$rssi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1261
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4102(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    .line 1262
    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 1263
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 1264
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1265
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_85

    .line 1266
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1267
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1268
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_5c

    .line 1271
    :cond_54
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 1273
    :goto_5c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "22225435435u4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 1275
    :cond_7d
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 1278
    :cond_85
    :goto_85
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$rssi:I

    iput v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    .line 1279
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setmBytes([B)V

    .line 1280
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BLEDevice;->setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 1281
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e3

    .line 1282
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1284
    new-instance v1, Lcom/keephealth/android/model/bean/ScanDeviceBean;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/ScanDeviceBean;-><init>()V

    .line 1285
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->setAddress(Ljava/lang/String;)V

    .line 1286
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->setName(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 1288
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->val$rssi:I

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->setRssi(I)V

    .line 1289
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e3
    return-void
.end method
