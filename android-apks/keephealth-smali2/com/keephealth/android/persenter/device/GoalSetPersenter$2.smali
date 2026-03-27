.class Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "GoalSetPersenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/GoalSetPersenter;->saveGold(ILcom/keephealth/android/model/bean/Goal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

.field final synthetic val$cmd:I

.field final synthetic val$goal:Lcom/keephealth/android/model/bean/Goal;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/GoalSetPersenter;Lcom/keephealth/android/model/bean/Goal;I)V
    .registers 4

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->val$goal:Lcom/keephealth/android/model/bean/Goal;

    iput p3, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->val$cmd:I

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$600(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$700(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/GoalSetContract$View;

    iget v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->val$cmd:I

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/device/GoalSetContract$View;->saveFaild(I)V

    :cond_15
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 66
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->val$goal:Lcom/keephealth/android/model/bean/Goal;

    iput-object v0, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->val$goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, v0, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    sput v0, Lcom/keephealth/android/app/AppApplication;->steps:I

    .line 69
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 70
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$400(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 71
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$500(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/GoalSetContract$View;

    iget v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$2;->val$cmd:I

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/device/GoalSetContract$View;->saveSuccess(I)V

    :cond_2c
    const/4 p1, 0x0

    .line 73
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRefresh:Z

    return-void
.end method
