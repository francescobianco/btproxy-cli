.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialToDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

.field final synthetic val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 3

    .line 580
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-RecommendDetailActivity$6(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->startDfu(Lcom/keephealth/android/model/bean/DeviceEntry;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 596
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gfgf433"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 583
    new-array v0, v0, [B

    .line 584
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 585
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 586
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x8b

    if-ne p1, v0, :cond_3b

    .line 588
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 589
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->initBluzDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    .line 590
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;->val$entry:Lcom/keephealth/android/model/bean/DeviceEntry;

    new-instance v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$6;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    const/16 p1, 0x3e8

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ThreadUtil;->delayTask(Ljava/lang/Runnable;I)V

    :cond_3b
    return-void
.end method
