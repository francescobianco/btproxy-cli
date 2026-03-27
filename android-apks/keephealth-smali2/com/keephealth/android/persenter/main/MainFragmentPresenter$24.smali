.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHeartOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 2

    .line 1500
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 1525
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1526
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_13
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8

    .line 1503
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1504
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag_start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u83b7\u53d6\u5fc3\u7387\u81ea\u52a8\u91c7\u6837\u6570\u636e"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_9a

    .line 1506
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    sub-int/2addr v2, v5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v1, v2, :cond_9a

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u5fc3\u7387\u81ea\u52a8\u91c7\u6837\u6570\u636e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1508
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthHrDataHandler:Lcom/keephealth/android/util/ble/HealthHrDataHandler;
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HealthHrDataHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->handlerHartOpen([B)V

    .line 1509
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1511
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24$1;-><init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1516
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1517
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDistanceDay()I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5802(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1518
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6002(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1519
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$24;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getAlarmTask()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    :cond_9a
    return-void
.end method
