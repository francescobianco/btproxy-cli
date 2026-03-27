.class Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DrinkWaterAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 149
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 140
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: \u6dfb\u52a0\u559d\u6c34: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u559d\u6c34\u63a5\u53e3\u6570\u636e"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xf0

    if-ne p1, v0, :cond_30

    .line 143
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->saveWaterDataBle()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;)V

    :cond_30
    return-void
.end method
