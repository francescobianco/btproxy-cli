.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHRVHistory(Z)V
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

    .line 2180
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 2279
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2280
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    .line 2282
    :cond_13
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHrv:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10

    .line 2183
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-boolean v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHrv:Z

    if-eqz v0, :cond_1c8

    .line 2184
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6536\u5230HRV\u6570\u636e\u539f\u59cb:"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2186
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->refTimeOut()V

    .line 2188
    :cond_26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 2189
    array-length v0, p1

    const/4 v1, -0x1

    const/16 v2, 0xd3

    const-string v3, "A01WC6T2,A00WC6T2,A02WC6T2,A01B16T2,A03WC6T2,A04WC6T2,A05WC6T2,A01B16T3,A06WC6T2,A02B16T2,A03B16T3,B00WC6T2,A07WC6T2,A08WC6T2,A09WC6T2,A10WC6T2,A00WC6T7,T02NS5T7,T03NS5T7,T02S20T7,T03S20N7,A00WC6T7,T02NS5T7,A00WC6T7,T03NS5T7,T02S20T7,A01W11T7"

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v0, v4, :cond_c8

    aget-byte v0, p1, v6

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_c8

    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    const/4 v7, 0x2

    if-ne v0, v7, :cond_c8

    aget-byte v0, p1, v7

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_c8

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_c8

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v4, :cond_c8

    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v7, 0xec

    if-ne v0, v7, :cond_c8

    .line 2190
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    if-ne p1, v0, :cond_af

    .line 2191
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v6, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHrv:Z

    .line 2192
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2193
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 2195
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 2196
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_c7

    .line 2198
    :cond_8f
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_c7

    .line 2201
    :cond_95
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 2202
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 2203
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_c7

    .line 2206
    :cond_a9
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_c7

    .line 2210
    :cond_af
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 2211
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2212
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2213
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHRVHistory(Z)V
    invoke-static {p1, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    :goto_c7
    return-void

    .line 2217
    :cond_c8
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    const-string v7, "\u5fc3\u7387\u53d8\u5f02\u6027\u5386\u53f2\u6570\u636e:"

    if-nez v0, :cond_fc

    .line 2218
    aget-byte v0, p1, v6

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_1c8

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5708(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2221
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->hrvDataHandler:Lcom/keephealth/android/util/ble/HRVDataHandler;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HRVDataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/HRVDataHandler;->init([B)V

    goto/16 :goto_1c8

    .line 2224
    :cond_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2225
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->hrvDataHandler:Lcom/keephealth/android/util/ble/HRVDataHandler;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/HRVDataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/HRVDataHandler;->receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    .line 2226
    iget-boolean v0, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    if-eqz v0, :cond_1c8

    .line 2227
    iget-boolean p1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    if-eqz p1, :cond_18a

    .line 2228
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v0

    if-ne p1, v0, :cond_171

    .line 2229
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2230
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v6, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHrv:Z

    .line 2231
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_157

    .line 2233
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result p1

    if-eqz p1, :cond_150

    .line 2234
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_1c8

    .line 2236
    :cond_150
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto/16 :goto_1c8

    .line 2239
    :cond_157
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_16b

    .line 2240
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 2241
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_1c8

    .line 2244
    :cond_16b
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_1c8

    .line 2248
    :cond_171
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 2249
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2250
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2251
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncHRVHistory(Z)V
    invoke-static {p1, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_1c8

    .line 2254
    :cond_18a
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v6, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isHrv:Z

    .line 2255
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v6}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2256
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_1af

    .line 2258
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result p1

    if-eqz p1, :cond_1a9

    .line 2259
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_1c8

    .line 2261
    :cond_1a9
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_1c8

    .line 2264
    :cond_1af
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_1c3

    .line 2265
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c3

    .line 2266
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v5}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_1c8

    .line 2269
    :cond_1c3
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$31;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    :cond_1c8
    :goto_1c8
    return-void
.end method
