.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Lcn/bingoogolapple/refreshlayout/BGARefreshLayout$OnendRefreshing;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endRefreshing()V
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->refreshTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 449
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->setSysndata(Z)V

    .line 450
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 451
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 452
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;

    move-result-object v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    .line 454
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->homeHasLoading:Z

    .line 455
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    if-nez v0, :cond_4e

    .line 456
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_CURRENT_POWER:[B

    new-instance v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;)V

    const-string v3, "getPower"

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_4e

    .line 492
    :cond_43
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 493
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->initBlueTooth()V
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    .line 497
    :cond_4e
    :goto_4e
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 498
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 499
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->setIconDevice(Lcom/keephealth/android/model/bean/BLEDevice;)V
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Lcom/keephealth/android/model/bean/BLEDevice;)V

    .line 500
    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->tv_deviceName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x255a

    .line 502
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_73

    .line 506
    :cond_6c
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    if-nez v0, :cond_73

    .line 507
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    :cond_73
    :goto_73
    const/16 v0, 0x406

    .line 513
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void
.end method
