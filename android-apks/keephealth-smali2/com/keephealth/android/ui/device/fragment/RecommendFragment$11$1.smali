.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;)V
    .registers 2

    .line 921
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$4$com-keephealth-android-ui-device-fragment-RecommendFragment$11$1()V
    .registers 5

    .line 1044
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1045
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1046
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1047
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1049
    :cond_3b
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/4 v0, 0x0

    .line 1050
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1051
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1052
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 1053
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v1

    if-eqz v1, :cond_71

    const/4 v1, 0x1

    .line 1054
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1055
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1057
    :cond_71
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1058
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v1, :cond_7e

    const/4 v1, -0x1

    .line 1059
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1060
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1061
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1066
    :cond_7e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1068
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9d
    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-fragment-RecommendFragment$11$1()V
    .registers 3

    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataSize:I

    if-eqz v0, :cond_37

    .line 932
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataSize:I

    div-int/2addr v0, v1

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    if-eq v0, v1, :cond_37

    .line 933
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataSize:I

    div-int/2addr v0, v1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 934
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    return-void
.end method

.method synthetic lambda$onSuccess$1$com-keephealth-android-ui-device-fragment-RecommendFragment$11$1()V
    .registers 2

    .line 963
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 964
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    const/4 v0, 0x0

    .line 965
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 966
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 969
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    .line 970
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method synthetic lambda$onSuccess$2$com-keephealth-android-ui-device-fragment-RecommendFragment$11$1()V
    .registers 2

    .line 997
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 998
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    const/4 v0, 0x0

    .line 999
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1000
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1002
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1004
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    .line 1005
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method synthetic lambda$onSuccess$3$com-keephealth-android-ui-device-fragment-RecommendFragment$11$1()V
    .registers 3

    .line 1021
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 1022
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1023
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1024
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1027
    :cond_c
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1028
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    .line 1029
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u5931\u8d25e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1043
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10

    .line 925
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 926
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mindex:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-wide/16 v3, 0x3e8

    const v5, 0x7f100534

    const-string v6, "c4 02 00 03"

    const/4 v7, 0x0

    if-ge v0, v1, :cond_100

    .line 927
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 928
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 941
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fg:I
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2302(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)I

    .line 944
    :try_start_60
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$finalJ:[I

    aput v7, p1, v7
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_66} :catch_66

    .line 948
    :catch_66
    :try_start_66
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mindex:I

    add-int/2addr p1, v2

    .line 949
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$bytes:[B

    # invokes: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDialBin([BI)V
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;[BI)V

    .line 950
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7a} :catch_270

    goto/16 :goto_270

    .line 953
    :cond_7c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_270

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_270

    .line 954
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 955
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 956
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 958
    :cond_ab
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 959
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 960
    sput-boolean v7, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 961
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 962
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 972
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 974
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 976
    :cond_eb
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_270

    .line 979
    :cond_100
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mindex:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataSize:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_111

    .line 980
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 982
    :cond_111
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 983
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_200

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_200

    .line 984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->saveFileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$300(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->fileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u5b8c\u6210"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 986
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_184

    .line 987
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 989
    :cond_184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 990
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 991
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 992
    sput-boolean v7, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 994
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 995
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 996
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1007
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1008
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result p1

    if-eqz p1, :cond_270

    .line 1009
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    .line 1010
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_270

    .line 1013
    :cond_200
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result p1

    if-eqz p1, :cond_21f

    .line 1014
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1015
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1017
    :cond_21f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 1018
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1019
    sput-boolean v7, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1020
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1031
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result p1

    if-eqz p1, :cond_25d

    .line 1033
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1035
    :cond_25d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :catch_270
    :cond_270
    :goto_270
    return-void
.end method
