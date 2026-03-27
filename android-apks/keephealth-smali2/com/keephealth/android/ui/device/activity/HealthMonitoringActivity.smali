.class public Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "HealthMonitoringActivity.java"


# instance fields
.field private bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

.field calibrationCanBack:I

.field calibrationCanBefore:I

.field calibrationHeart:I

.field calibrationPressFz:I

.field calibrationPressSs:I

.field private deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

.field ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field

.field ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901dd
    .end annotation
.end field

.field ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f0
    .end annotation
.end field

.field relative_xuetang:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b7
    .end annotation
.end field

.field tv_content_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09072d
    .end annotation
.end field

.field tv_content_2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09072e
    .end annotation
.end field

.field viewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907ba
    .end annotation
.end field

.field viewLine2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907bb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private postData()V
    .registers 3

    .line 199
    const-string v0, "gfe332w"

    const-string v1, "postData..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "calibrationCanBefore"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationCanBefore:I

    .line 201
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "calibrationCanBack"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->calibrationCanBack:I

    .line 203
    new-instance v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    .line 250
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 252
    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->requestByModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    :cond_3b
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c005c

    return v0
.end method

.method protected initView()V
    .registers 12

    .line 85
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x23

    .line 87
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isTestTime:Z

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 89
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_154

    .line 92
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "canBefore"

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "before:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gfd3e"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, " mmol/L"

    const-string v7, " "

    const v8, 0x7f100169

    if-nez v4, :cond_83

    .line 95
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_1:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a3

    .line 97
    :cond_83
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " 5.0 mmol/L"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_a3
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "canBack"

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "back:"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x7f1004c8

    if-nez v4, :cond_ef

    .line 102
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_2:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10f

    .line 104
    :cond_ef
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->tv_content_2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 8.0 mmol/L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_10f
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->postData()V

    .line 107
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result v3

    if-eqz v3, :cond_149

    .line 108
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v3, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    .line 110
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/4 v3, 0x1

    .line 111
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    const/16 v3, 0x13

    .line 112
    invoke-static {p0, v1, v3}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 113
    const-string v3, "gfe332w"

    const-string v4, "start..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getTempTest()[B

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_15e

    .line 142
    :cond_149
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    goto :goto_15e

    .line 146
    :cond_154
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setVisibility(I)V

    :goto_15e
    if-eqz v0, :cond_17c

    .line 150
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodpressureCalibration()Z

    move-result v0

    if-eqz v0, :cond_171

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_186

    .line 154
    :cond_171
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_186

    .line 158
    :cond_17c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->viewLine2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilBloodPressureCalibration:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 161
    :goto_186
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilHeartTest:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->ilTempTest:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setToggleButtonCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-HealthMonitoringActivity()Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 163
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100258

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V

    return v1

    .line 166
    :cond_18
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10053c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V

    return v1
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-HealthMonitoringActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 4

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isTestTime:Z

    .line 176
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->deviceConfig:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const/16 v0, 0x1e

    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setHeartTest(II)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-HealthMonitoringActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 4

    .line 180
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    const/16 v0, 0x1e

    invoke-static {p2, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setTempTest(II)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method synthetic lambda$initView$3$com-keephealth-android-ui-device-activity-HealthMonitoringActivity()Z
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 184
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100258

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V

    return v1

    .line 187
    :cond_18
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10053c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->showToast(Ljava/lang/String;)V

    return v1
.end method

.method protected onDestroy()V
    .registers 3

    .line 337
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 338
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->canDissDilalog()V

    .line 340
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/4 v0, 0x0

    .line 341
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isWaterBack:Z

    .line 342
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    const/4 v0, 0x1

    .line 343
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->backFromHealth:Z

    return-void
.end method

.method setBloodPressureCalibration()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901ca
        }
    .end annotation

    .line 288
    const-class v0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method setXueTang()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904b7
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V

    invoke-static {p0, v0}, Lcom/keephealth/android/util/DialogHelperNew;->showXueTangDialog(Landroid/content/Context;Lcom/keephealth/android/views/dialog/WheelViewCanDialog$OnSelectClick;)V

    return-void
.end method
