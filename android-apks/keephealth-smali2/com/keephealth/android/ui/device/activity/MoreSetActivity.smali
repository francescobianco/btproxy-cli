.class public Lcom/keephealth/android/ui/device/activity/MoreSetActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "MoreSetActivity.java"


# instance fields
.field appnotice:I

.field config:Lcom/keephealth/android/model/bean/DeviceConfig;

.field deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

.field deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field deviceState:Lcom/keephealth/android/model/bean/DeviceState;

.field handList:[Ljava/lang/String;

.field ilCamera:Lcom/keephealth/android/views/ItemLableValue;

.field ilDeviceLanguage:Lcom/keephealth/android/views/ItemLableValue;

.field ilDisturb:Lcom/keephealth/android/views/ItemLableValue;

.field ilGoalSet:Lcom/keephealth/android/views/ItemLableValue;

.field ilMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

.field ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

.field ilSportMode:Lcom/keephealth/android/views/ItemLableValue;

.field ilTimeSystem:Lcom/keephealth/android/views/ItemLableValue;

.field ilUnitSet:Lcom/keephealth/android/views/ItemLableValue;

.field ilVibrate:Lcom/keephealth/android/views/ItemLableValue;

.field ilWristScreen:Lcom/keephealth/android/views/ItemToggleLayout;

.field ilWristScreenB:Lcom/keephealth/android/views/ItemLableValue;

.field private isClickSchedule:Z

.field isMusic:I

.field private musicUtil:Lcom/keephealth/android/util/MusicUtil;

.field rlMusic:Landroid/widget/RelativeLayout;

.field rlSechule:Landroid/widget/RelativeLayout;

.field rlWearingPreference:Landroid/widget/RelativeLayout;

.field private scheduleStatus:Z

.field tvHand:Landroid/widget/TextView;

.field userBean:Lcom/keephealth/android/model/bean/UserBean;

.field viewDeviceLanguage:Landroid/view/View;

.field viewLine:Landroid/view/View;

.field viewLineCamera:Landroid/view/View;

.field viewLineMusic:Landroid/view/View;

.field viewSportMode:Landroid/view/View;

.field viewTimeSystem:Landroid/view/View;

.field viewVibrate:Landroid/view/View;

.field viewWearingPreference:Landroid/view/View;

.field wheelViewDialog:Lcom/keephealth/android/views/dialog/WheelViewDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Lcom/keephealth/android/util/MusicUtil;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isClickSchedule:Z

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;Z)Z
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isClickSchedule:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->scheduleStatus:Z

    return p0
.end method

.method private initListener()V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreenB:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilGoalSet:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilCamera:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilDisturb:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSportMode:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilUnitSet:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilTimeSystem:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilDeviceLanguage:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilVibrate:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlWearingPreference:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$initView$0([BLandroid/view/View;)V
    .registers 2

    .line 250
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c006a

    return v0
.end method

.method protected initView()V
    .registers 7

    .line 98
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 99
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 101
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    if-eqz v0, :cond_3c

    .line 103
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isMusic:I

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->appnotice:I

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    .line 106
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    iget v0, v0, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWearHabit(I)V

    .line 107
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    :cond_3c
    const v0, 0x7f0901f6

    .line 109
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0901f7

    .line 110
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreenB:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0904fc

    .line 111
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlMusic:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901e3

    .line 112
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    const v0, 0x7f0907be

    .line 113
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLineMusic:Landroid/view/View;

    const v0, 0x7f0901cc

    .line 114
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilCamera:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0907bd

    .line 115
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLineCamera:Landroid/view/View;

    const v0, 0x7f0901d4

    .line 116
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilDisturb:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0907c1

    .line 117
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewSportMode:Landroid/view/View;

    const v0, 0x7f0901ea

    .line 118
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSportMode:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0901f3

    .line 119
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilUnitSet:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0907c3

    .line 120
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewTimeSystem:Landroid/view/View;

    const v0, 0x7f0901f1

    .line 121
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilTimeSystem:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0907b6

    .line 122
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewDeviceLanguage:Landroid/view/View;

    const v0, 0x7f0901d0

    .line 123
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilDeviceLanguage:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0901da

    .line 124
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilGoalSet:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f0907ba

    .line 125
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLine:Landroid/view/View;

    const v0, 0x7f0901e7

    .line 126
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

    const v0, 0x7f0901f4

    .line 127
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilVibrate:Lcom/keephealth/android/views/ItemLableValue;

    const v0, 0x7f090512

    .line 128
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlSechule:Landroid/widget/RelativeLayout;

    const v0, 0x7f0907c4

    .line 129
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewVibrate:Landroid/view/View;

    const v0, 0x7f090523

    .line 130
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlWearingPreference:Landroid/widget/RelativeLayout;

    const v0, 0x7f0907c5

    .line 131
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewWearingPreference:Landroid/view/View;

    const v0, 0x7f090667

    .line 132
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->tvHand:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v0, Lcom/keephealth/android/util/MusicUtil;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/MusicUtil;-><init>(Landroid/app/Activity;Lcom/keephealth/android/views/CustomToggleButton;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWearHabit()I

    move-result v0

    const v1, 0x7f10067c

    const v2, 0x7f1006df

    const/4 v3, 0x1

    if-ne v0, v3, :cond_166

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->tvHand:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16f

    .line 138
    :cond_166
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->tvHand:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_16f
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    const/16 v0, 0x24

    .line 141
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilDisturb:Lcom/keephealth/android/views/ItemLableValue;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSportMode:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewSportMode:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreenB:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    const/4 v5, 0x0

    if-nez v0, :cond_1a2

    .line 148
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->finish()V

    goto/16 :goto_297

    .line 160
    :cond_1a2
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlMusic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLineMusic:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1bd

    .line 164
    :cond_1b3
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlMusic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLineMusic:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :goto_1bd
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilCamera:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLineCamera:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1da

    .line 171
    :cond_1d0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilCamera:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLineCamera:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_1da
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDeviceLanguage()Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewDeviceLanguage:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilDeviceLanguage:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_1f7

    .line 190
    :cond_1ed
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewDeviceLanguage:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilDeviceLanguage:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 193
    :goto_1f7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHourMode12()Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewTimeSystem:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilTimeSystem:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_214

    .line 197
    :cond_20a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewTimeSystem:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilTimeSystem:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 200
    :goto_214
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->calorieGoal:Z

    if-nez v0, :cond_240

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->pedometerGoal:Z

    if-nez v0, :cond_240

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->standingDurationGoal:Z

    if-nez v0, :cond_240

    .line 201
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->exerciseDurationGoal:Z

    if-eqz v0, :cond_235

    goto :goto_240

    .line 205
    :cond_235
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilGoalSet:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24a

    .line 202
    :cond_240
    :goto_240
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilGoalSet:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :goto_24a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isCalendarSchedule()Z

    move-result v0

    if-eqz v0, :cond_258

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlSechule:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_25d

    .line 212
    :cond_258
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlSechule:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    :goto_25d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isVibrationAdjustment()Z

    move-result v0

    if-eqz v0, :cond_270

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewVibrate:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilVibrate:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_27a

    .line 219
    :cond_270
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewVibrate:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilVibrate:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 223
    :goto_27a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWearingHabit()Z

    move-result v0

    if-eqz v0, :cond_28d

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewWearingPreference:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlWearingPreference:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_297

    .line 227
    :cond_28d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->viewWearingPreference:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->rlWearingPreference:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    :goto_297
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v4, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, v4, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    if-ne v4, v3, :cond_2a3

    move v4, v3

    goto :goto_2a4

    :cond_2a3
    move v4, v5

    :goto_2a4
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilWristScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v4, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 298
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "openOrCloseSchedule"

    invoke-static {v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 299
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v4, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->scheduleStatus:Z

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    const/4 v0, 0x2

    .line 354
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->handList:[Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->initListener()V

    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-MoreSetActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 16

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v3, p1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v0, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v1, p1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v2, p1, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 237
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v4, p1, Lcom/keephealth/android/model/bean/DeviceState;->unit:I

    .line 238
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    const/4 v12, 0x1

    xor-int/lit8 v5, p1, 0x1

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v7, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 241
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v8, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v9, p1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 243
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v10

    .line 245
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v11

    move v6, p2

    .line 244
    invoke-static/range {v0 .. v11}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object p1

    if-eqz p2, :cond_89

    .line 247
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iput v12, p2, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 248
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    invoke-static {p2}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 249
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100747

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100791

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$$ExternalSyntheticLambda2;-><init>([B)V

    .line 249
    invoke-static {p0, p2, v0, v1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showTipsDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto :goto_9e

    .line 252
    :cond_89
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    const/4 v0, 0x0

    iput v0, p2, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 253
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    invoke-static {p2}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 254
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_9e
    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-MoreSetActivity()Z
    .registers 4

    .line 258
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 259
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100258

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->showToast(Ljava/lang/String;)V

    return v1

    .line 262
    :cond_1a
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    return v0

    .line 263
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10053c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->showToast(Ljava/lang/String;)V

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .line 490
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 491
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {v0}, Lcom/keephealth/android/util/MusicUtil;->removeListener()V

    const/16 v0, 0x24

    .line 492
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 493
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    if-nez p1, :cond_40

    .line 455
    array-length p1, p3

    const-string p2, "calender_request"

    if-lez p1, :cond_15

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_15

    .line 457
    const-string p1, "\u6743\u9650\u88ab\u6388\u4e88"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 460
    :cond_15
    const-string p1, "android.permission.READ_CALENDAR"

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 462
    const-string p1, "\u7528\u6237\u52fe\u9009\u4e86\u4e0d\u518d\u8be2\u95ee\uff0c\u9700\u8981\u5f15\u5bfc\u5230\u8bbe\u7f6e"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "package"

    invoke-static {v0, p2, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 465
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_40

    .line 469
    :cond_3b
    const-string p1, "\u7528\u6237\u53ea\u662f\u62d2\u7edd\uff0c\u53ef\u80fd\u518d\u6b21\u8bf7\u6c42\u6743\u9650\u6216\u63d0\u793a"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 479
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    .line 480
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {v0}, Lcom/keephealth/android/util/MusicUtil;->addListener()V

    .line 482
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    if-eqz v0, :cond_13

    .line 483
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    invoke-virtual {v0}, Lcom/keephealth/android/util/MusicUtil;->openMusicService()V

    .line 485
    :cond_13
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->musicUtil:Lcom/keephealth/android/util/MusicUtil;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/MusicUtil;->setNoticeMusicPlay(Z)V

    return-void
.end method
