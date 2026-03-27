.class public Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;
.super Lcom/keephealth/android/base/BaseCalendarActivity;
.source "FamilyDetailActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/FamilyDetailContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseCalendarActivity<",
        "Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/FamilyDetailContract$View;"
    }
.end annotation


# instance fields
.field private final REQUESTCODE:I

.field private c:Ljava/util/Calendar;

.field private familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

.field ilBlood:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c9
    .end annotation
.end field

.field ilHeart:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901dc
    .end annotation
.end field

.field ilOxygen:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e5
    .end annotation
.end field

.field ilSleep:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e8
    .end annotation
.end field

.field ilSport:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e9
    .end annotation
.end field

.field ilStep:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ec
    .end annotation
.end field

.field ilTemp:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ef
    .end annotation
.end field

.field ivHeader:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b0
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

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090640
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;-><init>()V

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/16 v0, 0x2711

    .line 73
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->REQUESTCODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)Ljava/util/Date;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)Lcom/keephealth/android/model/bean/FamilyBean;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI(Ljava/util/Date;)V
    .registers 4

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 206
    :cond_31
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvDate:Landroid/widget/TextView;

    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_44
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

    .line 177
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 178
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    .line 179
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->changeDateUpdateUI(Ljava/util/Date;)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMid()I

    move-result v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->getFamilyDetail(ILjava/lang/String;)V

    :cond_5a
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

    .line 189
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 190
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    .line 191
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->changeDateUpdateUI(Ljava/util/Date;)V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMid()I

    move-result v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->getFamilyDetail(ILjava/lang/String;)V

    :cond_5a
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0051

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 76
    invoke-super {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;->initView()V

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 81
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "family"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/FamilyBean;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    .line 83
    :cond_34
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    .line 90
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 95
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ivHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/FamilyBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortrait(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/FamilyBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMid()I

    move-result v1

    sget-object v2, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->getFamilyDetail(ILjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-FamilyDetailActivity(Landroid/view/View;)V
    .registers 4

    .line 85
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v0, "family"

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 87
    const-class v0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;

    const/16 v1, 0x2711

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseCalendarActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_38

    .line 214
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_38

    :cond_c
    const/16 p2, 0x2711

    if-ne p1, p2, :cond_38

    .line 218
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "status"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_21

    .line 220
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->finish()V

    goto :goto_38

    .line 222
    :cond_21
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "family"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/FamilyBean;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;

    .line 223
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public returnDetail(Lcom/keephealth/android/model/bean/FamilyDetail;)V
    .registers 20

    move-object/from16 v0, p0

    const v1, 0x7f1005ba

    if-nez p1, :cond_64

    .line 104
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilStep:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 105
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSport:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilHeart:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilOxygen:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilTemp:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilBlood:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 110
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSleep:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2ff

    .line 112
    :cond_64
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSteps()I

    move-result v2

    if-nez v2, :cond_78

    .line 113
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilStep:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_9d

    .line 115
    :cond_78
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilStep:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSteps()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10077a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 117
    :goto_9d
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSportDuration()I

    move-result v2

    const v3, 0x7f100775

    const v4, 0x7f10076d

    const-string v5, "%02d"

    const/16 v6, 0x3c

    if-gt v2, v6, :cond_bb

    .line 118
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSport:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_11e

    .line 120
    :cond_bb
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSport:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSportType()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/SportDataHelper;->getStringBytyp(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSportDuration()I

    move-result v9

    div-int/lit16 v9, v9, 0xe10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSportDuration()I

    move-result v9

    rem-int/lit16 v9, v9, 0xe10

    div-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 123
    :goto_11e
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMinHR()I

    move-result v2

    const-string v7, "-"

    if-eqz v2, :cond_156

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMaxHR()I

    move-result v2

    if-nez v2, :cond_12d

    goto :goto_156

    .line 126
    :cond_12d
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilHeart:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMinHR()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMaxHR()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bpm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_163

    .line 124
    :cond_156
    :goto_156
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilHeart:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 128
    :goto_163
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMinBO()I

    move-result v2

    if-eqz v2, :cond_199

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMaxBO()I

    move-result v2

    if-nez v2, :cond_170

    goto :goto_199

    .line 131
    :cond_170
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilOxygen:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMinBO()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMaxBO()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_1a6

    .line 129
    :cond_199
    :goto_199
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilOxygen:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 133
    :goto_1a6
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMinTemp()I

    move-result v2

    if-eqz v2, :cond_245

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMaxTemp()I

    move-result v2

    if-nez v2, :cond_1b4

    goto/16 :goto_245

    .line 136
    :cond_1b4
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    const/4 v8, 0x1

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    if-nez v2, :cond_1fa

    .line 137
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilTemp:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMinTemp()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v9

    invoke-static {v12, v13, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMaxTemp()I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v11, v9

    invoke-static {v11, v12, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u2103"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_252

    .line 139
    :cond_1fa
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilTemp:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMinTemp()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v9

    const-wide v14, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v12, v14

    const-wide/high16 v16, 0x4040000000000000L    # 32.0

    add-double v12, v12, v16

    invoke-static {v12, v13, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getMaxTemp()I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v11, v9

    mul-double/2addr v11, v14

    add-double v11, v11, v16

    invoke-static {v11, v12, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10077d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_252

    .line 134
    :cond_245
    :goto_245
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilTemp:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 142
    :goto_252
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getAvgDBP()I

    move-result v2

    if-eqz v2, :cond_28a

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getAvgSBP()I

    move-result v2

    if-nez v2, :cond_25f

    goto :goto_28a

    .line 145
    :cond_25f
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilBlood:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getAvgSBP()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getAvgDBP()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mmHg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_297

    .line 143
    :cond_28a
    :goto_28a
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilBlood:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    .line 147
    :goto_297
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSleepDuration()I

    move-result v2

    if-nez v2, :cond_2ab

    .line 148
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSleep:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    goto :goto_2ff

    .line 150
    :cond_2ab
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->ilSleep:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSleepDuration()I

    move-result v8

    div-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/bean/FamilyDetail;->getSleepDuration()I

    move-result v7

    rem-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    :goto_2ff
    return-void
.end method

.method selectData()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902cd,
            0x7f090640
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V

    iput-object v1, v0, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    return-void
.end method
