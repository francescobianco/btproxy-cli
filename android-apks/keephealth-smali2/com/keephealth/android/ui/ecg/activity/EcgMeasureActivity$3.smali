.class Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "EcgMeasureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->startMeasure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$3;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    const/16 v0, 0x14

    .line 276
    new-array v0, v0, [B

    .line 277
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$3;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    # getter for: Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->ecgDataHandler:Lcom/keephealth/android/util/ble/EcgDataHandler;
    invoke-static {p1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->access$400(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)Lcom/keephealth/android/util/ble/EcgDataHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/EcgDataHandler;->handler([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    return-void
.end method
