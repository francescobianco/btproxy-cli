.class Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "HealthMonitoringActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->onSelect(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 328
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->access$400(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 316
    new-array v0, v0, [B

    .line 317
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 318
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x3

    .line 319
    aget-byte v0, v0, v1

    const/16 v0, 0xa1

    if-ne p1, v0, :cond_30

    .line 321
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 322
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4$1;->this$1:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->access$300(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;Ljava/lang/String;)V

    :cond_30
    return-void
.end method
