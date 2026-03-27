.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;
.super Landroid/os/Handler;
.source "MineDialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;)V
    .registers 2

    .line 1597
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1602
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1603
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  q32\u7cfb\u5217\u53d1\u9001\u8868\u76d8\u53d1\u9001\u5b8c\u6210"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1604
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4500(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    if-eqz p1, :cond_105

    .line 1605
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4500(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeNotify()V

    .line 1606
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 1607
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100538

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1608
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 1609
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1610
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1611
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1613
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 1614
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 1615
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz p1, :cond_a8

    .line 1616
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 p1, -0x1

    .line 1617
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1618
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1619
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1621
    :cond_a8
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 1622
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1624
    :cond_bc
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_d1

    .line 1625
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 1627
    :cond_d1
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialAdapterId:I

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/keephealth/android/persenter/device/DialMineDetailPresenter;->getRecommendDialDetail(II)V

    .line 1628
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1630
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1631
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->this$1:Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    .line 1632
    const-string p1, "ffed"

    const-string v0, "\u53d1\u9001\u5b8c\u6210"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    return-void
.end method
