.class Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RemindSportSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initView()V
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

    .line 117
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-RemindSportSetNewActivity$1([B)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->handlerLongSitData([B)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;[B)V

    return-void
.end method

.method synthetic lambda$onSuccess$1$com-keephealth-android-ui-device-activity-RemindSportSetNewActivity$1([B)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->handlerLongSitDataNew([B)V
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->access$000(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;[B)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 133
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->finish()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 120
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    const/16 v0, 0x14

    .line 121
    new-array v0, v0, [B

    .line 122
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 123
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x86

    if-ne p1, v1, :cond_22

    .line 125
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;[B)V

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_30

    :cond_22
    const/16 v1, 0xc1

    if-ne p1, v1, :cond_30

    .line 127
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;[B)V

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_30
    :goto_30
    return-void
.end method
