.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RemindSportSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->onSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 315
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$200(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    const/16 v0, 0x14

    .line 304
    new-array v0, v0, [B

    .line 305
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 306
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x86

    if-eq p1, v0, :cond_18

    const/16 v0, 0xc1

    if-ne p1, v0, :cond_1d

    .line 308
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->finish()V

    :cond_1d
    return-void
.end method
