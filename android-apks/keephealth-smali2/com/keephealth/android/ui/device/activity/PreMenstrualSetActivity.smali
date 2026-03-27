.class public Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "PreMenstrualSetActivity.java"


# instance fields
.field btnSend:Landroid/widget/Button;

.field private cDate:[I

.field private calendar:Ljava/util/Calendar;

.field private cardItemCycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field private cardItemPerimeter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field private day:I

.field private dura:I

.field private duraCus:I

.field private from:I

.field private lastNextMunalEndDay:I

.field private lastNextMunalEndMonth:I

.field private lastNextMunalEndYear:I

.field llStartData:Landroid/widget/LinearLayout;

.field private menstrual:I

.field private menstrualMax:I

.field private month:I

.field private munalNumber:I

.field ninetyDaysAfter:Ljava/util/Calendar;

.field oneEightyDaysBefore:Ljava/util/Calendar;

.field private perimeter:I

.field private perimeterCus:I

.field private preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

.field preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

.field private pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

.field private pvCustomPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private selectedDate:Ljava/util/Calendar;

.field tvSelectCycle:Landroid/widget/TextView;

.field tvSelectPerimeter:Landroid/widget/TextView;

.field tvTips1:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field txtSelectDate:Landroid/widget/TextView;

.field womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 47
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getCurrentDate()[I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    const/4 v0, 0x5

    .line 48
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    const/16 v0, 0x1c

    .line 49
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    const/16 v0, 0xc

    .line 50
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->selectedDate:Ljava/util/Calendar;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemCycle:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    .line 64
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    .line 363
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    return-void
.end method

.method private initCustomCyclePicker()V
    .registers 7

    .line 274
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    const-string v1, "6t6t5g"

    const/16 v2, 0xc

    if-le v0, v2, :cond_f

    .line 275
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    .line 276
    const-string v0, "= 12  333333"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10076b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_51

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    goto :goto_5c

    :cond_51
    const/16 v3, 0x14

    if-lt v0, v3, :cond_5c

    .line 283
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    .line 284
    const-string v0, "= 12  2222"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_5c
    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "menstrual:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrual:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 287
    :goto_71
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    if-gt v0, v1, :cond_88

    .line 288
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v2, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v3, v0, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 290
    :cond_88
    new-instance v0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda6;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    const v2, 0x7f0c0188

    .line 294
    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 304
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 305
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const v1, -0x333334

    .line 307
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->duraCus:I

    add-int/lit8 v1, v1, -0x3

    .line 308
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setSelectOptions(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 310
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemCycle:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    return-void
.end method

.method private initCustomPerimeterPicker()V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dura:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrert46r"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-lt v0, v1, :cond_39

    :goto_22
    const/16 v0, 0x28

    if-gt v2, v0, :cond_86

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v3, v2, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_39
    const/16 v1, 0xe

    if-ne v0, v1, :cond_54

    :goto_3d
    const/16 v0, 0x29

    if-gt v2, v0, :cond_86

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v3, v2, 0x13

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_54
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6f

    :goto_58
    const/16 v0, 0x2a

    if-gt v2, v0, :cond_86

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v3, v2, 0x12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_6f
    :goto_6f
    const/16 v0, 0x2b

    if-gt v2, v0, :cond_86

    .line 331
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v3, v2, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 334
    :cond_86
    new-instance v0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda5;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    const v2, 0x7f0c0188

    .line 339
    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 356
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 357
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const v1, -0x333334

    .line 358
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeterCus:I

    add-int/lit8 v1, v1, -0x11

    .line 359
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setSelectOptions(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 361
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    return-void
.end method

.method private initLunarPicker()V
    .registers 10

    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0xb4

    .line 221
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 223
    new-instance v1, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda7;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->selectedDate:Ljava/util/Calendar;

    .line 253
    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setDate(Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->selectedDate:Ljava/util/Calendar;

    .line 254
    invoke-virtual {v1, v0, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setRangDate(Ljava/util/Calendar;Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda8;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    const v2, 0x7f0c0187

    .line 255
    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 264
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Z

    fill-array-data v1, :array_78

    .line 265
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setType([Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 266
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f10041a

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1001dc

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    const-string v8, ""

    const-string v6, ""

    invoke-virtual/range {v2 .. v8}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 268
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->isCenterLabel(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const v1, -0x333334

    .line 269
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->build()Lcom/bigkoo/pickerview/view/TimePickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    return-void

    nop

    :array_78
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0072

    return v0
.end method

.method protected initView()V
    .registers 13

    .line 72
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const v0, 0x7f09079b

    .line 73
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->txtSelectDate:Landroid/widget/TextView;

    const v0, 0x7f0906b9

    .line 74
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectCycle:Landroid/widget/TextView;

    const v0, 0x7f0906ba

    .line 75
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    const v0, 0x7f0906fc

    .line 76
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0903a2

    .line 77
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->llStartData:Landroid/widget/LinearLayout;

    const v0, 0x7f0906f7

    .line 78
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvTips1:Landroid/widget/TextView;

    const v0, 0x7f0900b3

    .line 79
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->btnSend:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->titleName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->bgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lastNextMunalEndYear"

    const/16 v4, 0x7e9

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->lastNextMunalEndYear:I

    .line 83
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lastNextMunalEndMonth"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->lastNextMunalEndMonth:I

    .line 84
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lastNextMunalEndDay"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->lastNextMunalEndDay:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bean == null-----\u6700\u540e\u4e00\u4e2a\u7ecf\u671f\u7684\u5f00\u59cb\u65e5:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->lastNextMunalEndYear:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->lastNextMunalEndMonth:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->lastNextMunalEndDay:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "6t6t6g"

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 89
    const-string v6, "from"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->from:I

    .line 91
    :cond_c3
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->from:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-ne v0, v4, :cond_1c5

    .line 92
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    const/16 v0, 0x1c

    .line 93
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    .line 94
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1007d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->llStartData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvTips1:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, -0x5

    .line 102
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v2, v2, v9

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->add(II)V

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v3

    const/16 v2, 0x1e

    if-le v0, v2, :cond_153

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_1a9

    .line 115
    :cond_153
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v3

    const/16 v2, 0x3c

    if-le v0, v2, :cond_164

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1a9

    .line 117
    :cond_164
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v3

    const/16 v2, 0x5a

    if-le v0, v2, :cond_175

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_1a9

    .line 119
    :cond_175
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v3

    const/16 v2, 0x78

    if-le v0, v2, :cond_186

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1a9

    .line 121
    :cond_186
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v3

    const/16 v2, 0x96

    if-le v0, v2, :cond_198

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v9, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1a9

    .line 123
    :cond_198
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v3

    const/16 v2, 0xb4

    if-le v0, v2, :cond_1a9

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v0, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 126
    :cond_1a9
    :goto_1a9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "preMenstrual.getMenstrualCycle():"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "t6t56t"

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26b

    :cond_1c5
    if-ne v0, v9, :cond_26b

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 130
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1007d1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->llStartData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvTips1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "year"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->year:I

    .line 136
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "month"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->month:I

    .line 137
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "day"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->day:I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bean == null-----scroll:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->year:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->day:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_26b
    :goto_26b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02d"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1007e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v3, v3, v4

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f10041a

    .line 145
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v3, v3, v9

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f1001dc

    .line 147
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->txtSelectDate:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->txtSelectDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->txtSelectDate:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const-string v0, "dura"

    invoke-static {v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->duraCus:I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duraCus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->duraCus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6t6t9yg"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->duraCus:I

    const v1, 0x7f10076b

    if-nez v0, :cond_345

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectCycle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iput v8, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->duraCus:I

    goto :goto_365

    .line 158
    :cond_345
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectCycle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->duraCus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_365
    const-string v0, "perimeter"

    invoke-static {v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeterCus:I

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectCycle:Landroid/widget/TextView;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeterCus:I

    if-nez v0, :cond_39c

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3bc

    .line 181
    :cond_39c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeterCus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_3bc
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->initLunarPicker()V

    .line 207
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->initCustomCyclePicker()V

    .line 208
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->initCustomPerimeterPicker()V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->munalNumber:I

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->btnSend:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$10$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 296
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 297
    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda13;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda14;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$7$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(IIILandroid/view/View;)V
    .registers 5

    .line 292
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemCycle:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CardBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CardBean;->getCardName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    .line 293
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectCycle:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f10076b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$8$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 2

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 299
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$9$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 2

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$11$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(IIILandroid/view/View;)V
    .registers 5

    .line 336
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CardBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/CardBean;->getCardName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "perimeter:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "t6t5rt"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f10076b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$12$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 3

    .line 343
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    .line 345
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1e

    const/16 p1, 0xc

    .line 347
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    .line 348
    const-string p1, "6t6t5g"

    const-string v0, "= 12  1111"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_1e
    add-int/lit8 p1, p1, -0x8

    .line 350
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    .line 352
    :goto_22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "menstrualMax11:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "t6t5rt"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$13$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 2

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initCustomPerimeterPicker$14$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 340
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 342
    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda9;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    new-instance v0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda10;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initLunarPicker$3$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Ljava/util/Date;Landroid/view/View;)V
    .registers 9

    .line 224
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->selectedDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x0

    aput p2, p1, v1

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->selectedDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v0

    aput p2, p1, v0

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->selectedDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    aput p2, p1, v2

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->txtSelectDate:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v1, v4, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1007e8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02d"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v1, 0x7f10041a

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v1, 0x7f1001dc

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, -0x5

    .line 233
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 234
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    .line 238
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p2

    const/4 v0, 0x3

    mul-int/2addr p2, v0

    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->add(II)V

    .line 239
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/2addr p1, v0

    const/16 p2, 0x1e

    if-le p1, p2, :cond_c9

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {p1, v2, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_120

    .line 241
    :cond_c9
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/2addr p1, v0

    const/16 p2, 0x3c

    if-le p1, p2, :cond_da

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_120

    .line 243
    :cond_da
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/2addr p1, v0

    const/16 p2, 0x5a

    if-le p1, p2, :cond_ec

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 p2, 0x4

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_120

    .line 245
    :cond_ec
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/2addr p1, v0

    const/16 p2, 0x78

    if-le p1, p2, :cond_fd

    .line 246
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_120

    .line 247
    :cond_fd
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/2addr p1, v0

    const/16 p2, 0x96

    if-le p1, p2, :cond_10f

    .line 248
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 p2, 0x6

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_120

    .line 249
    :cond_10f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result p1

    mul-int/2addr p1, v0

    const/16 p2, 0xb4

    if-le p1, p2, :cond_120

    .line 250
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->add(II)V

    :cond_120
    :goto_120
    return-void
.end method

.method synthetic lambda$initLunarPicker$4$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 2

    .line 259
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->returnData()V

    .line 260
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$5$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 2

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$6$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 257
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 258
    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda11;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity$$ExternalSyntheticLambda12;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 2

    .line 150
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->show()V

    return-void
.end method

.method synthetic lambda$initView$1$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 5

    .line 162
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemCycle:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10076b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x11

    .line 164
    const-string v1, "6t6t5g"

    if-lt p1, v0, :cond_2f

    add-int/lit8 v0, p1, -0x8

    .line 165
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    goto :goto_3c

    :cond_2f
    const/16 v0, 0x14

    if-lt p1, v0, :cond_3c

    const/16 v0, 0xc

    .line 167
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    .line 168
    const-string v0, "= 12  2222"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3c
    :goto_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tvSelectPerimeterLeng:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  menstrualMax:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "menstrualMax\u70b9\u51fb:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 172
    :goto_6f
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->menstrualMax:I

    if-gt p1, v0, :cond_8d

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemCycle:Ljava/util/ArrayList;

    new-instance v1, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v2, p1, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemCycle:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6f

    .line 176
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method synthetic lambda$initView$2$com-keephealth-android-ui-device-activity-PreMenstrualSetActivity(Landroid/view/View;)V
    .registers 5

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u70b9\u51fb\u540edura:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "t6t5rt"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    const/16 v0, 0xf

    const/4 v1, 0x0

    if-lt p1, v0, :cond_39

    :goto_22
    const/16 p1, 0x28

    if-gt v1, p1, :cond_86

    .line 188
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v0, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v2, v1, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_39
    const/16 v0, 0xe

    if-ne p1, v0, :cond_54

    :goto_3d
    const/16 p1, 0x29

    if-gt v1, p1, :cond_86

    .line 192
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v0, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v2, v1, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_54
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6f

    :goto_58
    const/16 p1, 0x2a

    if-gt v1, p1, :cond_86

    .line 196
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v0, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v2, v1, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_6f
    :goto_6f
    const/16 p1, 0x2b

    if-gt v1, p1, :cond_86

    .line 200
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    new-instance v0, Lcom/keephealth/android/model/bean/CardBean;

    add-int/lit8 v2, v1, 0x11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 203
    :cond_86
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cardItemPerimeter:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setPicker(Ljava/util/List;)V

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->pvCustomPerimeter:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method saveData()V
    .registers 15

    const v0, 0x7f0900b3

    const-wide/16 v1, 0xbb8

    .line 368
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_291

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perimeter_\u5468\u671f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t6t56t"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->from:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v3, :cond_13a

    .line 371
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 372
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualYear(I)V

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualMonth(I)V

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setStartMenstrualDay(I)V

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualCycle(I)V

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setMenstrualDuration(I)V

    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, -0x5

    .line 380
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 381
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    .line 383
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 384
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v5

    const/4 v6, 0x3

    mul-int/2addr v5, v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 385
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    .line 386
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v6

    const/16 v5, 0x1e

    if-le v0, v5, :cond_8f

    .line 387
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_e6

    .line 388
    :cond_8f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v6

    const/16 v5, 0x3c

    if-le v0, v5, :cond_a0

    .line 389
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_e6

    .line 390
    :cond_a0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v6

    const/16 v5, 0x5a

    if-le v0, v5, :cond_b2

    .line 391
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_e6

    .line 392
    :cond_b2
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v6

    const/16 v5, 0x78

    if-le v0, v5, :cond_c3

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_e6

    .line 394
    :cond_c3
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v6

    const/16 v5, 0x96

    if-le v0, v5, :cond_d5

    .line 395
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_e6

    .line 396
    :cond_d5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    mul-int/2addr v0, v6

    const/16 v5, 0xb4

    if-le v0, v5, :cond_e6

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 399
    :cond_e6
    :goto_e6
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarStartYear(I)V

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarStartMonthr(I)V

    .line 401
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarEndYear(I)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u8bbe\u7f6e\u6708\u4efd:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->setCalendarEndMonth(I)V

    .line 404
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    goto :goto_148

    :cond_13a
    if-ne v0, v4, :cond_148

    .line 411
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 415
    :cond_148
    :goto_148
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->from:I

    const-string v1, "day"

    const-string v5, "month"

    const-string v6, "year"

    const-string v7, "perimeter"

    const-string v8, "dura"

    const v9, 0x7f10076b

    const-string v10, ""

    if-ne v0, v3, :cond_205

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-class v11, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {v0, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectCycle:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v2, v12, v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->cDate:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->startActivity(Landroid/content/Intent;)V

    .line 424
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->finish()V

    goto :goto_235

    :cond_205
    if-ne v0, v4, :cond_235

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 428
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->dura:I

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->perimeter:I

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->year:I

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->month:I

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->day:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0xc8

    .line 434
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->setResult(ILandroid/content/Intent;)V

    .line 435
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->finish()V

    .line 437
    :cond_235
    :goto_235
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectCycle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v8, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 438
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->tvSelectPerimeter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v7, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_291
    return-void
.end method
