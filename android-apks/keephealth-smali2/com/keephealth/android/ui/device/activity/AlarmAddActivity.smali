.class public Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "AlarmAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final REQUEST_REMIND_CODE:I

.field private final REQUEST_WEEKDAY_CODE:I

.field private activity:Landroid/app/Activity;

.field private alarm:Lcom/keephealth/android/model/bean/Alarm;

.field private alartTypesTwo:[Ljava/lang/String;

.field private amOrpm:[Ljava/lang/String;

.field binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

.field private is24:Z

.field private isUpdate:Z

.field private tempAlarm:[Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x7

    .line 35
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->tempAlarm:[Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->isUpdate:Z

    const/4 v1, 0x0

    .line 121
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->REQUEST_WEEKDAY_CODE:I

    .line 122
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->REQUEST_REMIND_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)Landroid/app/Activity;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)Lcom/keephealth/android/model/bean/Alarm;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    return-object p0
.end method

.method private changeTimeZ()V
    .registers 6

    .line 173
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_b6

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_4d

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v0

    if-ne v0, v1, :cond_43

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    goto :goto_76

    .line 182
    :cond_43
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    goto :goto_76

    .line 185
    :cond_4d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_5d

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    goto :goto_76

    .line 188
    :cond_5d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    if-ge v2, v1, :cond_6d

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_73

    :cond_6d
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    :goto_73
    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    .line 192
    :goto_76
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setAlarmTime()V

    .line 193
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setWheelListener()V

    .line 196
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    if-eqz v0, :cond_96

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmMinute()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILandroid/app/Activity;)V

    goto :goto_b6

    .line 199
    :cond_96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    rem-int/2addr v2, v1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmMinute()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->amOrpm:[Ljava/lang/String;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v4, v4, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v4}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILjava/lang/String;)V

    :cond_b6
    :goto_b6
    return-void
.end method

.method private initEvent()V
    .registers 4

    .line 237
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->toBack()V

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100508

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setAlarmTime()V
    .registers 7

    .line 207
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setVisibility(I)V

    goto :goto_3f

    .line 210
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/WheelView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->amOrpm:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/TimeUtil;->isAM(I)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 217
    :goto_3f
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    const-string v3, "%02d"

    if-eqz v0, :cond_54

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v4, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v5, 0x17

    invoke-direct {v4, v2, v5, v3}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    goto :goto_62

    .line 220
    :cond_54
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v4, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v5, 0xc

    invoke-direct {v4, v1, v5, v3}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 222
    :goto_62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    iget-boolean v4, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    if-eqz v4, :cond_71

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v4

    goto :goto_7c

    :cond_71
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/TimeUtil;->format24To12(I)I

    move-result v4

    sub-int/2addr v4, v1

    :goto_7c
    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v4, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;

    const/16 v5, 0x3b

    invoke-direct {v4, v2, v5, v3}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmMinute()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->setCyclic(Z)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->point:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v3, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, ":"

    aput-object v5, v4, v2

    invoke-direct {v3, v4, v1}, Lcom/keephealth/android/views/wheel/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/wheel/WheelView;->setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->point:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/WheelView;->setClickable(Z)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->point:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/wheel/WheelView;->setEnabled(Z)V

    return-void
.end method

.method private setWeek([Z)V
    .registers 11

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eqz p1, :cond_5f

    .line 95
    array-length v4, p1

    if-lt v4, v2, :cond_5f

    move v4, v3

    move v5, v4

    .line 96
    :goto_19
    array-length v6, p1

    if-ge v4, v6, :cond_60

    const/4 v6, 0x6

    .line 97
    const-string v7, ","

    if-ne v4, v6, :cond_3e

    .line 98
    aget-boolean v6, p1, v4

    if-eqz v6, :cond_5c

    add-int/lit8 v5, v5, 0x1

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    .line 103
    :cond_3e
    aget-boolean v6, p1, v4

    if-eqz v6, :cond_5c

    add-int/lit8 v5, v5, 0x1

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v4, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5c
    :goto_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_5f
    move v5, v3

    :cond_60
    if-lez v5, :cond_8d

    if-ne v5, v2, :cond_77

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvAlarmRepeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    .line 114
    :cond_77
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvAlarmRepeat:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9f

    .line 117
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvAlarmRepeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9f
    return-void
.end method

.method private setWheelListener()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    .line 297
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/wheel/WheelView;->addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedListener;)V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 125
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->rlAlarmRemind:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->rlAlarmRepeat:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initView()V
    .registers 5

    .line 48
    iput-object p0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    .line 50
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/Alarm;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    const v1, 0x7f100124

    const/4 v2, 0x0

    if-nez v0, :cond_59

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v0, Lcom/keephealth/android/model/bean/Alarm;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/Alarm;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    .line 56
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmMinute(I)V

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmType(I)V

    .line 58
    iput-boolean v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->isUpdate:Z

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvDelete:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_74

    .line 61
    :cond_59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->isUpdate:Z

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_74
    invoke-static {p0}, Lcom/keephealth/android/util/AlarmUtil;->getAlarmTexts(Landroid/app/Activity;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alartTypesTwo:[Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setWeek([Z)V

    .line 70
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->amOrpm:[Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmMinute()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILandroid/app/Activity;)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setAlarmTime()V

    .line 75
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setWheelListener()V

    .line 76
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->initEvent()V

    .line 78
    :try_start_b6
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvAlarmRemind:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alartTypesTwo:[Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_c7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b6 .. :try_end_c7} :catch_c7

    .line 82
    :catch_c7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initEvent$0$com-keephealth-android-ui-device-activity-AlarmAddActivity(Landroid/view/View;)V
    .registers 5

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_86

    .line 243
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_67

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_3e

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v0

    if-ne v0, v1, :cond_34

    .line 247
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    goto :goto_67

    .line 249
    :cond_34
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    goto :goto_67

    .line 252
    :cond_3e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_4e

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    goto :goto_67

    .line 255
    :cond_4e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    if-ge v2, v1, :cond_5e

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_64

    :cond_5e
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v2

    :goto_64
    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    .line 259
    :cond_67
    :goto_67
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 260
    const-string v0, "showWeeks"

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->tempAlarm:[Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 261
    const-string v0, "isUpdate"

    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->isUpdate:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 262
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setResult(ILandroid/content/Intent;)V

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_86
    return-void
.end method

.method synthetic lambda$setWheelListener$1$com-keephealth-android-ui-device-activity-AlarmAddActivity(Lcom/keephealth/android/views/wheel/WheelView;II)V
    .registers 6

    .line 271
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result p1

    .line 272
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result p2

    .line 273
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    if-eqz v0, :cond_1e

    .line 274
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p3, p3, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p3, p1, p2, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILandroid/app/Activity;)V

    goto :goto_32

    :cond_1e
    add-int/lit8 p1, p1, 0x1

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v0, p3}, Lcom/keephealth/android/views/wheel/WheelView;->setCurrentItem(I)V

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->amOrpm:[Ljava/lang/String;

    aget-object p3, v1, p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILjava/lang/String;)V

    .line 280
    :goto_32
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p3, p1}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    .line 281
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmMinute(I)V

    return-void
.end method

.method synthetic lambda$setWheelListener$2$com-keephealth-android-ui-device-activity-AlarmAddActivity(Lcom/keephealth/android/views/wheel/WheelView;II)V
    .registers 6

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result p1

    .line 287
    iget-boolean p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    if-eqz p2, :cond_16

    .line 288
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p3, p1, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILandroid/app/Activity;)V

    goto :goto_2b

    :cond_16
    add-int/lit8 p3, p3, 0x1

    .line 291
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->amOrpm:[Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, p3, p1, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILjava/lang/String;)V

    .line 293
    :goto_2b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p2, p3}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    .line 294
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmMinute(I)V

    return-void
.end method

.method synthetic lambda$setWheelListener$3$com-keephealth-android-ui-device-activity-AlarmAddActivity(Lcom/keephealth/android/views/wheel/WheelView;II)V
    .registers 6

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result p1

    .line 300
    iget-boolean p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->is24:Z

    if-eqz p2, :cond_16

    .line 301
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1, p3, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILandroid/app/Activity;)V

    goto :goto_2b

    :cond_16
    add-int/lit8 p1, p1, 0x1

    .line 304
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->timeAlarmSet:Lcom/keephealth/android/views/ItemNewAlarmSet;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->amOrpm:[Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->alarmSetAmPm:Lcom/keephealth/android/views/wheel/WheelView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/WheelView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, p1, p3, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->setAlartTime(IILjava/lang/String;)V

    .line 306
    :goto_2b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    .line 307
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmMinute(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_35

    const/4 p2, 0x1

    if-eq p1, p2, :cond_e

    goto :goto_53

    .line 154
    :cond_e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "iPosition"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmType(I)V

    .line 155
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->binding:Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityNewAlarmSetBinding;->tvAlarmRemind:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alartTypesTwo:[Ljava/lang/String;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmType()I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 150
    :cond_35
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "isSelect"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/Alarm;->setWeekRepeat([Z)V

    .line 151
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->alarm:Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->setWeek([Z)V

    :goto_53
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 168
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;->changeTimeZ()V

    return-void
.end method
