.class Lcom/keephealth/android/ui/device/activity/TimeSystemActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "TimeSystemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->setDeviceState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    return-void
.end method
