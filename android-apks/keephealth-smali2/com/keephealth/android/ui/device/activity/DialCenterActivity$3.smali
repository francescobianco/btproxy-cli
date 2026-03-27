.class Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DialCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->beginSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;[B)V
    .registers 3

    .line 201
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->val$bytes:[B

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$0$com-keephealth-android-ui-device-activity-DialCenterActivity$3()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;Z)Z

    .line 211
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 209
    new-instance p1, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$3;->val$bytes:[B

    const/4 v1, 0x0

    # invokes: Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->sendBack([BI)V
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;[BI)V

    return-void
.end method
