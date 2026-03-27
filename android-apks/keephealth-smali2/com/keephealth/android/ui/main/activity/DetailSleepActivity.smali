.class public Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;
.super Lcom/keephealth/android/base/BaseCalendarActivity;
.source "DetailSleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseCalendarActivity<",
        "Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private c:Ljava/util/Calendar;

.field private calendar:Ljava/util/Calendar;

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

.field private lableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchDate:Ljava/util/Date;

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field showType:I

.field simpleDateFormat:Ljava/text/SimpleDateFormat;

.field sleepDetailVO:Lcom/keephealth/android/model/bean/SleepDetailVO;

.field sleep_BarChart:Lcom/keephealth/android/views/SleepBarChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090579
    .end annotation
.end field

.field sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09057a
    .end annotation
.end field

.field timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090640
    .end annotation
.end field

.field tvDeepSleepH:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064b
    .end annotation
.end field

.field tvDeepSleepM:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064c
    .end annotation
.end field

.field tvLightSleepH:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09067b
    .end annotation
.end field

.field tvLightSleepM:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09067c
    .end annotation
.end field

.field tvMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068a
    .end annotation
.end field

.field tvStartSleepH:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906d9
    .end annotation
.end field

.field tvStartSleepM:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906da
    .end annotation
.end field

.field tvTotal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ff
    .end annotation
.end field

.field tvWakeSleepH:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090710
    .end annotation
.end field

.field tvWakeSleepM:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090711
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
    .registers 4

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;-><init>()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;Lcom/keephealth/android/model/bean/SleepDetailVO;I)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    return-void
.end method

.method private changeDateUpdateUI(Ljava/util/Date;)V
    .registers 5

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 327
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

    .line 328
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_42

    .line 331
    :cond_31
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_42
    return-void
.end method

.method private showShareDialog()V
    .registers 4

    .line 279
    new-instance v0, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    const v2, 0x7f100256

    .line 280
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f100193

    .line 283
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 284
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setType(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f060127

    .line 285
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightTextColor(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V
    .registers 10

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, v1, :cond_c

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->changeDateUpdateUI(Ljava/util/Date;)V

    goto :goto_15

    .line 149
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v1, v1, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_15
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleep_BarChart:Lcom/keephealth/android/views/SleepBarChart;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SleepBarChart;->setVisibility(I)V

    .line 152
    iget-object v0, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v0, v0, Lcom/keephealth/android/views/MainVO;->healthSleep:Lcom/keephealth/android/greendao/bean/HealthSleep;

    if-nez v0, :cond_27

    .line 154
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;-><init>()V

    .line 156
    :cond_27
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleep_BarChart:Lcom/keephealth/android/views/SleepBarChart;

    iget-object v2, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/keephealth/android/views/SleepBarChart;->setDatas(Lcom/keephealth/android/greendao/bean/HealthSleep;Ljava/util/List;)V

    .line 158
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvStartSleepH:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvStartSleepM:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getSleepstartedTimeM()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDeepSleepH:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDeepSleepM:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getDeepSleepMinutes()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvLightSleepH:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvLightSleepM:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getLightSleepMinutes()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWakeSleepH:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvWakeSleepM:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getWakeMunutes()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/SleepBarDetailChart;->setVisibility(I)V

    if-nez p2, :cond_bc

    .line 169
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;

    iget-object v1, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepItemList:Ljava/util/List;

    const-string v3, "23:34"

    iget-object v4, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    const-string v5, "00:23"

    invoke-virtual {p2, v1, v5, v3, v4}, Lcom/keephealth/android/views/SleepBarDetailChart;->setDatas(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_c5

    .line 171
    :cond_bc
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleepdetailbar:Lcom/keephealth/android/views/SleepBarDetailChart;

    iget-object v3, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    iget-object v4, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->dates:Ljava/util/List;

    invoke-virtual {v1, p2, v3, v4}, Lcom/keephealth/android/views/SleepBarDetailChart;->setData(ILjava/util/List;Ljava/util/List;)V

    .line 173
    :goto_c5
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    const v3, 0x7f100775

    const v4, 0x7f10076d

    const-string v5, " "

    if-ne p2, v1, :cond_12e

    .line 174
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvTotal:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a4

    .line 179
    :cond_12e
    iget-object p1, p1, Lcom/keephealth/android/model/bean/SleepDetailVO;->sleepList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v2

    :cond_135
    :goto_135
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthSleep;

    .line 180
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v1

    if-lez v1, :cond_135

    .line 181
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getTotalSleepMinutes()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_135

    :cond_14f
    if-nez v2, :cond_152

    const/4 v2, 0x1

    .line 188
    :cond_152
    div-int/2addr p2, v2

    .line 189
    div-int/lit8 p1, p2, 0x3c

    .line 190
    rem-int/lit8 p2, p2, 0x3c

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvTotal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f100159

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1a4
    return-void
.end method

.method private updateMonthView()V
    .registers 10

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v0

    .line 226
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 227
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_12
    if-gt v0, v2, :cond_2f

    .line 229
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 231
    :cond_2f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\uff5e"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private updateWeekView()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 201
    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->getStartdayThisWeek(II)Ljava/util/Date;

    move-result-object v2

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 203
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 204
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :goto_12
    const/4 v4, 0x7

    if-ge v0, v4, :cond_55

    .line 206
    const-string v4, ""

    const/4 v5, 0x5

    if-nez v0, :cond_35

    .line 207
    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 209
    :cond_35
    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 210
    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 214
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\uff5e"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private updateYearView()V
    .registers 6

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    move v1, v0

    :goto_7
    const/16 v2, 0xc

    if-gt v1, v2, :cond_26

    .line 241
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->lableList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 243
    :cond_26
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1007e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

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

    .line 304
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_50

    .line 305
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    .line 306
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    :cond_50
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

    .line 315
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_50

    .line 316
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    .line 317
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 319
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    :cond_50
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0039

    return v0
.end method

.method public initView()V
    .registers 5

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d026b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iput-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->activity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->showType:I

    .line 267
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 268
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    .line 269
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->sleepDetailVO:Lcom/keephealth/android/model/bean/SleepDetailVO;

    .line 275
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->showType:I

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailSleepActivity(Landroid/view/View;)V
    .registers 2

    .line 263
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->showShareDialog()V

    return-void
.end method

.method synthetic lambda$showShareDialog$1$com-keephealth-android-ui-main-activity-DetailSleepActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 281
    new-instance p1, Lcom/keephealth/android/views/share/ShareHelper;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/share/ShareHelper;-><init>(Landroid/app/Activity;)V

    const/4 p2, 0x0

    .line 282
    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/share/ShareHelper;->shareToThirdPlateform(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090715,
            0x7f09068a,
            0x7f09071b,
            0x7f090484,
            0x7f090485,
            0x7f090486,
            0x7f090487,
            0x7f0902cd,
            0x7f090640
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902cd

    if-eq p1, v0, :cond_93

    const v0, 0x7f090640

    if-eq p1, v0, :cond_93

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_aa

    goto/16 :goto_a9

    .line 134
    :pswitch_15
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateYearView()V

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    const/4 p1, 0x3

    .line 138
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->showType:I

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getYearMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    goto :goto_a9

    :pswitch_35
    const/4 p1, 0x2

    .line 127
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->showType:I

    .line 128
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getSixMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    goto :goto_a9

    :pswitch_52
    const/4 p1, 0x1

    .line 120
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->showType:I

    .line 121
    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 122
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getOneMonth()Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    goto :goto_a9

    .line 112
    :pswitch_6f
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateWeekView()V

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->showType:I

    .line 114
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailSleep2Presenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/SleepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->updateData(Lcom/keephealth/android/model/bean/SleepDetailVO;I)V

    goto :goto_a9

    .line 94
    :cond_93
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_a9

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    :cond_a9
    :goto_a9
    return-void

    :pswitch_data_aa
    .packed-switch 0x7f090484
        :pswitch_6f
        :pswitch_52
        :pswitch_35
        :pswitch_15
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .line 292
    invoke-super {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;->onResume()V

    return-void
.end method
