.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDeviceStateData()V
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

    .line 673
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ffr3ddft"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$2600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 699
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$2700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_27
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10

    .line 676
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 677
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 678
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

    const-string v3, "\u83b7\u53d6\u8bbe\u5907\u72b6\u6001\u6570\u636e"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 679
    const-string v3, "\u83b7\u53d6\u8bbe\u5907\u72b6\u6001:"

    const/16 v4, 0x82

    if-ne v1, v4, :cond_84

    aget-byte v6, p1, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_84

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    array-length v7, p1

    sub-int/2addr v7, v5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v6, v7, :cond_84

    .line 680
    const-string v1, "ffr3ddft"

    const-string v4, "getDeviceState_success:"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerDeviceState([B)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$2400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V

    .line 684
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentStep(I)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$2500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)V

    goto :goto_b4

    .line 686
    :cond_84
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    if-ne v1, v4, :cond_b4

    .line 687
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v4, p1

    sub-int/2addr v4, v5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-ne v1, v4, :cond_b4

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 690
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$14;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getCurrentStep(I)V
    invoke-static {p1, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$2500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)V

    :cond_b4
    :goto_b4
    return-void
.end method
