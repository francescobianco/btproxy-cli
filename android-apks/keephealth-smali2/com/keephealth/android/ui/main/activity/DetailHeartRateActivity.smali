.class public Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;
.super Lcom/keephealth/android/base/BaseCalendarActivity;
.source "DetailHeartRateActivity.java"

# interfaces
.implements Lcom/keephealth/android/app/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseCalendarActivity<",
        "Lcom/keephealth/android/persenter/main/DetailHrPresenter;",
        ">;",
        "Lcom/keephealth/android/app/Constants;"
    }
.end annotation


# static fields
.field public static final DETAILTYPE_KEY:Ljava/lang/String; = "DETAILTYPE_KEY"

.field public static final DETAIL_DATE_KEY:Ljava/lang/String; = "DETAIL_DATE_KEY"


# instance fields
.field private c:Ljava/util/Calendar;

.field detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field heartRateChart:Lcom/keephealth/android/views/HeartRateChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901af
    .end annotation
.end field

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

.field private mSearchDate:Ljava/util/Date;

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

    .line 35
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;-><init>()V

    .line 148
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    return-void
.end method

.method private changeDateUpdateUI(Ljava/util/Date;)V
    .registers 5

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 220
    :cond_31
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvDate:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_42
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    .registers 7

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, v1, :cond_c

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->changeDateUpdateUI(Ljava/util/Date;)V

    goto :goto_15

    .line 126
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v1, v1, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_15
    iget v0, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    const-string v1, "--"

    const-string v2, ""

    if-nez v0, :cond_23

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvHrValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 132
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_3b
    iget v0, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    if-nez v0, :cond_45

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvMaxHrValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 137
    :cond_45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvMaxHrValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_5d
    iget v0, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    if-nez v0, :cond_67

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvAvHrValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7f

    .line 142
    :cond_67
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->tvAvHrValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_7f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/HeartRateChart;->setType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

    iget-object v1, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iget-object v2, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->dates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/keephealth/android/views/HeartRateChart;->setDatas(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthHeartRate;ZLjava/util/List;)V

    return-void
.end method

.method private updateByTimeType()V
    .registers 1

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

    .line 192
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 193
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    .line 194
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_4f
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

    .line 204
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 205
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    .line 206
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_4f
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0037

    return v0
.end method

.method public initView()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100321

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    if-nez v0, :cond_28

    return-void

    .line 170
    :cond_28
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 175
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByType()V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 177
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByTimeType()V

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090648,
            0x7f090715,
            0x7f09068a,
            0x7f09071b,
            0x7f090487,
            0x7f090484,
            0x7f090485,
            0x7f090486,
            0x7f0902cd,
            0x7f090640
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902cd

    if-eq p1, v0, :cond_8a

    const v0, 0x7f090640

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_a2

    goto/16 :goto_a0

    .line 111
    :pswitch_15
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getYearMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 115
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByTimeType()V

    goto :goto_a0

    .line 105
    :pswitch_32
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 106
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getSixMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    goto :goto_a0

    .line 99
    :pswitch_4c
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getOneMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    goto :goto_a0

    .line 92
    :pswitch_66
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/HeartRateChart;->setType(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    goto :goto_a0

    .line 76
    :cond_8a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_a0

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 88
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    :cond_a0
    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x7f090484
        :pswitch_66
        :pswitch_4c
        :pswitch_32
        :pswitch_15
    .end packed-switch
.end method

.method public updateByType()V
    .registers 1

    return-void
.end method
