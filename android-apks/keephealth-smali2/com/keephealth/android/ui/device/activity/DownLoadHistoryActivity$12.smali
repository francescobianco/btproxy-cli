.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;
.super Ljava/lang/Object;
.source "DownLoadHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->onStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1181
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-keephealth-android-ui-device-activity-DownLoadHistoryActivity$12()V
    .registers 5

    .line 1215
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/4 v0, 0x0

    .line 1216
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1218
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 1219
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1220
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x1

    .line 1221
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1222
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1224
    :cond_34
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    if-eqz v1, :cond_41

    .line 1225
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, -0x1

    .line 1226
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1227
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1228
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1230
    :cond_41
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1231
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_71

    .line 1232
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_71
    return-void
.end method

.method public run()V
    .registers 8

    .line 1184
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->val$state:I

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    const/4 v2, 0x0

    if-eqz v0, :cond_b6

    const-wide/16 v3, 0x2710

    const/4 v5, 0x1

    if-eq v0, v5, :cond_88

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    goto/16 :goto_eb

    .line 1240
    :cond_1a
    const-string v0, "hh44343e"

    const-string v1, "\u53d1\u9001\u5b8c\u6210:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12$1;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;)V

    const-wide/16 v3, 0x5dc

    .line 1281
    invoke-virtual {v0, v2, v3, v4}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12$1;->sendEmptyMessageDelayed(IJ)Z

    .line 1287
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1288
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1289
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    goto/16 :goto_eb

    .line 1205
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_eb

    .line 1191
    :cond_44
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->upgrade(I)V

    goto/16 :goto_eb

    .line 1195
    :cond_4f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1198
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1199
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1200
    const-string v0, "3423rew22"

    const-string v3, "\u84dd\u7259\u8bbe\u5907\u6b63\u5728\u51c6\u5907\u4e2d"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u53d1\u9001\u8868\u76d8 \u84dd\u7259\u8bbe\u5907\u6b63\u5728\u51c6\u5907\u4e2d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_eb

    .line 1186
    :cond_88
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u53d1\u9001\u8868\u76d8 \u84dd\u7259\u8bbe\u5907\u5df2\u8fde\u63a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_eb

    .line 1212
    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u53d1\u9001\u8868\u76d8 \u8d85\u65f6\u6216\u8005\u5176\u4ed6\u9519\u8bef\u7b49"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1214
    new-instance v0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$12;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_eb
    return-void
.end method
