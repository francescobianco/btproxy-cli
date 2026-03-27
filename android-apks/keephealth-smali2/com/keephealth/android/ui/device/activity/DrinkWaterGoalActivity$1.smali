.class Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "DrinkWaterGoalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$400(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 92
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->etDrinkWaterGoal:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveWaterGoal(I)V

    .line 93
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->from:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$300(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->setResult(I)V

    .line 96
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->finish()V

    return-void
.end method
