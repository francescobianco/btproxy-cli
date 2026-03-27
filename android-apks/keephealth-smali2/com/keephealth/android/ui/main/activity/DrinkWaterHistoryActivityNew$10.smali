.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DrinkWaterHistoryActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

.field final synthetic val$dataString:Ljava/lang/String;

.field final synthetic val$item:Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

.field final synthetic val$second:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Ljava/lang/String;ILcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V
    .registers 5

    .line 894
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->val$dataString:Ljava/lang/String;

    iput p3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->val$second:I

    iput-object p4, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->val$item:Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 910
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isDeleteWater:Z

    .line 911
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->hideLoading()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 897
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-boolean v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isDeleteWater:Z

    if-eqz v0, :cond_63

    .line 898
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->hideLoading()V

    .line 899
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->isDeleteWater:Z

    .line 900
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: \u5220\u9664\u559d\u6c34: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -- 240--"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->val$dataString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->val$second:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u559d\u6c34\u63a5\u53e3\u6570\u636e"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xf0

    if-ne p1, v0, :cond_63

    .line 903
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew$10;->val$item:Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->deleteWater(Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->access$1200(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;)V

    :cond_63
    return-void
.end method
