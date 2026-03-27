.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHighPrecisionSleep(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$handler:Lcom/keephealth/android/util/ble/HealthSleepDataHandler;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Lcom/keephealth/android/util/ble/HealthSleepDataHandler;)V
    .registers 3

    .line 1835
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->val$handler:Lcom/keephealth/android/util/ble/HealthSleepDataHandler;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 1906
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1907
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1908
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_19
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .line 1838
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 1839
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 1840
    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9ad8\u7cbe\u5ea6\u7761\u7720\u6570\u636e:"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_d5

    .line 1842
    aget-byte v0, p1, v3

    .line 1843
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa9

    if-ne v5, v6, :cond_142

    const/4 v5, 0x2

    if-ne v0, v5, :cond_60

    .line 1845
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    if-ne p1, v0, :cond_46

    .line 1846
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_142

    .line 1848
    :cond_46
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1849
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 1850
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1851
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHighPrecisionSleep(Z)V
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_142

    .line 1854
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1855
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->val$handler:Lcom/keephealth/android/util/ble/HealthSleepDataHandler;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->init([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    .line 1856
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5708(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 1857
    iget-boolean v0, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    if-eqz v0, :cond_142

    .line 1858
    iget-boolean p1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    if-eqz p1, :cond_c5

    .line 1859
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    if-ne p1, v0, :cond_a6

    .line 1860
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1861
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1862
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_142

    .line 1864
    :cond_a6
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1865
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 1866
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1867
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1868
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHighPrecisionSleep(Z)V
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_142

    .line 1871
    :cond_c5
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1872
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1873
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_142

    .line 1879
    :cond_d5
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->val$handler:Lcom/keephealth/android/util/ble/HealthSleepDataHandler;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/HealthSleepDataHandler;->receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object v0

    .line 1880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1881
    iget-boolean p1, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    if-eqz p1, :cond_142

    .line 1882
    iget-boolean p1, v0, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    if-eqz p1, :cond_133

    .line 1883
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    if-ne p1, v0, :cond_115

    .line 1884
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1885
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1886
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_142

    .line 1888
    :cond_115
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1889
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 1890
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1891
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1892
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getHighPrecisionSleep(Z)V
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_142

    .line 1895
    :cond_133
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 1896
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHighSleep:Z
    invoke-static {p1, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7102(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 1897
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$29;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    :cond_142
    :goto_142
    return-void
.end method
