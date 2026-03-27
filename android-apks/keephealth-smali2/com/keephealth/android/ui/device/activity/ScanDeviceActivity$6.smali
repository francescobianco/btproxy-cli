.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$6;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->initView()V
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

    .line 453
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V
    .registers 3

    const/16 p1, 0x12e

    .line 477
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 478
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u8fde\u63a5\u6210\u529f\u5931\u8d25_scan"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceConnected()V
    .registers 1

    return-void
.end method

.method public onDeviceConnecting()V
    .registers 1

    return-void
.end method

.method public onDeviceDisconnected()V
    .registers 3

    const/16 v0, 0x12e

    .line 465
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 466
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V
    .registers 3

    .line 472
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u8fde\u63a5\u6210\u529f_scan"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
