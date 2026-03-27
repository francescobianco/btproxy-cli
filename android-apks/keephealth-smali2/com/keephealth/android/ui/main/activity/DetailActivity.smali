.class public Lcom/keephealth/android/ui/main/activity/DetailActivity;
.super Lcom/keephealth/android/base/BaseCalendarActivity;
.source "DetailActivity.java"

# interfaces
.implements Lcom/keephealth/android/app/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseCalendarActivity<",
        "Lcom/keephealth/android/persenter/main/DetailPresenter;",
        ">;",
        "Lcom/keephealth/android/app/Constants;"
    }
.end annotation


# static fields
.field public static final DETAILTYPE_KEY:Ljava/lang/String; = "DETAILTYPE_KEY"

.field public static final DETAIL_DATE_KEY:Ljava/lang/String; = "DETAIL_DATE_KEY"


# instance fields
.field barBg:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field private c:Ljava/util/Calendar;

.field detailSportChart:Lcom/keephealth/android/views/DetailSportChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012f
    .end annotation
.end field

.field detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field detailType:Lcom/keephealth/android/model/bean/DetailType;

.field ivBack:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029f
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

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ac
    .end annotation
.end field

.field tvData1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063d
    .end annotation
.end field

.field tvData2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063e
    .end annotation
.end field

.field tvData2Title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063f
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

.field tvTotalData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090700
    .end annotation
.end field

.field tvTotalTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090702
    .end annotation
.end field

.field tvUnit1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090705
    .end annotation
.end field

.field tvUnit2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090706
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

    .line 39
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseCalendarActivity;-><init>()V

    .line 281
    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 282
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 292
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailActivity;Lcom/keephealth/android/model/bean/StepDetailVO;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI(Ljava/util/Date;)V
    .registers 5

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4a

    .line 394
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

    if-eqz v0, :cond_39

    .line 395
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 398
    :cond_39
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvDate:Landroid/widget/TextView;

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private setAvg(Lcom/keephealth/android/model/bean/StepDetailVO;I)V
    .registers 11

    .line 138
    iget-object v0, p1, Lcom/keephealth/android/model/bean/StepDetailVO;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    if-nez p2, :cond_3d

    .line 140
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v3

    if-lez v3, :cond_34

    .line 141
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eq v3, v5, :cond_2f

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 142
    :cond_2f
    :goto_2f
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 147
    :cond_34
    :goto_34
    iget-object v3, p1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v3

    goto :goto_9

    :cond_3d
    const/4 v7, 0x1

    if-ne p2, v7, :cond_67

    .line 149
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5d

    .line 150
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eq v3, v5, :cond_58

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_55

    goto :goto_58

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 151
    :cond_58
    :goto_58
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 156
    :cond_5d
    :goto_5d
    iget-object v3, p1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v3

    :goto_65
    float-to-int v3, v3

    goto :goto_9

    :cond_67
    if-ne p2, v6, :cond_9

    .line 158
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_86

    .line 159
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-eq v3, v5, :cond_81

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_7e

    goto :goto_81

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 160
    :cond_81
    :goto_81
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 165
    :cond_86
    :goto_86
    iget-object v3, p1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v3

    goto :goto_65

    :cond_8f
    if-ne p2, v6, :cond_bc

    .line 170
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_ab

    if-nez v2, :cond_a0

    goto :goto_c2

    .line 171
    :cond_a0
    div-int p1, v3, v2

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2, v6}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide p1

    :goto_a9
    double-to-float v5, p1

    goto :goto_c2

    :cond_ab
    if-nez v2, :cond_ae

    goto :goto_c2

    .line 173
    :cond_ae
    div-int p1, v3, v2

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p1}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2, v6}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide p1

    goto :goto_a9

    :cond_bc
    if-nez v2, :cond_bf

    goto :goto_c1

    .line 176
    :cond_bf
    div-int v1, v3, v2

    :goto_c1
    int-to-float v5, v1

    .line 178
    :goto_c2
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object p2, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/DetailType;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, ""

    if-eqz p1, :cond_ec

    .line 180
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_103

    .line 182
    :cond_ec
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_103
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalData:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/keephealth/android/model/bean/DetailType;Ljava/util/Date;)V
    .registers 5

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    const-string v1, "DETAILTYPE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    const-string p1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 187
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v3, :cond_10

    .line 188
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-direct {v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->changeDateUpdateUI(Ljava/util/Date;)V

    goto :goto_19

    .line 190
    :cond_10
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_19
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    if-eqz v2, :cond_365

    .line 193
    sget-object v2, Lcom/keephealth/android/ui/main/activity/DetailActivity$3;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, ""

    const/4 v4, 0x4

    const v5, 0x7f100155

    const/4 v6, 0x3

    const v7, 0x7f100113

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x2

    const-string v11, ")"

    const-string v12, "("

    const/4 v13, 0x0

    if-eq v2, v8, :cond_27d

    if-eq v2, v10, :cond_198

    if-eq v2, v6, :cond_42

    goto/16 :goto_35a

    .line 240
    :cond_42
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 241
    sget-object v2, Lcom/keephealth/android/ui/main/activity/DetailActivity$3;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7f100774

    const v14, 0x7f100771

    if-eq v2, v8, :cond_d6

    if-eq v2, v10, :cond_61

    if-eq v2, v6, :cond_61

    if-eq v2, v4, :cond_61

    goto/16 :goto_110

    .line 253
    :cond_61
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v2

    if-nez v2, :cond_9a

    .line 254
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c8

    .line 256
    :cond_9a
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_c8
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    invoke-direct {v0, v1, v10}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->setAvg(Lcom/keephealth/android/model/bean/StepDetailVO;I)V

    goto :goto_110

    .line 243
    :cond_d6
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v4, v4, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v4, v4, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 264
    :goto_110
    iget-object v2, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v2, v2, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalDistance()F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    .line 266
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v4

    const v5, 0x7f100756

    if-nez v4, :cond_15f

    .line 268
    invoke-static {v2}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v2

    invoke-static {v2, v10}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    .line 269
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalTitle:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_191

    .line 271
    :cond_15f
    invoke-static {v2, v10}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalTitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_191
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalData:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35a

    .line 217
    :cond_198
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalTitle:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v13, 0x7f100755

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f100769

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 219
    sget-object v2, Lcom/keephealth/android/ui/main/activity/DetailActivity$3;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v13}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v13

    aget v2, v2, v13

    if-eq v2, v8, :cond_220

    if-eq v2, v10, :cond_1e4

    if-eq v2, v6, :cond_1e4

    if-eq v2, v4, :cond_1e4

    goto :goto_25c

    .line 231
    :cond_1e4
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-direct {v0, v1, v8}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->setAvg(Lcom/keephealth/android/model/bean/StepDetailVO;I)V

    goto :goto_25c

    .line 221
    :cond_220
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v4, v4, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v4, v4, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :goto_25c
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalData:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v5, v5, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalCalory()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35a

    .line 195
    :cond_27d
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalData:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v14, v14, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalStepCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvTotalTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f100758

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10077a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    sget-object v2, Lcom/keephealth/android/ui/main/activity/DetailActivity$3;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v8, :cond_31f

    if-eq v2, v10, :cond_2e2

    if-eq v2, v6, :cond_2e2

    if-eq v2, v4, :cond_2e2

    goto :goto_35a

    .line 209
    :cond_2e2
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    .line 212
    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->setAvg(Lcom/keephealth/android/model/bean/StepDetailVO;I)V

    goto :goto_35a

    :cond_31f
    const/4 v2, 0x0

    .line 199
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvUnit2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2Title:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData1:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tvData2:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->healthSport:Lcom/keephealth/android/greendao/bean/HealthSport;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSport;->getTotalActiveTime()I

    move-result v3

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_35a
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->items:Ljava/util/List;

    iget-object v1, v1, Lcom/keephealth/android/model/bean/StepDetailVO;->dates:Ljava/util/List;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v2, v3, v1, v4}, Lcom/keephealth/android/views/DetailSportChart;->initDatas(Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/model/bean/DetailType;)V

    :cond_365
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

    .line 370
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 371
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    .line 372
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

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

    .line 381
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 382
    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    .line 383
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 384
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 385
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 386
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 387
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailPresenter;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    :cond_4f
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0031

    return v0
.end method

.method public initView()V
    .registers 8

    .line 295
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f09029f

    .line 296
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09051a

    .line 297
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 298
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->barBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 299
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 300
    invoke-static {p0}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 301
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->barBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DETAILTYPE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 303
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    .line 304
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    if-eqz v0, :cond_69

    .line 306
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 308
    :cond_69
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->c:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    if-eqz v0, :cond_128

    .line 312
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailActivity$3;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f100259

    const v4, 0x7f10076a

    const v5, 0x7f1001e5

    if-eq v0, v2, :cond_fb

    if-eq v0, v3, :cond_d3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_ab

    goto/16 :goto_128

    .line 324
    :cond_ab
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    goto :goto_128

    .line 319
    :cond_d3
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_128

    .line 314
    :cond_fb
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 316
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 330
    :cond_128
    :goto_128
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 331
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090484,
            0x7f090715,
            0x7f09068a,
            0x7f09071b,
            0x7f09029f,
            0x7f090485,
            0x7f090486,
            0x7f090487,
            0x7f0902cd
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09029f

    if-eq p1, v0, :cond_ae

    const v0, 0x7f0902cd

    if-eq p1, v0, :cond_9d

    const v0, 0x7f090640

    if-eq p1, v0, :cond_9d

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_b2

    goto/16 :goto_b1

    .line 127
    :pswitch_1c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 130
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/DetailSportChart;->isAddAvgText(Z)V

    .line 131
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getYearMonth()Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    goto/16 :goto_b1

    .line 120
    :pswitch_3c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/DetailSportChart;->isAddAvgText(Z)V

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getSixMonth()Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    goto :goto_b1

    .line 113
    :pswitch_5b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/DetailSportChart;->isAddAvgText(Z)V

    .line 116
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 117
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getOneMonth(I)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    goto :goto_b1

    .line 106
    :pswitch_7a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/DetailSportChart;->isAddAvgText(Z)V

    .line 107
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->detailTimeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mSearchDate:Ljava/util/Date;

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    goto :goto_b1

    .line 92
    :cond_9d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailActivity$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity;)V

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 103
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_b1

    .line 88
    :cond_ae
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->finish()V

    :goto_b1
    return-void

    :pswitch_data_b2
    .packed-switch 0x7f090484
        :pswitch_7a
        :pswitch_5b
        :pswitch_3c
        :pswitch_1c
    .end packed-switch
.end method

.method protected updateBySelected(Ljava/util/Date;Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 6

    .line 78
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/base/BaseCalendarActivity;->updateBySelected(Ljava/util/Date;Lcom/ldf/calendar/model/CalendarDate;)V

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailPresenter;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v1, p2, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p2, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget p2, p2, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, p2}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/keephealth/android/persenter/main/DetailPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity;->updateByDate(Lcom/keephealth/android/model/bean/StepDetailVO;)V

    return-void
.end method
