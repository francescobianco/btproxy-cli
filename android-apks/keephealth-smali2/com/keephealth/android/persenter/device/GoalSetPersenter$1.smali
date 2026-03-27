.class Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;
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

    .line 36
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    iput-object p2, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->val$goal:Lcom/keephealth/android/model/bean/Goal;

    iput p3, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->val$cmd:I

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 52
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$200(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 53
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$300(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/GoalSetContract$View;

    iget v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->val$cmd:I

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/device/GoalSetContract$View;->saveFaild(I)V

    :cond_15
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "success_characteristic:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gtr7"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->val$goal:Lcom/keephealth/android/model/bean/Goal;

    iput-object v0, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->val$goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, v0, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    sput v0, Lcom/keephealth/android/app/AppApplication;->steps:I

    .line 43
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 44
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$000(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 45
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->this$0:Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    # getter for: Lcom/keephealth/android/persenter/device/GoalSetPersenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->access$100(Lcom/keephealth/android/persenter/device/GoalSetPersenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/GoalSetContract$View;

    iget v0, p0, Lcom/keephealth/android/persenter/device/GoalSetPersenter$1;->val$cmd:I

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/device/GoalSetContract$View;->saveSuccess(I)V

    :cond_50
    const/4 p1, 0x0

    .line 47
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRefresh:Z

    return-void
.end method
