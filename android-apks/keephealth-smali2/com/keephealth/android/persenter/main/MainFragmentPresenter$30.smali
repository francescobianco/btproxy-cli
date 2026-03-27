.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
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

    .line 2044
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "syncHeartHistory_e\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "23ee43332"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 2160
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_27
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 11

    .line 2047
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2048
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->refTimeOut()V

    .line 2050
    :cond_13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2051
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 2052
    aget-byte v3, p1, v2

    .line 2053
    iget-object v4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v4

    const-string v5, "\u5fc3\u7387\u8840\u538b\u8840\u6c27\u5386\u53f2\u6570\u636e:"

    const-string v6, "A01WC6T2,A00WC6T2,A02WC6T2,A01B16T2,A03WC6T2,A04WC6T2,A05WC6T2,A01B16T3,A06WC6T2,A02B16T2,A03B16T3,B00WC6T2,A07WC6T2,A08WC6T2,A09WC6T2,A10WC6T2,A00WC6T7,T02NS5T7,T03NS5T7,T02S20T7,T03S20N7,A00WC6T7,T02NS5T7,A00WC6T7,T03NS5T7,T02S20T7,A01W11T7"

    const/4 v7, -0x1

    const/4 v8, 0x5

    if-nez v4, :cond_cb

    const/16 v4, 0xa1

    if-ne v1, v4, :cond_1d2

    .line 2055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/4 v1, 0x2

    if-ne v3, v1, :cond_bb

    .line 2057
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    if-ne p1, v1, :cond_a1

    .line 2058
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 2060
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHrv()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2061
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHRVHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2063
    :cond_71
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 2064
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2066
    :cond_7e
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto/16 :goto_1d2

    .line 2070
    :cond_85
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_9a

    .line 2071
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 2072
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2075
    :cond_9a
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto/16 :goto_1d2

    .line 2079
    :cond_a1
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2080
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2081
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2082
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2085
    :cond_bb
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5708(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2086
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthHrDataHandler:Lcom/keephealth/android/util/ble/HealthHrDataHandler;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HealthHrDataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->init([B)V

    goto/16 :goto_1d2

    .line 2090
    :cond_cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2091
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->healthHrDataHandler:Lcom/keephealth/android/util/ble/HealthHrDataHandler;
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HealthHrDataHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/HealthHrDataHandler;->receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    .line 2092
    iget-boolean v1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    if-eqz v1, :cond_1d2

    .line 2093
    iget-boolean p1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    if-eqz p1, :cond_165

    .line 2094
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    if-ne p1, v1, :cond_14b

    .line 2095
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2096
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_12f

    .line 2098
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHrv()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 2099
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHRVHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2101
    :cond_11b
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result p1

    if-eqz p1, :cond_128

    .line 2102
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2104
    :cond_128
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto/16 :goto_1d2

    .line 2108
    :cond_12f
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_144

    .line 2109
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_144

    .line 2110
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2113
    :cond_144
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto/16 :goto_1d2

    .line 2117
    :cond_14b
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2118
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2119
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2120
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1d2

    .line 2123
    :cond_165
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    if-ne p1, v1, :cond_1ba

    .line 2124
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2125
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_1a0

    .line 2127
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHrv()Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 2128
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHRVHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_1d2

    .line 2130
    :cond_18e
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result p1

    if-eqz p1, :cond_19a

    .line 2131
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_1d2

    .line 2133
    :cond_19a
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_1d2

    .line 2137
    :cond_1a0
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_1b4

    .line 2138
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b4

    .line 2139
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_1d2

    .line 2142
    :cond_1b4
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_1d2

    .line 2146
    :cond_1ba
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 2147
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2148
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2149
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$30;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHeartHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    :cond_1d2
    :goto_1d2
    return-void
.end method
