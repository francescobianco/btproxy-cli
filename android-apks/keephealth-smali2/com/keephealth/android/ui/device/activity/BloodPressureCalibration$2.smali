.class Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "BloodPressureCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->onSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$2;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 147
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$2;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->access$100(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 134
    new-array v0, v0, [B

    .line 135
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 136
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x3

    .line 137
    aget-byte v0, v0, v1

    const/16 v0, 0xa1

    if-ne p1, v0, :cond_2f

    .line 139
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 140
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$2;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->access$000(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$2;->this$0:Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->finish()V

    :cond_2f
    return-void
.end method
