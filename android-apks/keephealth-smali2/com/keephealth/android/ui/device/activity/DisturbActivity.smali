.class public Lcom/keephealth/android/ui/device/activity/DisturbActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "DisturbActivity.java"


# instance fields
.field private endHour:I

.field private endMin:I

.field endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field private fristCmd:Z

.field mToggleButton:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e4
    .end annotation
.end field

.field private startHour:I

.field private startMin:I

.field startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field tvRemindEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ae
    .end annotation
.end field

.field tvRemindStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->fristCmd:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/DisturbActivity;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->fristCmd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/activity/DisturbActivity;I)I
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/DisturbActivity;Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private initDatePicker()V
    .registers 3

    .line 125
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 126
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 148
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 149
    new-instance v1, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0044

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 46
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100508

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->fristCmd:Z

    const/16 v1, 0xb

    .line 51
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 52
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DisturbActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/DisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_SLEEP:[B

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 121
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->initDatePicker()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-DisturbActivity(Landroid/view/View;)V
    .registers 7

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_77

    const/16 p1, 0x14

    .line 95
    new-array p1, p1, [B

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 96
    aput-byte v1, p1, v0

    const/4 v2, 0x1

    const/16 v3, 0x10

    .line 97
    aput-byte v3, p1, v2

    const/4 v2, 0x2

    .line 98
    aput-byte v0, p1, v2

    const/4 v2, 0x3

    const/4 v4, -0x1

    .line 99
    aput-byte v4, p1, v2

    .line 100
    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, p1, v4

    .line 101
    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput-byte v2, p1, v4

    .line 102
    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I

    int-to-byte v2, v2

    const/4 v4, 0x6

    aput-byte v2, p1, v4

    .line 103
    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I

    int-to-byte v2, v2

    const/4 v4, 0x7

    aput-byte v2, p1, v4

    .line 104
    aput-byte v0, p1, v1

    const/16 v1, 0x9

    .line 105
    aput-byte v0, p1, v1

    const/16 v1, 0xa

    .line 106
    aput-byte v0, p1, v1

    const/16 v1, 0xb

    .line 107
    aput-byte v0, p1, v1

    const/16 v1, 0xc

    .line 108
    aput-byte v0, p1, v1

    const/16 v1, 0xd

    .line 109
    aput-byte v0, p1, v1

    const/16 v1, 0xe

    .line 110
    aput-byte v0, p1, v1

    const/16 v1, 0xf

    .line 111
    aput-byte v0, p1, v1

    .line 112
    aput-byte v0, p1, v3

    const/16 v1, 0x11

    .line 113
    aput-byte v0, p1, v1

    .line 114
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->mToggleButton:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v1}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0x12

    aput-byte v1, p1, v2

    const/16 v1, 0x13

    .line 115
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCode([B)B

    move-result v2

    aput-byte v2, p1, v1

    .line 116
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->fristCmd:Z

    .line 117
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :cond_77
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 187
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 188
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method selecEndTime()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050a
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endHour:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endMin:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->show()V

    return-void
.end method

.method selecStatrTime()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050c
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startHour:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startMin:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->show()V

    return-void
.end method
