.class public Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailBloodPressActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/BloodPressHistoryContract$View;",
        "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;"
    }
.end annotation


# instance fields
.field bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090091
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

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 196
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 250
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    const/4 v4, 0x2

    .line 302
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    const/4 v3, 0x5

    .line 303
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 307
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
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

    .line 267
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 271
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 272
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 273
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

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

    .line 283
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 287
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 288
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 289
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    .line 290
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0035

    return v0
.end method

.method protected initView()V
    .registers 12

    .line 99
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 104
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "YEAR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    .line 105
    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    .line 106
    const-string v1, "DAY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    .line 108
    :cond_42
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 109
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 124
    new-instance v0, Lcom/keephealth/android/views/MyMarkerView;

    const v5, 0x7f0c00ba

    invoke-direct {v0, p0, v5}, Lcom/keephealth/android/views/MyMarkerView;-><init>(Landroid/content/Context;I)V

    .line 127
    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v6}, Lcom/keephealth/android/views/MyMarkerView;->setChartView(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 128
    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v6, 0x43480000    # 200.0f

    .line 135
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v7, 0x0

    .line 136
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v8, 0x4

    .line 137
    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 139
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    const/16 v9, 0xdd

    .line 140
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 141
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 145
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 146
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 147
    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 148
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setTouchEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setDragDecelerationFrictionCoef(F)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setDrawGridBackground(Z)V

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setHighlightPerDragEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setPinchZoom(Z)V

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setDoubleTapToZoomEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setBackgroundColor(I)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setScaleEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 164
    new-instance v0, Lcom/keephealth/android/views/MyMarkerView;

    invoke-direct {v0, p0, v5}, Lcom/keephealth/android/views/MyMarkerView;-><init>(Landroid/content/Context;I)V

    .line 165
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/MyMarkerView;->setChartView(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 166
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setMarker(Lcom/github/mikephil/charting/components/IMarker;)V

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 173
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 174
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 175
    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 176
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 178
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 179
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 183
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 184
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 185
    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 186
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 187
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

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

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902cd

    if-eq p1, v0, :cond_9d

    const v0, 0x7f090640

    if-eq p1, v0, :cond_9d

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_ca

    goto/16 :goto_c9

    .line 240
    :pswitch_16
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 241
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getOneYearData()V

    goto/16 :goto_c9

    .line 232
    :pswitch_37
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getSixMonthData()V

    goto :goto_c9

    .line 224
    :pswitch_57
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getMonthData()V

    goto :goto_c9

    .line 216
    :pswitch_77
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachYear:I

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachMonth:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->mSeachDay:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

    goto :goto_c9

    .line 203
    :cond_9d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_c9

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_b4

    .line 205
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 207
    :cond_b4
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_c4

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_c9

    .line 211
    :cond_c4
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_c9
    :goto_c9
    return-void

    :pswitch_data_ca
    .packed-switch 0x7f090484
        :pswitch_77
        :pswitch_57
        :pswitch_37
        :pswitch_16
    .end packed-switch
.end method

.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 18

    move-object v0, p0

    .line 518
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v2, :cond_2d

    .line 519
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v5

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 520
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    .line 519
    invoke-virtual/range {v3 .. v8}, Lcom/github/mikephil/charting/charts/LineChart;->centerViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V

    goto :goto_52

    .line 522
    :cond_2d
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v11

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleData;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 523
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v12

    const-wide/16 v13, 0x1f4

    .line 522
    invoke-virtual/range {v9 .. v14}, Lcom/github/mikephil/charting/charts/CandleStickChart;->centerViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V

    :goto_52
    return-void
.end method

.method public reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 12
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

    .line 316
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->changeDateUpdateUI()V

    if-eqz p2, :cond_4a

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvRangBloodValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mmHg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBlood()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56

    .line 321
    :cond_4a
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvRangBloodValue:Landroid/widget/TextView;

    const-string v0, "-- mmHg"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1cf

    const/4 v2, 0x0

    move v3, v2

    .line 328
    :goto_6d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d9

    .line 329
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 330
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v6, v3

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 331
    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v7, v6, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 332
    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 334
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v7, v6}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 338
    :cond_d9
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 339
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 340
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 v4, -0x1000000

    .line 341
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 342
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 344
    new-instance v4, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 350
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/4 v1, 0x1

    .line 351
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 v4, 0x8

    .line 352
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 353
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 355
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v4, "DataSet 1"

    invoke-direct {v3, p2, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 357
    sget-object p2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 358
    const-string p2, "#FFA800"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 359
    invoke-virtual {v3, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v4, 0x42

    .line 360
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 361
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08008f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 362
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    const/16 v5, 0xf4

    const/16 v6, 0x75

    .line 365
    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 366
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 367
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 368
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 369
    sget-object v7, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 370
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 372
    new-instance v7, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v8, "DataSet 2"

    invoke-direct {v7, v0, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 374
    const-string v0, "#FFD52B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 375
    invoke-virtual {v7, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 376
    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 377
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080090

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 378
    invoke-virtual {v7, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 381
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 382
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 383
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 384
    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {v7, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 385
    sget-object p2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v7, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 386
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 387
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_1a7

    .line 388
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 389
    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    goto :goto_1ad

    .line 391
    :cond_1a7
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 392
    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 397
    :goto_1ad
    new-instance p1, Lcom/github/mikephil/charting/data/LineData;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v3, p2, v2

    aput-object v7, p2, v1

    invoke-direct {p1, p2}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/4 p2, -0x1

    .line 398
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 p2, 0x41100000    # 9.0f

    .line 399
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 401
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v0, 0x9

    invoke-virtual {p2, p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 402
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    goto :goto_1e8

    .line 404
    :cond_1cf
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 405
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 p2, 0x0

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 407
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    :goto_1e8
    return-void
.end method

.method public reBackMonthData(Ljava/util/List;IIIILjava/util/Date;Ljava/util/Date;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;IIII",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 415
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvDate:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v9, p7

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff5e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v9, p6

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const-string v6, " mmHg"

    const-string v7, "/"

    const-string v8, "-- mmHg"

    if-eqz v2, :cond_61

    if-eqz v3, :cond_61

    .line 417
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvRangBloodValue:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_66

    .line 419
    :cond_61
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvRangBloodValue:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_66
    if-eqz v5, :cond_89

    if-eqz v4, :cond_89

    .line 422
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8e

    .line 424
    :cond_89
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->tvAvgBloodValue:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_8e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 428
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_267

    const/4 v5, 0x0

    move v6, v5

    .line 430
    :goto_a5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_15a

    .line 431
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 432
    new-instance v9, Lcom/github/mikephil/charting/data/CandleEntry;

    int-to-float v10, v6

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 p2, v9

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, v14

    invoke-direct/range {p2 .. p7}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(FFFFF)V

    .line 433
    new-instance v11, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 p2, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v15

    invoke-direct/range {p2 .. p7}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(FFFFF)V

    .line 434
    invoke-virtual {v9, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setData(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {v11, v7}, Lcom/github/mikephil/charting/data/CandleEntry;->setData(Ljava/lang/Object;)V

    .line 436
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v13, "-"

    if-ne v10, v12, :cond_11e

    .line 437
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 438
    :cond_11e
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v10, v12, :cond_149

    .line 439
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v7

    const-string v8, "~"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 441
    :cond_149
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :goto_150
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a5

    .line 447
    :cond_15a
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v6

    .line 448
    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v7, 0x41200000    # 10.0f

    .line 449
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 v7, -0x1000000

    .line 450
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 451
    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 453
    new-instance v7, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity$3;

    invoke-direct {v7, v0, v4}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 459
    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 460
    invoke-virtual {v6, v8}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/16 v4, 0x8

    .line 461
    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 462
    invoke-virtual {v6, v8}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 464
    new-instance v4, Lcom/github/mikephil/charting/data/CandleDataSet;

    const-string v6, "Data Set"

    invoke-direct {v4, v2, v6}, Lcom/github/mikephil/charting/data/CandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 465
    new-instance v2, Lcom/github/mikephil/charting/data/CandleDataSet;

    invoke-direct {v2, v3, v6}, Lcom/github/mikephil/charting/data/CandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawIcons(Z)V

    .line 467
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const v3, -0xbbbbbc

    .line 468
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowColor(I)V

    const v3, 0x3f333333    # 0.7f

    .line 469
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowWidth(F)V

    .line 470
    const-string v6, "#FFD62B"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingColor(I)V

    .line 471
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 472
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setIncreasingColor(I)V

    .line 473
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/CandleDataSet;->setIncreasingPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 474
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setNeutralColor(I)V

    .line 475
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawValues(Z)V

    .line 476
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 478
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawIcons(Z)V

    .line 479
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/CandleDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 480
    const-string v6, "#FFA800"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowColor(I)V

    .line 481
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setShadowWidth(F)V

    .line 482
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingColor(I)V

    .line 483
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 484
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawValues(Z)V

    .line 485
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/CandleDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 486
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x5

    if-gt v3, v6, :cond_200

    const v1, 0x3ee66666    # 0.45f

    .line 487
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 488
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    goto :goto_24e

    .line 489
    :cond_200
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0xa

    if-gt v3, v6, :cond_212

    const v1, 0x3ecccccd    # 0.4f

    .line 490
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 491
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    goto :goto_24e

    .line 492
    :cond_212
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0xf

    if-gt v3, v6, :cond_224

    const v1, 0x3eb33333    # 0.35f

    .line 493
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 494
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    goto :goto_24e

    .line 495
    :cond_224
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x14

    if-gt v3, v6, :cond_236

    const v1, 0x3e99999a    # 0.3f

    .line 496
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 497
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    goto :goto_24e

    .line 498
    :cond_236
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x19

    if-gt v1, v3, :cond_247

    const/high16 v1, 0x3e800000    # 0.25f

    .line 499
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 500
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    goto :goto_24e

    :cond_247
    const/4 v1, 0x0

    .line 502
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 503
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->setBarSpace(F)V

    .line 505
    :goto_24e
    new-instance v1, Lcom/github/mikephil/charting/data/CandleData;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    aput-object v4, v3, v5

    aput-object v2, v3, v8

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/data/CandleData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    .line 506
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/16 v3, 0xb

    invoke-virtual {v2, v1, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 507
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->invalidate()V

    goto :goto_280

    .line 509
    :cond_267
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->clear()V

    .line 510
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setNoDataText(Ljava/lang/String;)V

    .line 511
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/CandleStickChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 512
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity;->bloodMonthChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CandleStickChart;->invalidate()V

    :goto_280
    return-void
.end method
