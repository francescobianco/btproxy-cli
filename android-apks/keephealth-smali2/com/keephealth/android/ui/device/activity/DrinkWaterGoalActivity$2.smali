.class Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;
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

    .line 110
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 129
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 130
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->finish()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    const/16 v0, 0x14

    .line 113
    new-array v1, v0, [B

    .line 114
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 115
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 116
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->isFrist:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$000(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2e

    .line 117
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    const/16 v3, 0xae

    if-ne p1, v3, :cond_42

    .line 118
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)[B

    move-result-object p1

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->isFrist:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;Z)Z

    goto :goto_42

    .line 122
    :cond_2e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    const/4 v3, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->isFrist:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$002(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;Z)Z

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->dataByte:[B
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$100(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)[B

    move-result-object p1

    invoke-static {v1, v2, p1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->handleData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;->access$200(Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;)V

    :cond_42
    :goto_42
    return-void
.end method
