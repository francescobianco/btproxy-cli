.class public Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "RemindSportSetActivity.java"


# instance fields
.field private final REQUEST_WEEKDAY_CODE:I

.field private dalayTtime:I

.field private delayTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field private endHour:I

.field private endTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field private isRemindNew:Z

.field layout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fb
    .end annotation
.end field

.field layoutInvalid:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09030b
    .end annotation
.end field

.field private longSit:Lcom/keephealth/android/model/bean/LongSit;

.field private pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private pvStartPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field remindSportSetLLinvalid:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904bc
    .end annotation
.end field

.field remindSportSetLl:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904bb
    .end annotation
.end field

.field remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904bd
    .end annotation
.end field

.field remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904be
    .end annotation
.end field

.field rlRemindDelay:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090509
    .end annotation
.end field

.field rlRemindTime:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09050e
    .end annotation
.end field

.field private startHour:I

.field private startTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field tvRemindDelay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ad
    .end annotation
.end field

.field tvRemindEndTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ae
    .end annotation
.end field

.field tvRemindEndTimeInvalid:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906af
    .end annotation
.end field

.field tvRemindStartTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b0
    .end annotation
.end field

.field tvRemindStartTimeInvalid:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b1
    .end annotation
.end field

.field tvRemindTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906b2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startTime:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endTime:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->delayTime:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->REQUEST_WEEKDAY_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;[B)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->handlerLongSitDataNew([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;[B)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->handlerLongSitData([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private handlerLongSitData([B)V
    .registers 11

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x3

    .line 144
    aget-byte v0, p1, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    invoke-virtual {v0, v2, v3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveOnOff(ZZ)V

    goto :goto_1b

    .line 147
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveOnOff(ZZ)V

    .line 149
    :goto_1b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/LongSit;->isEffectiveOnOff()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartHour(I)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    const/4 v3, 0x5

    aget-byte v4, p1, v3

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndHour(I)V

    const/4 v0, 0x7

    .line 152
    new-array v4, v0, [Z

    const/4 v5, 0x6

    .line 153
    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v5

    move v6, v2

    .line 154
    :goto_4d
    array-length v7, v5

    if-ge v6, v7, :cond_5e

    add-int/lit8 v7, v6, -0x1

    .line 155
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

    .line 157
    :cond_5e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "handlerLongSitData: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    invoke-virtual {v1, v4, v2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveWeeksEff([ZZ)V

    .line 159
    aget-byte p1, p1, v0

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    mul-int/2addr p1, v3

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->dalayTtime:I

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/LongSit;->setInterval(I)V

    .line 162
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveStartHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    .line 163
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveEndHour()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    .line 165
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->updateRemindSwitch()V

    .line 166
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->initEvent()V

    .line 167
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveWeeksEff()[Z

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->setWeeksString([Z)V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p1

    if-nez p1, :cond_c8

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindDelay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f5

    .line 171
    :cond_c8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindDelay:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100387

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_f5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindStartTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    const/16 v0, 0x18

    if-ne p1, v0, :cond_12d

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    const-string v0, "00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_153

    .line 177
    :cond_12d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_153
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->initCustomPerimeterPicker()V

    return-void
.end method

.method private handlerLongSitDataNew([B)V
    .registers 2

    return-void
.end method

.method private initCustomPerimeterPicker()V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x18

    if-ge v1, v2, :cond_36

    .line 194
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startTime:Ljava/util/ArrayList;

    new-instance v3, Lcom/keephealth/android/model/bean/CardBean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    move v1, v0

    :goto_37
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4e

    .line 197
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->delayTime:Ljava/util/ArrayList;

    new-instance v3, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_37

    .line 199
    :cond_4e
    new-instance v1, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-direct {v1, p0, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    const v4, 0x7f0c0188

    .line 213
    invoke-virtual {v1, v4, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    const/4 v3, 0x1

    .line 221
    invoke-virtual {v1, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    const/high16 v5, 0x40000000    # 2.0f

    .line 222
    invoke-virtual {v1, v5}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    const v6, -0x333334

    .line 224
    invoke-virtual {v1, v6}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    iget v7, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    .line 225
    invoke-virtual {v1, v7}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setSelectOptions(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvStartPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 227
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startTime:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    .line 229
    new-instance v1, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v7, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda14;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-direct {v1, p0, v7}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v7, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    .line 233
    invoke-virtual {v1, v4, v7}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v5}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v1

    .line 244
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v7

    div-int/lit8 v7, v7, 0xf

    if-le v7, v2, :cond_b5

    goto :goto_be

    :cond_b5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result v0

    div-int/lit8 v0, v0, 0xf

    sub-int/2addr v0, v3

    :goto_be
    invoke-virtual {v1, v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setSelectOptions(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v6}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 247
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->delayTime:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    .line 249
    new-instance v0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    .line 258
    invoke-virtual {v0, v4, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v5}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v6}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSwitch:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSwitchInvalid:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    return-void
.end method

.method private onSave()V
    .registers 5

    .line 334
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setLongSitNew(Lcom/keephealth/android/model/bean/LongSit;)[B

    move-result-object v0

    goto :goto_11

    .line 337
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setLongSit(Lcom/keephealth/android/model/bean/LongSit;)[B

    move-result-object v0

    .line 339
    :goto_11
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$2;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method private setWeeksString([Z)V
    .registers 9

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 278
    :goto_13
    array-length v5, p1

    if-ge v3, v5, :cond_3f

    const/4 v5, 0x6

    .line 279
    const-string v6, ","

    if-ne v3, v5, :cond_2b

    .line 280
    aget-boolean v5, p1, v3

    if-eqz v5, :cond_3c

    add-int/lit8 v4, v4, 0x1

    .line 282
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 285
    :cond_2b
    aget-boolean v5, p1, v3

    if-eqz v5, :cond_3c

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 287
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

    .line 293
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 295
    :cond_55
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 298
    :cond_69
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

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

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->isEffectiveOnOff()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2d

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLl:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    if-eqz v0, :cond_37

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LongSit;->isInvalidOnOff()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLLinvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_37

    .line 311
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLLinvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_37

    .line 315
    :cond_2d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->remindSportSetLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method SelectRemindDelay()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090509
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method SelectRemindTime()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050e
        }
    .end annotation

    .line 394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveWeeksEff()[Z

    move-result-object v1

    const-string v2, "isSelect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 396
    const-class v1, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c007a

    return v0
.end method

.method public initView()V
    .registers 11

    .line 97
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 99
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminderB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    goto :goto_28

    .line 101
    :cond_f
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 102
    iget-object v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v3, :cond_25

    const-string v3, "A01WP6T2\u3001A01WP6N2\u3001A01WP6T7"

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    .line 104
    :goto_28
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100508

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->rightText:Landroid/widget/Button;

    new-instance v3, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Lcom/keephealth/android/model/bean/LongSit;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/LongSit;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    .line 110
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    if-eqz v0, :cond_6a

    .line 111
    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_LONGSIT_NEW:[B

    .line 112
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_73

    .line 114
    :cond_6a
    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->CMD_GET_LONGSIT:[B

    .line 115
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->layoutInvalid:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_73
    move-object v6, v0

    const/16 v0, 0x1c

    .line 117
    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 118
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v8, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v9, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$1;

    invoke-direct {v9, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual/range {v4 .. v9}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$1$com-keephealth-android-ui-device-activity-RemindSportSetActivity(IIILandroid/view/View;)V
    .registers 7

    .line 201
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindStartTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget p4, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "%02d"

    invoke-static {p3, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":00"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    if-gt p1, p2, :cond_68

    add-int/lit8 p2, p2, 0x1

    .line 204
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    const/16 p1, 0x18

    if-ne p2, p1, :cond_42

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    const-string p2, "00:00"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 208
    :cond_42
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveStartHour(I)V

    .line 212
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndHour(I)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$10$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 2

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$11$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 2

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$12$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 261
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$2$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 2

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvStartPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvStartPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$3$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 2

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvStartPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$4$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 216
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$5$com-keephealth-android-ui-device-activity-RemindSportSetActivity(IIILandroid/view/View;)V
    .registers 5

    .line 231
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0xf

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/LongSit;->setInterval(I)V

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindDelay:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/LongSit;->getInterval()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f100387

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$6$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 2

    .line 237
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 238
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$7$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 2

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvDelayPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$8$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 236
    new-instance v1, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$9$com-keephealth-android-ui-device-activity-RemindSportSetActivity(IIILandroid/view/View;)V
    .registers 6

    .line 251
    iget p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    .line 252
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveEndHour(I)V

    .line 253
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    const/16 p2, 0x18

    if-ne p1, p2, :cond_1a

    .line 254
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    const-string p2, "00:00"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 256
    :cond_1a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->tvRemindEndTime:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget p4, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "%02d"

    invoke-static {p3, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":00"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_44
    return-void
.end method

.method synthetic lambda$initEvent$13$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 4

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveOnOff(ZZ)V

    .line 324
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->updateRemindSwitch()V

    return-void
.end method

.method synthetic lambda$initEvent$14$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 327
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/LongSit;->setInvalidOnOff(Z)V

    .line 328
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->updateRemindSwitch()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-RemindSportSetActivity(Landroid/view/View;)V
    .registers 2

    .line 107
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->onSave()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 401
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_b

    goto :goto_2b

    .line 405
    :cond_b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "isSelect"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p2

    iget-boolean p3, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->isRemindNew:Z

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/model/bean/LongSit;->setEffectiveWeeksEff([ZZ)V

    .line 406
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->longSit:Lcom/keephealth/android/model/bean/LongSit;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LongSit;->getEffectiveWeeksEff()[Z

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->setWeeksString([Z)V

    :goto_2b
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 415
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 416
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 417
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method selecEndTime()V
    .registers 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050a
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 366
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    :goto_7
    const/16 v1, 0x18

    if-ge v0, v1, :cond_4e

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1c

    .line 368
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endTime:Ljava/util/ArrayList;

    new-instance v2, Lcom/keephealth/android/model/bean/CardBean;

    const-string v3, "00:00"

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 370
    :cond_1c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endTime:Ljava/util/ArrayList;

    new-instance v2, Lcom/keephealth/android/model/bean/CardBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 373
    :cond_4e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endHour:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->startHour:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setSelectOptions(I)V

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->endTime:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvEndPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method selecEndTimeInvalid()V
    .registers 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050b
        }
    .end annotation

    return-void
.end method

.method selecStatrTime()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050c
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;->pvStartPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method selecStatrTimeInvalid()V
    .registers 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09050d
        }
    .end annotation

    return-void
.end method
