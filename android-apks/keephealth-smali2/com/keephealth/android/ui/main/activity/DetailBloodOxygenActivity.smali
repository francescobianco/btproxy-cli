.class public Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailBloodOxygenActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/BloodOxygenHistoryContract$View;",
        "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;"
    }
.end annotation


# instance fields
.field bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field private detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

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

.field tvAvgBloodValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061e
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

.field tvMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068a
    .end annotation
.end field

.field tvRangBloodValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a5
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

    .line 47
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 146
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 192
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    const/4 v4, 0x2

    .line 244
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    const/4 v3, 0x5

    .line 245
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 249
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
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

    .line 209
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 213
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 214
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 215
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

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

    .line 225
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 229
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 230
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 231
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0033

    return v0
.end method

.method protected initView()V
    .registers 8

    .line 92
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100484

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 97
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "YEAR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    .line 98
    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    .line 99
    const-string v1, "DAY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    .line 101
    :cond_42
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 102
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 117
    new-instance v0, Lcom/keephealth/android/views/MyMarkerView;

    const v3, 0x7f0c00ba

    invoke-direct {v0, p0, v3}, Lcom/keephealth/android/views/MyMarkerView;-><init>(Landroid/content/Context;I)V

    .line 120
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/MyMarkerView;->setChartView(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 121
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v3, 0x42c80000    # 100.0f

    .line 126
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v4, 0x42700000    # 60.0f

    .line 127
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v5, 0x4

    .line 128
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 130
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    const/16 v6, 0xdd

    .line 131
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 132
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 136
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 137
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 138
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 140
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

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

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902cd

    if-eq p1, v0, :cond_75

    const v0, 0x7f090640

    if-eq p1, v0, :cond_75

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_a2

    goto/16 :goto_a1

    .line 184
    :pswitch_15
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getOneYearData()V

    goto/16 :goto_a1

    .line 178
    :pswitch_2c
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getSixMonthData()V

    goto :goto_a1

    .line 172
    :pswitch_42
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 173
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getMonthData()V

    goto :goto_a1

    .line 166
    :pswitch_58
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 167
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachYear:I

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachMonth:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->mSeachDay:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/BloodOxygenHistoryPresenter;->getHistoryData(III)V

    goto :goto_a1

    .line 153
    :cond_75
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_a1

    .line 154
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_8c

    .line 155
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 157
    :cond_8c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 158
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_9c

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_a1

    .line 161
    :cond_9c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_a1
    :goto_a1
    return-void

    :pswitch_data_a2
    .packed-switch 0x7f090484
        :pswitch_58
        :pswitch_42
        :pswitch_2c
        :pswitch_15
    .end packed-switch
.end method

.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 9

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 417
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    .line 416
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/charts/LineChart;->centerViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V

    return-void
.end method

.method public reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBloodItem;",
            ">;",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ")V"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->changeDateUpdateUI()V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    if-eqz p2, :cond_4f

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvRangBloodValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinOxygen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxOxygen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% SpO2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 264
    :cond_4f
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvRangBloodValue:Landroid/widget/TextView;

    const-string v0, "-- SpO2"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :goto_5b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16c

    const/4 v1, 0x0

    move v2, v1

    .line 270
    :goto_6d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c9

    .line 271
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 272
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v5, v2

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 273
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 274
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02d"

    invoke-static {v6, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 277
    :cond_c9
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 278
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 279
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 v3, -0x1000000

    .line 280
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 281
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 283
    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 289
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/4 v0, 0x1

    .line 290
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 v3, 0x8

    .line 291
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 292
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 294
    new-instance v2, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v3, "DataSet 1"

    invoke-direct {v2, p2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 296
    sget-object p2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 297
    const-string p2, "#FF6384"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 298
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 299
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f08011d

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 300
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    const/16 p2, 0xf4

    const/16 v3, 0x75

    .line 302
    invoke-static {p2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 303
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 304
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 305
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 306
    sget-object p2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 307
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_14b

    .line 310
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    goto :goto_14e

    .line 312
    :cond_14b
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 317
    :goto_14e
    new-instance p1, Lcom/github/mikephil/charting/data/LineData;

    new-array p2, v0, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v2, p2, v1

    invoke-direct {p1, p2}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/4 p2, -0x1

    .line 318
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 p2, 0x41100000    # 9.0f

    .line 319
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 321
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 322
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    goto :goto_17f

    .line 324
    :cond_16c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 p2, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 326
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    :goto_17f
    return-void
.end method

.method public reBackMonthData(Ljava/util/List;IIILjava/util/Date;Ljava/util/Date;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;III",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, "\uff5e"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p5}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 334
    const-string p5, "% SpO2"

    const-string p6, "-- SpO2"

    const-string v0, "-"

    if-eqz p2, :cond_56

    if-eqz p3, :cond_56

    .line 335
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvRangBloodValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 337
    :cond_56
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvRangBloodValue:Landroid/widget/TextView;

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5b
    if-eqz p4, :cond_74

    .line 340
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 342
    :cond_74
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_1a2

    const/4 p4, 0x0

    move p5, p4

    .line 347
    :goto_8b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p6

    const/4 v1, 0x1

    if-ge p5, p6, :cond_f9

    .line 348
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 349
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v3, p5

    invoke-virtual {p6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgOxygen()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 350
    invoke-virtual {v2, p6}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 351
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v3, :cond_c4

    .line 353
    invoke-virtual {p6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p6

    add-int/2addr p6, v1

    invoke-virtual {v2, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 354
    :cond_c4
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v3, :cond_ef

    .line 355
    invoke-virtual {p6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object p6

    const-string v1, "~"

    invoke-virtual {p6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {v2, v3, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 357
    :cond_ef
    invoke-virtual {p6}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f6
    add-int/lit8 p5, p5, 0x1

    goto :goto_8b

    .line 360
    :cond_f9
    iget-object p5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p5}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p5

    .line 361
    sget-object p6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p5, p6}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 p6, 0x41200000    # 10.0f

    .line 362
    invoke-virtual {p5, p6}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 p6, -0x1000000

    .line 363
    invoke-virtual {p5, p6}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 364
    invoke-virtual {p5, p4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 366
    new-instance p6, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$3;

    invoke-direct {p6, p0, p3}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;Ljava/util/List;)V

    invoke-virtual {p5, p6}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 372
    invoke-virtual {p5, p3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 373
    invoke-virtual {p5, v1}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 p3, 0x8

    .line 374
    invoke-virtual {p5, p3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 375
    invoke-virtual {p5, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 377
    new-instance p3, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string p5, "DataSet 1"

    invoke-direct {p3, p2, p5}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 379
    sget-object p2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 380
    const-string p2, "#FF6384"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p3, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 p5, 0x40000000    # 2.0f

    .line 381
    invoke-virtual {p3, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 p5, 0xf4

    const/16 p6, 0x75

    .line 382
    invoke-static {p5, p6, p6}, Landroid/graphics/Color;->rgb(III)I

    move-result p5

    invoke-virtual {p3, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 383
    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 384
    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 385
    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 386
    sget-object p5, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p3, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 387
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p6, 0x7f08011d

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 388
    invoke-virtual {p3, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 390
    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 392
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_181

    .line 393
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 394
    invoke-virtual {p3, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    goto :goto_184

    .line 396
    :cond_181
    invoke-virtual {p3, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 401
    :goto_184
    new-instance p1, Lcom/github/mikephil/charting/data/LineData;

    new-array p2, v1, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object p3, p2, p4

    invoke-direct {p1, p2}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/4 p2, -0x1

    .line 402
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 p2, 0x41100000    # 9.0f

    .line 403
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 405
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 p3, 0x5

    invoke-virtual {p2, p1, p3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 406
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    goto :goto_1b5

    .line 408
    :cond_1a2
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 p2, 0x0

    const/4 p3, 0x6

    invoke-virtual {p1, p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 410
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    :goto_1b5
    return-void
.end method
