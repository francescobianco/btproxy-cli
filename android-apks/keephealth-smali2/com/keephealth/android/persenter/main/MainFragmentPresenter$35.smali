.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getDrinkWaterOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

.field final synthetic val$dataByte:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V
    .registers 3

    .line 2460
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->val$dataByte:[B

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 2496
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDrinkWaterOpen:Z

    .line 2497
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateWeather()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 2463
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-boolean v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDrinkWaterOpen:Z

    if-eqz v0, :cond_b0

    const/16 v0, 0x14

    .line 2464
    new-array v1, v0, [B

    .line 2465
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 2466
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isFrist:Z
    invoke-static {v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 2467
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xae

    if-ne v2, v4, :cond_8a

    .line 2468
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->val$dataByte:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2469
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isFrist:Z
    invoke-static {v0, v3}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11402(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    goto :goto_8a

    .line 2472
    :cond_2d
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v4, 0x1

    # setter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isFrist:Z
    invoke-static {v2, v4}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11402(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;Z)Z

    .line 2473
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->val$dataByte:[B

    invoke-static {v1, v3, v2, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2474
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->val$dataByte:[B

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handleData([B)V
    invoke-static {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V

    .line 2475
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 2476
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkWaterRecordSync()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2477
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v3, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDrinkWaterOpen:Z

    .line 2478
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncWater()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    goto :goto_8a

    .line 2480
    :cond_59
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 2481
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    .line 2483
    :cond_6e
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$11900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 2484
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$12000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestSuccess()V

    .line 2486
    :cond_81
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v3, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isDrinkWaterOpen:Z

    .line 2487
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$35;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateWeather()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 2491
    :cond_8a
    :goto_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " -- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u559d\u6c34\u63d0\u9192\u5f00\u5173main"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-void
.end method
