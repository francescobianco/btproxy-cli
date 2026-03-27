.class Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "HeartRateRegionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->saveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 97
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 91
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveInterval(Lcom/keephealth/android/model/bean/HeartRateInterval;)V

    .line 92
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method
