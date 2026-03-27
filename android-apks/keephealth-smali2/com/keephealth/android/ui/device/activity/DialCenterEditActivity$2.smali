.class Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DialCenterEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->sendBack([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

.field final synthetic val$bytes:[B

.field final synthetic val$dataSize:I

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;II[B)V
    .registers 5

    .line 279
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->val$index:I

    iput p3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->val$dataSize:I

    iput-object p4, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->val$bytes:[B

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$1$com-keephealth-android-ui-device-activity-DialCenterEditActivity$2()V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->access$102(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;Z)Z

    .line 301
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-DialCenterEditActivity$2(II[B)V
    .registers 8

    .line 0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    if-ge p1, v0, :cond_29

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, p1, 0x64

    div-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "%"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    add-int/2addr p1, v1

    # invokes: Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->sendBack([BI)V
    invoke-static {p2, p3, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;[BI)V

    goto :goto_66

    .line 287
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100538

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    const/4 p2, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->isSending:Z
    invoke-static {p1, p2}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->access$102(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;Z)Z

    .line 289
    sput-boolean p2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 290
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f10022a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->btnSend:Landroid/widget/Button;

    const p2, 0x7f0800a3

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_66
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 299
    new-instance p1, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 282
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->val$index:I

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->val$dataSize:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;->val$bytes:[B

    new-instance v2, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity$2;II[B)V

    invoke-static {v2}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
