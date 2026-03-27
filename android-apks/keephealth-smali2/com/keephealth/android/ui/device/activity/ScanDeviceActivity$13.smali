.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getDeviceInfo(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

.field final synthetic val$flag_start:I

.field final synthetic val$to:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I[B)V
    .registers 4

    .line 854
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->val$flag_start:I

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->val$to:[B

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 879
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo1:Z

    .line 880
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->val$flag_start:I

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->val$to:[B

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice(I[B)V
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I[B)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 857
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo1:Z

    if-eqz v0, :cond_5a

    const/16 v0, 0x14

    .line 858
    new-array v0, v0, [B

    .line 859
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 860
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x81

    if-ne v1, v2, :cond_5a

    .line 862
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iput-boolean p1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isDeviceInfo1:Z

    .line 864
    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 866
    const-string v1, "TA1J01N5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "TA2J01N5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "T02WS3N3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "TB0EW5N9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_53

    .line 869
    :cond_4b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->val$flag_start:I

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice(I[B)V
    invoke-static {p1, v1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I[B)V

    goto :goto_5a

    .line 867
    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-static {p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_5a
    :goto_5a
    return-void
.end method
