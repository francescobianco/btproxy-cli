.class public Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "TempHistoryActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/TempHistoryContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/TempHistoryPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/TempHistoryContract$View;"
    }
.end annotation


# instance fields
.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field private detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field heartRateChart:Lcom/keephealth/android/views/TempChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901af
    .end annotation
.end field

.field i:I

.field ivNextDate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902bd
    .end annotation
.end field

.field ivPreDate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c5
    .end annotation
.end field

.field private mSeachDay:I

.field private mSeachMonth:I

.field private mSeachYear:I

.field private onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field tvAvHrValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061c
    .end annotation
.end field

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090640
    .end annotation
.end field

.field tvDay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090648
    .end annotation
.end field

.field tvHrValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09066f
    .end annotation
.end field

.field tvMaxHrValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090683
    .end annotation
.end field

.field tvMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068a
    .end annotation
.end field

.field tvWeek:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090715
    .end annotation
.end field

.field tvYear:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09071b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 100
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 148
    new-instance v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->i:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    const/4 v4, 0x2

    .line 199
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    const/4 v3, 0x5

    .line 200
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 204
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method changeNextDay()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902bd
        }
    .end annotation

    const v0, 0x7f0902bd

    const-wide/16 v1, 0x1f4

    .line 164
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 168
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 169
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method changePreDay()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c5
        }
    .end annotation

    const v0, 0x7f0902c5

    const-wide/16 v1, 0x1f4

    .line 180
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 184
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 185
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 186
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0090

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 84
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10038f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 88
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 89
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "YEAR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    .line 90
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    .line 91
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DAY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    :cond_7a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090487,
            0x7f090484,
            0x7f090485,
            0x7f090486,
            0x7f0902cd,
            0x7f090640
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902cd

    if-eq p1, v0, :cond_7c

    const v0, 0x7f090640

    if-eq p1, v0, :cond_7c

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_aa

    goto/16 :goto_a8

    .line 141
    :pswitch_15
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 142
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getOneYearData()V

    goto/16 :goto_a8

    .line 135
    :pswitch_2c
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getSixMonthData()V

    goto :goto_a8

    .line 129
    :pswitch_42
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 130
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getMonthData()V

    goto :goto_a8

    .line 122
    :pswitch_58
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->heartRateChart:Lcom/keephealth/android/views/TempChart;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/TempChart;->setType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachYear:I

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachMonth:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->mSeachDay:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/TempHistoryPresenter;->getHistoryData(III)V

    goto :goto_a8

    .line 109
    :cond_7c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_a8

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_93

    .line 111
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 113
    :cond_93
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_a3

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_a8

    .line 117
    :cond_a3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_a8
    :goto_a8
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x7f090484
        :pswitch_58
        :pswitch_42
        :pswitch_2c
        :pswitch_15
    .end packed-switch
.end method

.method public reBackDayData(Ljava/util/List;DDD)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempInfo;",
            ">;DDD)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->changeDateUpdateUI()V

    .line 212
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    const-wide/16 v8, 0x0

    cmpl-double v10, v2, v8

    const-wide/high16 v11, 0x4040000000000000L    # 32.0

    const-wide v13, 0x3ffccccccccccccdL    # 1.8

    .line 213
    const-string v8, "--"

    const v9, 0x7f10077c

    const v15, 0x7f10077d

    if-nez v10, :cond_69

    .line 214
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    if-nez v2, :cond_4e

    .line 215
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_be

    .line 217
    :cond_4e
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_be

    .line 220
    :cond_69
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v10

    if-nez v10, :cond_96

    .line 221
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvHrValue:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_be

    .line 223
    :cond_96
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvHrValue:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr v2, v13

    add-double/2addr v2, v11

    const/4 v11, 0x1

    invoke-static {v2, v3, v11}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f10077d

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_be
    const-wide/16 v2, 0x0

    cmpl-double v10, v4, v2

    if-nez v10, :cond_10b

    .line 227
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    if-nez v2, :cond_ed

    .line 228
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvAvHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    .line 230
    :cond_ed
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvAvHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10077d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    .line 233
    :cond_10b
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    if-nez v2, :cond_138

    .line 234
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvAvHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    .line 236
    :cond_138
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvAvHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr v4, v13

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    add-double/2addr v4, v10

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10077d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_162
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-nez v2, :cond_1af

    .line 240
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    if-nez v2, :cond_191

    .line 241
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMaxHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_207

    .line 243
    :cond_191
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMaxHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10077d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_207

    .line 246
    :cond_1af
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    if-nez v2, :cond_1dc

    .line 247
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMaxHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_207

    .line 249
    :cond_1dc
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->tvMaxHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-double v4, v6, v13

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    add-double/2addr v4, v6

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10077d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_207
    if-eqz v1, :cond_249

    .line 253
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_238

    .line 254
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_238

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 255
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v5

    mul-double/2addr v5, v13

    const-wide/high16 v7, 0x4040000000000000L    # 32.0

    add-double/2addr v5, v7

    invoke-static {v5, v6, v3}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->setTmpHandler(D)V

    goto :goto_21c

    .line 258
    :cond_238
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->heartRateChart:Lcom/keephealth/android/views/TempChart;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/TempChart;->setType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 259
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->heartRateChart:Lcom/keephealth/android/views/TempChart;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/keephealth/android/views/TempChart;->setDatas(Ljava/util/List;Ljava/util/List;)V

    :cond_249
    return-void
.end method

.method public reBackMonthData(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;DDD)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/TempDayInfo;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "DDD)V"
        }
    .end annotation

    return-void
.end method
