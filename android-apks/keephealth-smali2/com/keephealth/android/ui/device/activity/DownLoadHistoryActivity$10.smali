.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DownLoadHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->notifyDial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 2

    .line 1022
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    const/16 v0, 0x14

    .line 1025
    new-array v1, v0, [B

    .line 1026
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 1027
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0xc4

    if-ne p1, v2, :cond_44

    .line 1029
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x3

    const/4 v2, 0x1

    .line 1030
    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    const/4 v3, 0x4

    add-int/2addr p1, v3

    const/4 v4, 0x6

    .line 1031
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v3

    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1032
    rem-int/lit8 v3, p1, 0x14

    if-nez v3, :cond_3d

    .line 1033
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    div-int/2addr p1, v0

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataLengh:I
    invoke-static {v2, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2502(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I

    goto :goto_44

    .line 1035
    :cond_3d
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataLengh:I
    invoke-static {v3, p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2502(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;I)I

    .line 1038
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dataLengh:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_60

    .line 1040
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->handleData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V

    :cond_60
    return-void
.end method
