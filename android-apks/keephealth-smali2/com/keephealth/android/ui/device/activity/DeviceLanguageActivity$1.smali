.class Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DeviceLanguageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->setDeviceState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;

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
