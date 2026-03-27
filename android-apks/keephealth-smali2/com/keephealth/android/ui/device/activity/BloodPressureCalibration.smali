.class public Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;
.super Lcom/keephealth/android/base/BaseActivity;
.source "BloodPressureCalibration.java"


# instance fields
.field calibrationHeart:I

.field calibrationPressFz:I

.field calibrationPressSs:I

.field etHeart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field etPressFz:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016d
    .end annotation
.end field

.field etPressSs:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016e
    .end annotation
.end field

.field tvHeart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09066a
    .end annotation
.end field

.field tvPressFz:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a2
    .end annotation
.end field

.field tvPressSs:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0025

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 51
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvHeart:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100347

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a50~120bpm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvPressSs:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a90~180mmHg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->tvPressFz:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a60~110mmHg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/16 v1, 0x9

    .line 57
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDatumLine()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6tyg"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getDatumLine()[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$1;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method synthetic lambda$setHeartRate$0$com-keephealth-android-ui-device-activity-BloodPressureCalibration(I)V
    .registers 3

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x32

    if-lt p1, v0, :cond_1e

    const/16 v0, 0x78

    if-gt p1, v0, :cond_1e

    .line 91
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationHeart:I

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etHeart:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 94
    :cond_1e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->showToast(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method synthetic lambda$setPressFz$2$com-keephealth-android-ui-device-activity-BloodPressureCalibration(I)V
    .registers 3

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1e

    const/16 v0, 0x6e

    if-gt p1, v0, :cond_1e

    .line 118
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressFz:I

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressFz:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 121
    :cond_1e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->showToast(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method synthetic lambda$setPressSs$1$com-keephealth-android-ui-device-activity-BloodPressureCalibration(I)V
    .registers 3

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x5a

    if-lt p1, v0, :cond_1e

    const/16 v0, 0xb4

    if-gt p1, v0, :cond_1e

    .line 104
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressSs:I

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->etPressSs:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 107
    :cond_1e
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->showToast(Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 154
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 155
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method onSave()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900b0
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 130
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 131
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationHeart:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressFz:I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressSs:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ble/CmdHelper;->sendDatumLine(III)[B

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$2;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method setHeartRate()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09016b
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationHeart:I

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    const-string v3, "50~120bpm"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/keephealth/android/util/DialogHelperNew;->getInputDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;)V

    return-void
.end method

.method setPressFz()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09016d
        }
    .end annotation

    .line 115
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressFz:I

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    const-string v3, "60~110mmHg"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/keephealth/android/util/DialogHelperNew;->getInputDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;)V

    return-void
.end method

.method setPressSs()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09016e
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->calibrationPressSs:I

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;)V

    const-string v3, "90~180mmHg"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/keephealth/android/util/DialogHelperNew;->getInputDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;)V

    return-void
.end method
