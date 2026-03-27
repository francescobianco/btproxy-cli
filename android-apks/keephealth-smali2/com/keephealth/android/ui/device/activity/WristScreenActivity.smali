.class public Lcom/keephealth/android/ui/device/activity/WristScreenActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "WristScreenActivity.java"


# instance fields
.field private endHour:I

.field private endMin:I

.field endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field itScreen:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027c
    .end annotation
.end field

.field layoutShow:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09031b
    .end annotation
.end field

.field private startHour:I

.field private startMin:I

.field startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field tvScreenEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b6
    .end annotation
.end field

.field tvScreenStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b7
    .end annotation
.end field

.field private upHander:Lcom/keephealth/android/model/bean/UpHander;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;[B)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->handlerScreenData([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startMin:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startMin:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)Lcom/keephealth/android/model/bean/UpHander;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endMin:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;I)I
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endMin:I

    return p1
.end method

.method private handlerScreenData([B)V
    .registers 6

    const/4 v0, 0x3

    .line 95
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_14

    move v2, v3

    :cond_14
    invoke-virtual {v1, v2}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveOnOff(Z)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveStartHour(I)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveStartMinute(I)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndHour(I)V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveEndMinute(I)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    const/16 v1, 0x8

    aget-byte p1, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/UpHander;->setLightTime(I)V

    .line 103
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startMin:I

    .line 105
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I

    .line 106
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endMin:I

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->itScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UpHander;->isEffectiveOnOff()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 109
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->updateRemindSwitch()V

    .line 110
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->initEvent()V

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveStartMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenStartTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UpHander;->getEffectiveEndMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 115
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->tvScreenEndTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initDatePicker()V
    .registers 3

    .line 157
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 158
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 178
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 179
    new-instance v1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->itScreen:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    return-void
.end method

.method private onSave()V
    .registers 4

    .line 73
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setScreenLight(Lcom/keephealth/android/model/bean/UpHander;)[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private updateRemindSwitch()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UpHander;->isEffectiveOnOff()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->layoutShow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_16

    .line 135
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->layoutShow:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_16
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c00a0

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 47
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->initDatePicker()V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100508

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/keephealth/android/model/bean/UpHander;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/UpHander;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    .line 54
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_SCREENLIGHT:[B

    new-instance v3, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method synthetic lambda$initEvent$1$com-keephealth-android-ui-device-activity-WristScreenActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 149
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->upHander:Lcom/keephealth/android/model/bean/UpHander;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UpHander;->setEffectiveOnOff(Z)V

    .line 150
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->updateRemindSwitch()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-WristScreenActivity(Landroid/view/View;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->onSave()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 141
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 142
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    .line 143
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    return-void
.end method

.method selecEndTime()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050a
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endHour:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endMin:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

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

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startHour:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startMin:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->show()V

    return-void
.end method
