.class Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DrinkWaterTargetAndNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->saveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 223
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$700(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 210
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: \u8bbe\u7f6e\u559d\u6c34\u76ee\u6807: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u559d\u6c34\u63a5\u53e3\u6570\u636e"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->waterTarget:I

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveWaterGoal(I)V

    .line 213
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->from:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->access$600(Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_43

    .line 214
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->binding:Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDrinkWaterTargetAndNoticeBinding;->ilDrinkWaterOpen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ItemToggleLayout;->isOpen()Z

    move-result p1

    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isDrinkWaterOpen:Z

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->setResult(I)V

    .line 217
    :cond_43
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;->finish()V

    return-void
.end method
