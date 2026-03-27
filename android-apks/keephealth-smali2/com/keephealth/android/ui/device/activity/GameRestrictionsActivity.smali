.class public Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "GameRestrictionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final REQUEST_WEEKDAY_CODE:I

.field private beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/NotGameBean;",
            ">;"
        }
    .end annotation
.end field

.field binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

.field private endHour:I

.field private endMin:I

.field endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

.field private gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

.field private startHour:I

.field private startMin:I

.field startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->REQUEST_WEEKDAY_CODE:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->beanList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Lcom/keephealth/android/ui/device/bean/NotGameBean;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->beanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->beanList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I

    return p1
.end method

.method private initDatePicker()V
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setStartTimeHour(I)V

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setStartTimeMin(I)V

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setEndTimeHour(I)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setStartTimeMin(I)V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setOnOrOff(I)V

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    new-array v4, v3, [I

    fill-array-data v4, :array_5a

    invoke-virtual {v0, v4}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setCycle([I)V

    .line 212
    iput v3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I

    .line 213
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I

    .line 214
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I

    .line 215
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I

    .line 216
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 217
    new-instance v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 239
    new-instance v0, Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/TimePickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    .line 240
    new-instance v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setCallback(Lcom/keephealth/android/views/dialog/TimePickerDialog$OnClickCallback;)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    return-void

    :array_5a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public getTimes([ILandroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 281
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_9d

    .line 282
    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_99

    .line 283
    const-string v2, " "

    packed-switch v1, :pswitch_data_a2

    goto/16 :goto_99

    .line 303
    :pswitch_15
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100131

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 300
    :pswitch_28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 297
    :pswitch_3b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 294
    :pswitch_4e
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 291
    :pswitch_61
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 288
    :pswitch_74
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    .line 285
    :pswitch_87
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 308
    :cond_9d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_87
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_3b
        :pswitch_28
        :pswitch_15
    .end packed-switch
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 4

    .line 59
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 60
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->toBack()V

    .line 61
    new-instance v0, Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/bean/NotGameBean;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100636

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    const v2, 0x7f100508

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->initDatePicker()V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startHour:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startMin:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endHour:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endMin:I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->setTime(II)V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->startTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->endTimePickerDialog:Lcom/keephealth/android/views/dialog/TimePickerDialog;

    invoke-virtual {v1}, Lcom/keephealth/android/views/dialog/TimePickerDialog;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctlStartTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctlEndTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctlFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->showLoading()V

    .line 148
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getNotGame()[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_50

    :cond_a
    if-eqz p3, :cond_50

    if-nez p1, :cond_50

    .line 318
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 320
    const-string p2, "isSelect"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    if-eqz p1, :cond_50

    .line 323
    array-length p2, p1

    new-array p2, p2, [I

    const/4 p3, 0x0

    const/4 v0, 0x1

    move v1, p3

    .line 324
    :goto_22
    array-length v2, p1

    if-ge v1, v2, :cond_2f

    .line 328
    aget-boolean v2, p1, v1

    aput v2, p2, v1

    if-nez v2, :cond_2c

    move v0, p3

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 334
    :cond_2f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->gameBean:Lcom/keephealth/android/ui/device/bean/NotGameBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/bean/NotGameBean;->setCycle([I)V

    if-eqz v0, :cond_45

    .line 336
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvFrequency:Landroid/widget/TextView;

    const p2, 0x7f100122

    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 338
    :cond_45
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->binding:Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvFrequency:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p0}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity;->getTimes([ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    :goto_50
    return-void
.end method
