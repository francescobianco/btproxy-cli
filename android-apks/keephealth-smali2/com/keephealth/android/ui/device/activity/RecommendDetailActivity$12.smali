.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->notifyDial(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 2

    .line 1194
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentDialId_onFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GGGh35d3"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8

    const/16 v0, 0x14

    .line 1197
    new-array v1, v0, [B

    .line 1198
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 1199
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0xc4

    .line 1200
    const-string v3, "GGGh35d3"

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-ne p1, v2, :cond_61

    .line 1201
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "currentDialId_success:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x3

    const/4 v2, 0x1

    .line 1203
    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    add-int/2addr p1, v5

    .line 1204
    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v3

    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1205
    rem-int/lit8 v3, p1, 0x14

    if-nez v3, :cond_59

    .line 1206
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    div-int/2addr p1, v0

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataLengh:I
    invoke-static {v2, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2402(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I

    goto :goto_7b

    .line 1208
    :cond_59
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataLengh:I
    invoke-static {v3, p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2402(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I

    goto :goto_7b

    .line 1211
    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "currentDialId_fail:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_7b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "notifyDial_success:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "   dataLengh:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataLengh:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GGGh35d2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dataLengh:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d4

    .line 1216
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->handleData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V

    .line 1217
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d4
    return-void
.end method
