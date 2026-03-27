.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->syncWater()V
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

    .line 2343
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 2395
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateWeather()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 2396
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v0, 0x0

    iput v0, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    .line 2397
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v0, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    .line 2398
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 2399
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_21
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 11

    .line 2346
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-boolean v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    if-eqz v0, :cond_145

    .line 2347
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2348
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf0

    const/16 v3, 0x64

    const-string v4, " -- "

    const-string v5, " -- \u5df2\u5b8c\u6210: "

    const/4 v6, 0x1

    if-ne v1, v2, :cond_b3

    .line 2349
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$9700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/WaterDataHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    invoke-virtual {v1, p1, v2}, Lcom/keephealth/android/util/ble/WaterDataHandler;->setDataWater([BI)Z

    move-result v1

    .line 2350
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    const/4 v7, 0x3

    invoke-static {p1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v7

    iput v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->length:I

    iput v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->lengthWaterData:I

    .line 2351
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    array-length v8, p1

    add-int/2addr v7, v8

    iput v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    .line 2352
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    add-int/2addr v7, v6

    iput v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    .line 2353
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    iget-object v6, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v6, v6, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->lengthWaterData:I

    add-int/lit8 v6, v6, 0x4

    if-ne v2, v6, :cond_5a

    .line 2354
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v0, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    :cond_5a
    if-eqz v1, :cond_87

    .line 2357
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$9800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 2358
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$9900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0, v3}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    .line 2360
    :cond_6f
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 2361
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10100(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestSuccess()V

    .line 2363
    :cond_82
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateWeather()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 2365
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-boolean v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u559d\u6c34\u5386\u53f2\u6570\u636e222:"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_145

    .line 2367
    :cond_b3
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v1, v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    if-lez v1, :cond_145

    .line 2368
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v2, v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    array-length v7, p1

    add-int/2addr v2, v7

    iput v2, v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    .line 2369
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v1, v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataIndex:I

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->lengthWaterData:I

    add-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_d1

    .line 2370
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v0, v1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    .line 2372
    :cond_d1
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;
    invoke-static {v1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$9700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/util/ble/WaterDataHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    invoke-virtual {v1, p1, v2}, Lcom/keephealth/android/util/ble/WaterDataHandler;->setDataWater([BI)Z

    move-result v1

    .line 2373
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    add-int/2addr v7, v6

    iput v7, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    if-eqz v1, :cond_11b

    .line 2375
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-boolean v0, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    .line 2376
    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput v0, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->index:I

    .line 2377
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10300(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 2378
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10400(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0, v3}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->updateProgress(I)V

    .line 2380
    :cond_103
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10500(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_116

    .line 2381
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestSuccess()V

    .line 2383
    :cond_116
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->updateWeather()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$10200(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 2385
    :cond_11b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$33;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-boolean v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->isWaterData:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u559d\u6c34\u5386\u53f2\u6570\u636e333:"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_145
    :goto_145
    return-void
.end method
