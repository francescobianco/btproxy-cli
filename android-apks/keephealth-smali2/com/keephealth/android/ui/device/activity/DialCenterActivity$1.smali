.class Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DialCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->sendDialToDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$1$com-keephealth-android-ui-device-activity-DialCenterActivity$1()V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;Z)Z

    .line 135
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-DialCenterActivity$1()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DialCenterActivity;Z)Z

    .line 124
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    const-string v0, "ggf32d"

    const-string v1, "\u53d1\u9001\u5b8c\u6210:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggf32d"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p1, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    .line 121
    new-instance p1, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity$1;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
