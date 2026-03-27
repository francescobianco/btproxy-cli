.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 2

    .line 537
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .registers 6

    .line 540
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d8

    .line 542
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isScanQrActivity:Z

    .line 543
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    if-eqz v0, :cond_16

    .line 544
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 546
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)I

    .line 547
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2202(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    .line 548
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 549
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1002(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "address"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$902(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    :cond_44
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_94

    .line 553
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(Ljava/lang/String;Ljava/lang/String;I)V

    .line 554
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-nez p1, :cond_78

    .line 555
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    new-instance v2, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v2}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;

    .line 557
    :cond_78
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 558
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 560
    :cond_94
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a8

    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isQ32Device(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_af

    :cond_a8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->deviceType:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_d3

    .line 561
    :cond_af
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isScanDevice:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$502(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    .line 562
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 563
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-string v0, "macAddress"

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isClickQ32:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2902(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    goto :goto_d8

    .line 566
    :cond_d3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isScanDevice:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$502(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    :cond_d8
    :goto_d8
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .registers 2

    .line 537
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$7;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
