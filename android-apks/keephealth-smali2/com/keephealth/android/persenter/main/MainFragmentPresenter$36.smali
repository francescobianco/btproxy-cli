.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
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

    .line 2647
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 2698
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$12300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2699
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$12400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_13
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .line 2650
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$12100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2651
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$12200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->refTimeOut()V

    .line 2653
    :cond_13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2654
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 2655
    aget-byte v2, p1, v2

    .line 2656
    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x5

    const-string v6, "\u6e29\u5ea6\u5386\u53f2\u6570\u636e:"

    if-nez v3, :cond_88

    .line 2657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_75

    .line 2659
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    if-ne p1, v1, :cond_5b

    .line 2660
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto/16 :goto_ea

    .line 2662
    :cond_5b
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 2663
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2664
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2665
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto/16 :goto_ea

    :cond_75
    const/16 v0, 0xac

    if-ne v1, v0, :cond_ea

    .line 2669
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5708(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2670
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->tempDataHandler:Lcom/keephealth/android/util/ble/TempDataHandler;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$1100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/TempDataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/TempDataHandler;->init([B)V

    goto :goto_ea

    .line 2674
    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 2676
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->tempDataHandler:Lcom/keephealth/android/util/ble/TempDataHandler;
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$1100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/TempDataHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/TempDataHandler;->receiverHistory([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    .line 2677
    iget-boolean v1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    if-eqz v1, :cond_ea

    .line 2678
    iget-boolean p1, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    if-eqz p1, :cond_e0

    .line 2679
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->distanDay:I
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    move-result v1

    if-ne p1, v1, :cond_c7

    .line 2680
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2681
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_ea

    .line 2683
    :cond_c7
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 2684
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # operator++ for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mIndex:I
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$6008(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)I

    .line 2685
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2686
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncTempHistory(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$7900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)V

    goto :goto_ea

    .line 2689
    :cond_e0
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->currentIndex:I
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5702(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;I)I

    .line 2690
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$36;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->synchActiviy()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$8000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    :cond_ea
    :goto_ea
    return-void
.end method
