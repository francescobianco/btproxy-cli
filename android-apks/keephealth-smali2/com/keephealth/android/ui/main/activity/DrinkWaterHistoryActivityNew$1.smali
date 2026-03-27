.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DrinkWaterHistoryActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

.field final synthetic val$waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Lcom/keephealth/android/util/ble/WaterDataHandler;)V
    .registers 3

    .line 253
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->val$waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 277
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->hideLoading()V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    const/4 v0, 0x0

    iput v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->index:I

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isGetWaterData:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isGetWaterData:Z

    if-eqz v0, :cond_82

    .line 257
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 258
    const-string v0, "\u559d\u6c34\u63a5\u53e3\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 259
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_38

    .line 260
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    const/4 v2, 0x3

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v2

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->length:I

    .line 261
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->val$waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->index:I

    invoke-virtual {v1, p1, v2}, Lcom/keephealth/android/util/ble/WaterDataHandler;->setDataWater([BI)Z

    goto :goto_48

    .line 263
    :cond_38
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v2, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->index:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->index:I

    .line 264
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->val$waterDataHandler:Lcom/keephealth/android/util/ble/WaterDataHandler;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v2, v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->index:I

    invoke-virtual {v1, p1, v2}, Lcom/keephealth/android/util/ble/WaterDataHandler;->setDataWater([BI)Z

    .line 266
    :goto_48
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v2, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->lengthData:I

    array-length p1, p1

    add-int/2addr v2, p1

    iput v2, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->lengthData:I

    .line 267
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->lengthData:I

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget v1, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->length:I

    add-int/lit8 v1, v1, 0x4

    if-ne p1, v1, :cond_82

    .line 268
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isGetWaterData:Z

    .line 269
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->hideLoading()V

    .line 270
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$300(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachYear:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$000(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$100(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mSeachDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$200(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/DrinkWaterHistoryPresenter;->getHistoryData(III)V

    :cond_82
    return-void
.end method
