.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;
.super Ljava/lang/Object;
.source "DownLoadHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendDialBin([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

.field final synthetic val$bytes:[B

.field final synthetic val$dataSize:I

.field final synthetic val$finalJ:[I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;[II[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    iput p3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$dataSize:I

    iput-object p4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 584
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->send_data_0:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1800(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v0

    if-nez v0, :cond_e2

    .line 585
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->send_data_0:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1802(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I

    .line 587
    :cond_e
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    const-string v2, "hgyrt"

    const/4 v3, 0x0

    if-nez v0, :cond_d5

    .line 588
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 590
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v0, v0, v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_73

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "finalJ[0]\uff1a"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  data:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v5, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$1;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;)V

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_ce

    .line 748
    :cond_73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v0, v0, v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_ce

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "finalJ[0]_duo\uff1a"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  data_duo:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->sendData:Ljava/util/List;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v5, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$2;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9$2;-><init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;)V

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 790
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$9;->val$finalJ:[I

    aget v4, v0, v3

    add-int/2addr v4, v1

    aput v4, v0, v3

    .line 792
    :cond_d5
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    if-eqz v0, :cond_e

    .line 793
    const-string v0, "\u8df3\u51fa\u5faa\u73af..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 795
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    :cond_e2
    return-void
.end method
