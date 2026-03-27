.class Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;
.super Ljava/lang/Object;
.source "MoreSetActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->onClickL(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(III)V
    .registers 20

    move-object/from16 v0, p0

    .line 420
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->tvHand:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->handList:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    add-int/lit8 v2, p1, 0x1

    iput v2, v1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 422
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/UserBean;->setWearHabit(I)V

    .line 423
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 424
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 425
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, v2, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, v2, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v5, v2, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v6, v2, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v7, v2, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v8, v2, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v9, v2, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget v10, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isMusic:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget v11, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->appnotice:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v12, v2, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 426
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v13

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v14

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v15, v2, Lcom/keephealth/android/model/bean/DeviceState;->vibrateStrong:I

    .line 425
    invoke-static/range {v3 .. v15}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceStateStrong(IIIIIIIIIIIII)[B

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v5, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1$1;

    invoke-direct {v5, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1$1;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12$1;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method
