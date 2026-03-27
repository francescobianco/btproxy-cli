.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncStepHistory(Z)V
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

    .line 1745
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 1806
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1807
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_13
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .line 1748
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1749
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->refTimeOut()V

    .line 1751
    :cond_13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1752
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 1753
    aget-byte v2, p1, v2

    .line 1754
    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x5

    const-string v6, "\u6b65\u6570\u7761\u7720\u5386\u53f2\u6570\u636e:"

    if-nez v3, :cond_89

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_12e

    .line 1756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/4 v1, 0x2

    if-ne v2, v1, :cond_79

    .line 1758
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    if-ne p1, v1, :cond_5f

    .line 1759
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNewHighPrecisionSleepOrHeart()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto/16 :goto_12e

    .line 1761
    :cond_5f
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 1762
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 1763
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1764
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncStepHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_12e

    .line 1767
    :cond_79
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5708(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 1768
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HealthDataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/HealthDataHandler;->init([B)V

    goto/16 :goto_12e

    .line 1772
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1774
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthDataHandler:Lcom/keephealth/android/util/ble/HealthDataHandler;
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HealthDataHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/HealthDataHandler;->receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    .line 1776
    iget-boolean v1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    if-eqz v1, :cond_12e

    .line 1782
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->saveNewData()V

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result.hasNext:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tr4rrs"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-boolean p1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    if-eqz p1, :cond_124

    .line 1785
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mIndex:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "   distanDay:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    if-ne p1, v1, :cond_10b

    .line 1787
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1788
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNewHighPrecisionSleepOrHeart()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_12e

    .line 1790
    :cond_10b
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 1791
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 1792
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1793
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncStepHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_12e

    .line 1796
    :cond_124
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1797
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$28;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNewHighPrecisionSleepOrHeart()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    :cond_12e
    :goto_12e
    return-void
.end method
