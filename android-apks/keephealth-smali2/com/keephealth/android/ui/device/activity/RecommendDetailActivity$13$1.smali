.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;
.super Landroid/os/Handler;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;)V
    .registers 2

    .line 1407
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1413
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

    .line 1414
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    if-eqz p1, :cond_f8

    .line 1415
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2600(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeNotify()V

    .line 1416
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$302(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;Z)Z

    .line 1417
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1419
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1420
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 1421
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1423
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 1424
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 1425
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isComeRecomDetail:Z

    if-eqz p1, :cond_75

    const/4 p1, -0x1

    .line 1426
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1427
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1428
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1430
    :cond_75
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 1431
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1432
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "  DialCenterBActivity.currentDialId_3:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hger9"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_9f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 1436
    const-string p1, "hger3"

    const-string v1, "1"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 1438
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1439
    const-string p1, "hh44343e"

    const-string v1, "\u53d1\u9001\u5b8c\u6210:"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1441
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f8

    .line 1442
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13$1;->this$1:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_f8
    return-void
.end method
