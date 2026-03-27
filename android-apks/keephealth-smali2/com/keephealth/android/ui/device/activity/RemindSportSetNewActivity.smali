.class public Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "RemindSportSetNewActivity.java"


# instance fields
.field private final REQUEST_WEEKDAY_CODE:I

.field private endHour:I

.field private endHourInvalid:I

.field private endMin:I

.field private endMinInvalid:I

.field endTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field private isRemindNew:Z

.field layout:Landroid/widget/LinearLayout;

.field layoutInvalid:Landroid/widget/LinearLayout;

.field private longSit:Lcom/keephealth/android/model/bean/LongSit;

.field remindSportSetLLinvalid:Landroid/widget/LinearLayout;

.field remindSportSetLl:Landroid/widget/LinearLayout;

.field remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

.field remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;

.field rlRemindDelay:Landroid/widget/RelativeLayout;

.field rlRemindEndTime:Landroid/widget/RelativeLayout;

.field rlRemindEndTimeInvalid:Landroid/widget/RelativeLayout;

.field rlRemindStartTime:Landroid/widget/RelativeLayout;

.field rlRemindStartTimeInvalid:Landroid/widget/RelativeLayout;

.field rlRemindTime:Landroid/widget/RelativeLayout;

.field private startHour:I

.field private startHourInvalid:I

.field private startMin:I

.field private startMinInvalid:I

.field startTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field tvRemindDelay:Landroid/widget/TextView;

.field tvRemindEndTime:Landroid/widget/TextView;

.field tvRemindEndTimeInvalid:Landroid/widget/TextView;

.field tvRemindStartTime:Landroid/widget/TextView;

.field tvRemindStartTimeInvalid:Landroid/widget/TextView;

.field tvRemindTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->REQUEST_WEEKDAY_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;[B)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->handlerLongSitDataNew([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;[B)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->handlerLongSitData([B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMinInvalid:I

    return p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMinInvalid:I

    return p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Lcom/keephealth/android/model/bean/LongSit;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHourInvalid:I

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHourInvalid:I

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMinInvalid:I

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMinInvalid:I

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHourInvalid:I

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHourInvalid:I

    return p1
.end method

.method private handlerLongSitData([B)V
    .registers 11

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x3

    .line 145
    aget-byte v0, p1, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveOnOff(ZZ)V

    goto :goto_1b

    .line 148
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveOnOff(ZZ)V

    .line 150
    :goto_1b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/LongSit;->isEffectiveOnOff()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartHour(I)V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/4 v3, 0x5

    aget-byte v4, p1, v3

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndHour(I)V

    const/4 v0, 0x7

    .line 153
    new-array v4, v0, [Z

    const/4 v5, 0x6

    .line 154
    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v5

    move v6, v2

    .line 155
    :goto_4d
    array-length v7, v5

    if-ge v6, v7, :cond_5e

    add-int/lit8 v7, v6, -0x1

    .line 156
    aget-byte v8, v5, v6

    if-eqz v8, :cond_58

    move v8, v2

    goto :goto_59

    :cond_58
    move v8, v1

    :goto_59
    aput-boolean v8, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 158
    :cond_5e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    invoke-virtual {v1, v4, v2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveWeeksEff([ZZ)V

    .line 159
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    aget-byte p1, p1, v0

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    mul-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lcom/keephealth/android/model/bean/LongSit;->setInterval(I)V

    .line 161
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I

    .line 162
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I

    .line 163
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I

    .line 166
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->updateRemindSwitch()V

    .line 167
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initEvent()V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveWeeksEff()[Z

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->setWeeksString([Z)V

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p1

    if-nez p1, :cond_b9

    .line 170
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindDelay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e6

    .line 172
    :cond_b9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindDelay:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100387

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_e6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handlerLongSitDataNew([B)V
    .registers 10

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x7

    .line 182
    new-array v2, v0, [Z

    const/4 v3, 0x3

    .line 183
    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v3

    move v4, v1

    .line 184
    :goto_15
    array-length v5, v3

    const/4 v6, 0x1

    if-ge v4, v5, :cond_41

    if-nez v4, :cond_34

    .line 186
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    aget-byte v7, v3, v4

    if-ne v7, v6, :cond_22

    goto :goto_23

    :cond_22
    move v6, v1

    :goto_23
    iget-boolean v7, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    invoke-virtual {v5, v6, v7}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveOnOff(ZZ)V

    .line 187
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/LongSit;->isEffectiveOnOff()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_3e

    :cond_34
    add-int/lit8 v5, v4, -0x1

    .line 189
    aget-byte v7, v3, v4

    if-eqz v7, :cond_3b

    goto :goto_3c

    :cond_3b
    move v6, v1

    :goto_3c
    aput-boolean v6, v2, v5

    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 192
    :cond_41
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v4, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    invoke-virtual {v3, v2, v4}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveWeeksEff([ZZ)V

    .line 193
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartHour(I)V

    .line 194
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/4 v3, 0x5

    aget-byte v4, p1, v3

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartMinute(I)V

    .line 195
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndHour(I)V

    .line 196
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndMinute(I)V

    const/16 v0, 0x8

    .line 197
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v0

    .line 198
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    aget-byte v0, v0, v1

    if-ne v0, v6, :cond_8a

    move v1, v6

    :cond_8a
    invoke-virtual {v2, v1}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidOnOff(Z)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->isInvalidOnOff()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidStartHour(I)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidStartMinute(I)V

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidEndHour(I)V

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/16 v1, 0xc

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidEndMinute(I)V

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/16 v1, 0xd

    aget-byte p1, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    mul-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/LongSit;->setInterval(I)V

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHour:I

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMin:I

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHour:I

    .line 209
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMin:I

    .line 211
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidStartHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startHourInvalid:I

    .line 212
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidStartMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startMinInvalid:I

    .line 213
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidEndHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endHourInvalid:I

    .line 214
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidEndMinute()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endMinInvalid:I

    .line 215
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->updateRemindSwitch()V

    .line 216
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initEvent()V

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveWeeksEff()[Z

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->setWeeksString([Z)V

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p1

    if-nez p1, :cond_142

    .line 219
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindDelay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16f

    .line 221
    :cond_142
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindDelay:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100387

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_16f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidStartMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 229
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTimeInvalid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getInvalidEndMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTimeInvalid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initDatePicker()V
    .registers 3

    .line 402
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 403
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 444
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->startTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 445
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 477
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 478
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 514
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->endTimeInvalidPickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 515
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 288
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    return-void
.end method

.method private initListener()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindStartTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindEndTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindStartTimeInvalid:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindEndTimeInvalid:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindDelay:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindTime:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onSave()V
    .registers 5

    .line 296
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    if-eqz v0, :cond_b

    .line 297
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setLongSitNew(Lcom/keephealth/android/model/bean/LongSit;)[B

    move-result-object v0

    goto :goto_11

    .line 299
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setLongSit(Lcom/keephealth/android/model/bean/LongSit;)[B

    move-result-object v0

    .line 301
    :goto_11
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private setWeeksString([Z)V
    .registers 9

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 240
    :goto_13
    array-length v5, p1

    if-ge v3, v5, :cond_3f

    const/4 v5, 0x6

    .line 241
    const-string v6, " "

    if-ne v3, v5, :cond_2b

    .line 242
    aget-boolean v5, p1, v3

    if-eqz v5, :cond_3c

    add-int/lit8 v4, v4, 0x1

    .line 244
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 247
    :cond_2b
    aget-boolean v5, p1, v3

    if-eqz v5, :cond_3c

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 249
    aget-object v5, v1, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_3f
    if-lez v4, :cond_69

    const/4 p1, 0x7

    if-ne v4, p1, :cond_55

    .line 255
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 257
    :cond_55
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 260
    :cond_69
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_79
    return-void
.end method

.method private updateRemindSwitch()V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->isEffectiveOnOff()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2d

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSetLl:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    if-eqz v0, :cond_37

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->isInvalidOnOff()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSetLLinvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_37

    .line 273
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSetLLinvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_37

    .line 277
    :cond_2d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSetLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c007a

    return v0
.end method

.method public initView()V
    .registers 11

    const v0, 0x7f0904bd

    .line 75
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0904be

    .line 76
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;

    const v0, 0x7f0904bb

    .line 77
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSetLl:Landroid/widget/LinearLayout;

    const v0, 0x7f0904bc

    .line 78
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->remindSportSetLLinvalid:Landroid/widget/LinearLayout;

    const v0, 0x7f09030b

    .line 79
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    const v0, 0x7f0902fb

    .line 80
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layout:Landroid/widget/LinearLayout;

    const v0, 0x7f090509

    .line 81
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindDelay:Landroid/widget/RelativeLayout;

    const v0, 0x7f0906ad

    .line 82
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindDelay:Landroid/widget/TextView;

    const v0, 0x7f09050e

    .line 83
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindTime:Landroid/widget/RelativeLayout;

    const v0, 0x7f0906b2

    .line 84
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindTime:Landroid/widget/TextView;

    const v0, 0x7f0906b0

    .line 85
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTime:Landroid/widget/TextView;

    const v0, 0x7f0906ae

    .line 86
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTime:Landroid/widget/TextView;

    const v0, 0x7f0906b1

    .line 87
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindStartTimeInvalid:Landroid/widget/TextView;

    const v0, 0x7f0906af

    .line 88
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->tvRemindEndTimeInvalid:Landroid/widget/TextView;

    const v0, 0x7f09050c

    .line 89
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindStartTime:Landroid/widget/RelativeLayout;

    const v0, 0x7f09050a

    .line 90
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindEndTime:Landroid/widget/RelativeLayout;

    const v0, 0x7f09050d

    .line 91
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindStartTimeInvalid:Landroid/widget/RelativeLayout;

    const v0, 0x7f09050b

    .line 92
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rlRemindEndTimeInvalid:Landroid/widget/RelativeLayout;

    .line 93
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initDatePicker()V

    .line 95
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d8

    .line 97
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminderB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    goto :goto_f1

    .line 99
    :cond_d8
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 100
    iget-object v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v3, :cond_ee

    const-string v3, "A01WP6T2\u3001A01WP6N2\u3001A01WP6T7"

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ee

    move v0, v1

    goto :goto_ef

    :cond_ee
    move v0, v2

    :goto_ef
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    .line 102
    :goto_f1
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100508

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->rightText:Landroid/widget/Button;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Lcom/keephealth/android/model/bean/LongSit;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/LongSit;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    .line 108
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    if-eqz v0, :cond_133

    .line 109
    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_LONGSIT_NEW:[B

    .line 110
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_13c

    .line 112
    :cond_133
    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_LONGSIT:[B

    .line 113
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_13c
    move-object v6, v0

    const/16 v0, 0x1d

    .line 115
    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 116
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v8, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v9, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;)V

    invoke-virtual/range {v4 .. v9}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 139
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->initListener()V

    return-void
.end method

.method synthetic lambda$initEvent$1$com-keephealth-android-ui-device-activity-RemindSportSetNewActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 4

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveOnOff(ZZ)V

    .line 286
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->updateRemindSwitch()V

    return-void
.end method

.method synthetic lambda$initEvent$2$com-keephealth-android-ui-device-activity-RemindSportSetNewActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 289
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidOnOff(Z)V

    .line 290
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->updateRemindSwitch()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-RemindSportSetNewActivity(Landroid/view/View;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->onSave()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_b

    goto :goto_2b

    .line 393
    :cond_b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "isSelect"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p2

    iget-boolean p3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->isRemindNew:Z

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveWeeksEff([ZZ)V

    .line 394
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveWeeksEff()[Z

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->setWeeksString([Z)V

    :goto_2b
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 548
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 549
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 550
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method
