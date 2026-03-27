.class public Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "PreMenstrualSetNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

.field private periodDate:J

.field pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

.field private selectCycle:I

.field private selectPerimeter:I

.field private selectedDate:Ljava/util/Calendar;

.field private typeFrom:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    .line 27
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I

    const/16 v0, 0x1c

    .line 28
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->periodDate:J

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->typeFrom:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I
    .registers 1

    .line 23
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;I)I
    .registers 2

    .line 23
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I
    .registers 1

    .line 23
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;I)I
    .registers 2

    .line 23
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)I
    .registers 1

    .line 23
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->typeFrom:I

    return p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)Ljava/util/Calendar;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    return-object p0
.end method

.method private initData()V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->txtSelectDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvSelectCycle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f10076b

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvSelectPerimeter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initLunarPicker()V
    .registers 10

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0xb4

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 122
    new-instance v1, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    .line 125
    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setDate(Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    .line 126
    invoke-virtual {v1, v0, v2}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setRangDate(Ljava/util/Calendar;Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    const v2, 0x7f0c0187

    .line 127
    invoke-virtual {v0, v2, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Z

    fill-array-data v1, :array_78

    .line 137
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setType([Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 138
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f10041a

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1001dc

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    const-string v8, ""

    const-string v6, ""

    invoke-virtual/range {v2 .. v8}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->isCenterLabel(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    const v1, -0x333334

    .line 141
    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->build()Lcom/bigkoo/pickerview/view/TimePickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

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
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 70
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->txtSelectDate:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvSelectCycle:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvSelectPerimeter:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->btnSend:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 7

    .line 39
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 40
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->toBack()V

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->typeFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->llStartData:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvTitle:Landroid/widget/TextView;

    const v2, 0x7f1007d1

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvTips1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :cond_34
    const-string v0, "dura"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I

    if-nez v0, :cond_3f

    const/4 v0, 0x5

    .line 48
    :cond_3f
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectCycle:I

    .line 49
    const-string v0, "perimeter"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I

    if-nez v0, :cond_4d

    const/16 v0, 0x1c

    .line 50
    :cond_4d
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectPerimeter:I

    .line 51
    const-string v0, "period_date"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->periodDate:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_67

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    :cond_67
    iput-wide v0, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->periodDate:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_72

    .line 54
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 57
    :cond_72
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->initData()V

    .line 59
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->initLunarPicker()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$0$com-keephealth-android-ui-device-activity-PreMenstrualSetNewActivity(Ljava/util/Date;Landroid/view/View;)V
    .registers 5

    .line 123
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->txtSelectDate:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/TimeUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$initLunarPicker$1$com-keephealth-android-ui-device-activity-PreMenstrualSetNewActivity(Landroid/view/View;)V
    .registers 2

    .line 131
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->returnData()V

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$2$com-keephealth-android-ui-device-activity-PreMenstrualSetNewActivity(Landroid/view/View;)V
    .registers 2

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;->pvCustomLunar:Lcom/bigkoo/pickerview/view/TimePickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->dismiss()V

    return-void
.end method

.method synthetic lambda$initLunarPicker$3$com-keephealth-android-ui-device-activity-PreMenstrualSetNewActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 130
    new-instance v1, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/PreMenstrualSetNewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
