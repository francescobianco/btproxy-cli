.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MineDialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;)V
    .registers 2

    .line 981
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$4$com-keephealth-android-ui-device-fragment-MineDialFragment$13$1()V
    .registers 5

    .line 0
    const/4 v0, 0x0

    .line 1110
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1111
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1112
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 1113
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    .line 1114
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1115
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1117
    :cond_2b
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz v1, :cond_38

    .line 1118
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, -0x1

    .line 1119
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1120
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1121
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1123
    :cond_38
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1128
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1129
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5e
    return-void
.end method

.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-fragment-MineDialFragment$13$1(I)V
    .registers 4

    .line 990
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    if-eq v0, v1, :cond_18

    .line 991
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mindex:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 993
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 994
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_2d
    return-void
.end method

.method synthetic lambda$onSuccess$1$com-keephealth-android-ui-device-fragment-MineDialFragment$13$1()V
    .registers 4

    .line 1015
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 1016
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, -0x1

    .line 1017
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1018
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v1

    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1019
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1021
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1022
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 1024
    :cond_2f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getRecommendDialDetail(II)V

    .line 1025
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    return-void
.end method

.method synthetic lambda$onSuccess$2$com-keephealth-android-ui-device-fragment-MineDialFragment$13$1()V
    .registers 3

    .line 1054
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 1055
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, -0x1

    .line 1056
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1057
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v1

    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1058
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1060
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1061
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_2f
    return-void
.end method

.method synthetic lambda$onSuccess$3$com-keephealth-android-ui-device-fragment-MineDialFragment$13$1()V
    .registers 3

    .line 1081
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 1082
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, -0x1

    .line 1083
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1084
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v1

    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1085
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1087
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1088
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_2f
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1104
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1106
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1108
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

    const-string v1, "  \u5f00\u59cb\u53d1\u9001\u8868\u76d8_\u53d1\u9001\u5931\u8d25_e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1109
    new-instance p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10

    .line 985
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mindex:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  dataSize - 1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$dataSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hgyrt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mindex:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$dataSize:I

    sub-int/2addr v1, v2

    const-wide/16 v3, 0x3e8

    const v5, 0x7f100534

    const-string v6, "c4 02 00 03"

    const/4 v7, 0x0

    if-ge v0, v1, :cond_13d

    .line 988
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 989
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$dataSize:I

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;I)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 997
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->fg:I
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3502(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I

    .line 998
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$finalJ:[I

    aput v7, p1, v7

    .line 999
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mindex:I

    add-int/2addr p1, v2

    .line 1000
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$bytes:[B

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDialBin([BI)V
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;[BI)V

    .line 1001
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    goto/16 :goto_2b2

    .line 1002
    :cond_a7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_2b2

    .line 1003
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 1004
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1005
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1007
    :cond_d6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 1008
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1009
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1010
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1012
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 1013
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 1014
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1027
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result p1

    if-eqz p1, :cond_2b2

    .line 1028
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1030
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    goto/16 :goto_2b2

    .line 1034
    :cond_13d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mindex:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget v1, v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$dataSize:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_14c

    .line 1035
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 1037
    :cond_14c
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1038
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_218

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_218

    .line 1039
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result p1

    if-eqz p1, :cond_183

    .line 1040
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1042
    :cond_183
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u5f00\u59cb\u53d1\u9001\u8868\u76d8_\u53d1\u9001\u5b8c\u6210"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1043
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 1044
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_1bf

    .line 1045
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1047
    :cond_1bf
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1048
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1049
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1051
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 1052
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 1053
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1064
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getRecommendDialDetail(II)V

    .line 1065
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1066
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    goto/16 :goto_2b2

    .line 1068
    :cond_218
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result p1

    if-eqz p1, :cond_23e

    .line 1069
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1070
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1071
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    .line 1073
    :cond_23e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v7}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 1074
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1075
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1076
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1078
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 1079
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 1080
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1091
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getRecommendDialDetail(II)V

    .line 1092
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1093
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result p1

    if-eqz p1, :cond_2b2

    .line 1094
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b2
    :goto_2b2
    return-void
.end method
