.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;
.super Landroid/os/Handler;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;)V
    .registers 2

    .line 1578
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1584
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2802(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 1585
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->itemAdapter2:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2902(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 1586
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1587
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$200(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1588
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$3000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    if-eqz p1, :cond_d0

    .line 1589
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$3000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeNotify()V

    .line 1590
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 1591
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 1592
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1593
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1594
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1595
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1597
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 1598
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 1599
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz p1, :cond_8c

    const/4 p1, -0x1

    .line 1600
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1601
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1602
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1605
    :cond_8c
    const-string p1, "hger6"

    const-string v0, "23"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 1607
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1610
    :cond_a7
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    .line 1611
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1614
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x3f5

    .line 1616
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_d0
    return-void
.end method
