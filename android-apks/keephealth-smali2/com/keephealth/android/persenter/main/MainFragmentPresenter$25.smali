.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getAlarmTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$alarmDataHandler:Lcom/keephealth/android/util/ble/AlarmDataHandler;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/util/ble/AlarmDataHandler;)V
    .registers 3

    .line 1538
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->val$alarmDataHandler:Lcom/keephealth/android/util/ble/AlarmDataHandler;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1584
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1585
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "FIRST_SYNC"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1587
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDistanceDay()I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5802(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1588
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1590
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncStepHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 1541
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentIndex:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u95f9\u949f\u6570\u636e"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    const-string v1, "\u95f9\u949f\u6570\u636e:"

    const/4 v2, 0x0

    if-nez v0, :cond_62

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1545
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x85

    if-ne v0, v1, :cond_c5

    .line 1547
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->val$alarmDataHandler:Lcom/keephealth/android/util/ble/AlarmDataHandler;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/AlarmDataHandler;->initData([B)V

    .line 1548
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5708(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    goto :goto_c5

    .line 1551
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1553
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDistanceDay()I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5802(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1554
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1556
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->val$alarmDataHandler:Lcom/keephealth/android/util/ble/AlarmDataHandler;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/AlarmDataHandler;->receiverData([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    .line 1557
    iget-boolean v0, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    if-eqz v0, :cond_ad

    .line 1558
    iget-boolean p1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    if-eqz p1, :cond_94

    goto :goto_c5

    .line 1562
    :cond_94
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1564
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDistanceDay()I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5802(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1565
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1567
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncStepHistory(Z)V
    invoke-static {p1, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_c5

    .line 1571
    :cond_ad
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1573
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDistanceDay()I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5802(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1574
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1576
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$25;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncStepHistory(Z)V
    invoke-static {p1, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    :cond_c5
    :goto_c5
    return-void
.end method
