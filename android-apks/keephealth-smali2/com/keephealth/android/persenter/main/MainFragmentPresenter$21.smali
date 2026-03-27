.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getTarget()V
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

    .line 1318
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 1367
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$4900(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1368
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$5000(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/main/MainFragmentContract$View;->requestFaild()V

    :cond_13
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 11

    .line 1321
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1322
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 1323
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u76ee\u6807\u6570\u636e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    const/4 v1, 0x1

    const/16 v3, 0x87

    if-ne v2, v3, :cond_40

    .line 1326
    iget-object v4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    aget-byte v5, v0, v1

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v6

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v5, v6

    iput v5, v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->length:I

    .line 1327
    iget-object v4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput-object v0, v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    .line 1329
    :cond_40
    iget-object v4, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v4, v4, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->length:I

    const/16 v5, 0x14

    const-string v6, "flag_start:"

    const-string v7, "\u83b7\u53d6\u76ee\u6807\u6570\u636e"

    const-string v8, " -- "

    if-lt v4, v5, :cond_165

    .line 1330
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->length:I

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    if-ne v0, v2, :cond_c3

    .line 1331
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNotice()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$4600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 1333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object p1, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne p1, v0, :cond_1b8

    .line 1335
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target:[B

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerTargeLongData([B)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$4700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V

    goto/16 :goto_1b8

    .line 1338
    :cond_c3
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targatItem:I

    if-ne v0, v1, :cond_158

    .line 1339
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target2:[B

    .line 1340
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target1:[B

    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v3, v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target2:[B

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ByteContant;->combineByteArrays([B[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    .line 1341
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    iput-object v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target1:[B

    .line 1342
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->length:I

    if-ne v0, v2, :cond_158

    .line 1343
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNotice()V
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$4600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v3, v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v0, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v2, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    iget-object v3, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v3, v3, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    if-ne v0, v2, :cond_158

    .line 1347
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget-object v2, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targetall:[B

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerTargeLongData([B)V
    invoke-static {v0, v2}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$4700(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V

    .line 1351
    :cond_158
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iput v1, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->targatItem:I

    .line 1352
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    iput-object p1, v0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->target1:[B

    goto :goto_1b8

    :cond_165
    if-ne v2, v3, :cond_1b8

    .line 1355
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    iget p1, p1, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->length:I

    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    if-ne p1, v2, :cond_1b8

    .line 1356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    if-ne p1, v1, :cond_1b3

    .line 1358
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerTargeData([B)V
    invoke-static {p1, v0}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$4800(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;[B)V

    .line 1360
    :cond_1b3
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$21;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->getNotice()V
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->access$4600(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V

    :cond_1b8
    :goto_1b8
    return-void
.end method
