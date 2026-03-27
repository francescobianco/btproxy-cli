.class Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DialCenterBActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

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

    .line 162
    new-array v1, v0, [B

    .line 163
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 164
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0xc4

    if-ne p1, v2, :cond_44

    .line 166
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x3

    const/4 v2, 0x1

    .line 167
    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    const/4 v3, 0x4

    add-int/2addr p1, v3

    const/4 v4, 0x6

    .line 168
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v3

    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 169
    rem-int/lit8 v3, p1, 0x14

    if-nez v3, :cond_3d

    .line 170
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    div-int/2addr p1, v0

    # setter for: Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataLengh:I
    invoke-static {v2, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;I)I

    goto :goto_44

    .line 172
    :cond_3d
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    # setter for: Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataLengh:I
    invoke-static {v3, p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;I)I

    .line 175
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dataLengh:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)I

    move-result v0

    if-ne p1, v0, :cond_60

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->handleData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V

    :cond_60
    return-void
.end method
