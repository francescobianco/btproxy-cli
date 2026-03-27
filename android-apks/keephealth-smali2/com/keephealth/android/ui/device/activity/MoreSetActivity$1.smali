.class Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;
.super Ljava/lang/Object;
.source "MoreSetActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(Z)V
    .registers 15

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Lcom/keephealth/android/util/MusicUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/MusicUtil;->setNoticeMusicPlay(Z)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v1, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v2, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v5, v0, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v7, v0, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v8, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v9, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 288
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v10, v0, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 289
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v11

    .line 291
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v12

    .line 290
    invoke-static/range {v1 .. v12}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    if-eqz p1, :cond_90

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$000(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Lcom/keephealth/android/util/MusicUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/MusicUtil;->openMusicService()V

    :cond_90
    return-void
.end method
