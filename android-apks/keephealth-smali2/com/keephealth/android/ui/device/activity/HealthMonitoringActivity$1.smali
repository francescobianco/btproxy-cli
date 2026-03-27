.class Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "HealthMonitoringActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gfe332w"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    const/4 p1, 0x0

    .line 137
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 138
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->access$100(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->access$000(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    const/16 v0, 0x14

    .line 118
    new-array v0, v0, [B

    .line 119
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 120
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xac

    .line 121
    const-string v3, "gfe332w"

    if-ne v1, v2, :cond_50

    const/4 v1, 0x4

    .line 122
    aget-byte v1, v0, v1

    .line 123
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_30

    goto :goto_31

    :cond_30
    move v4, p1

    :goto_31
    invoke-virtual {v2, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 124
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 125
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "postData_yes:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 129
    :cond_50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "postData_no:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    return-void
.end method
