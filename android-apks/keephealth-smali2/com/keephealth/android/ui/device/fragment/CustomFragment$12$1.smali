.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;)V
    .registers 2

    .line 1123
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$2$com-keephealth-android-ui-device-fragment-CustomFragment$12$1(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 5

    .line 1216
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1217
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1218
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1220
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u5931\u8d25_e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1221
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1222
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 1223
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1224
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1225
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1226
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1227
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1228
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1230
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 1231
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1232
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100534

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1234
    :cond_b3
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 1236
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d2
    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-fragment-CustomFragment$12$1(I)V
    .registers 5

    .line 1132
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    if-eqz v0, :cond_2d

    .line 1133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget v2, v2, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mindex:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    return-void
.end method

.method synthetic lambda$onSuccess$1$com-keephealth-android-ui-device-fragment-CustomFragment$12$1()V
    .registers 5

    .line 0
    const/4 v0, 0x0

    .line 1153
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1154
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1155
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1156
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1157
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1159
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1160
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 1215
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "characteristic22:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF4533"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1129
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mindex:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->val$dataSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-wide/16 v3, 0x3e8

    const v5, 0x7f100534

    const-string v6, "c4 02 00 03"

    const/4 v7, 0x0

    if-ge v0, v1, :cond_105

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1131
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->val$dataSize:I

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;I)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1136
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->fg:I
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2502(Lcom/keephealth/android/ui/device/fragment/CustomFragment;I)I

    .line 1137
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->val$finalJ:[I

    aput v7, p1, v7

    .line 1138
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    if-nez p1, :cond_9a

    .line 1139
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->val$bytes:[B

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mindex:I

    add-int/2addr v1, v2

    # invokes: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendBack([BI)V
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;[BI)V

    .line 1141
    :cond_9a
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    goto/16 :goto_1bd

    .line 1142
    :cond_9e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bd

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_1bd

    .line 1146
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 1147
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1148
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1151
    :cond_c9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 1152
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1162
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_1bd

    .line 1164
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1bd

    .line 1168
    :cond_105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mindex:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->val$dataSize:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_114

    .line 1169
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 1171
    :cond_114
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13e

    .line 1173
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1bd

    .line 1177
    :cond_13e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 1178
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1179
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1181
    :cond_159
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 1182
    sput-boolean v7, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1183
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1184
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1185
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1186
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const v0, 0x7f0800a3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1188
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1189
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1190
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_1bd

    .line 1192
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1bd
    :goto_1bd
    return-void
.end method
