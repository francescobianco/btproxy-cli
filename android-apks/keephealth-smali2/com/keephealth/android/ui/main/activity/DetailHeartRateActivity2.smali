.class public Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailHeartRateActivity2.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/DetailHrPresenter;",
        ">;",
        "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;"
    }
.end annotation


# instance fields
.field TvRealTimeValue:Landroid/widget/TextView;

.field barLine:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d8
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field handler:Landroid/os/Handler;

.field heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

.field img_index_dian:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090231
    .end annotation
.end field

.field private isGoIn:Z

.field private isQuit:Z

.field private isSendGoIn:Z

.field private itemsDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;",
            ">;"
        }
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

.field llLenger:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090382
    .end annotation
.end field

.field private mSeachDay:I

.field private mSeachMonth:I

.field private mSeachYear:I

.field private onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field rlAvg:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904db
    .end annotation
.end field

.field rlCurrentHeartRate:Landroid/widget/RelativeLayout;

.field rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field showData:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09056a
    .end annotation
.end field

.field private showNewValue:Z

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field tvAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061d
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

.field tvNewValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068f
    .end annotation
.end field

.field tvNewValue2:Landroid/widget/TextView;

.field tvRange:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906a6
    .end annotation
.end field

.field tvSixMonth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906c1
    .end annotation
.end field

.field tvTagAvg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e7
    .end annotation
.end field

.field tvTagNew:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e8
    .end annotation
.end field

.field tvTagNewTime:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f2
    .end annotation
.end field

.field tvValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09070c
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

    .line 87
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isSendGoIn:Z

    .line 327
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isGoIn:Z

    .line 328
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isQuit:Z

    .line 494
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Ljava/lang/String;)V
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isGoIn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Z)Z
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isGoIn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Ljava/lang/String;)V
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isSendGoIn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Z)Z
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isSendGoIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isQuit:Z

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Z)Z
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isQuit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)I
    .registers 1

    .line 87
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;I)I
    .registers 2

    .line 87
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)I
    .registers 1

    .line 87
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$602(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;I)I
    .registers 2

    .line 87
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)I
    .registers 1

    .line 87
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;I)I
    .registers 2

    .line 87
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    return p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)Lcom/keephealth/android/model/bean/DetailTimeType;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 547
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    const/4 v4, 0x2

    .line 550
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    const/4 v3, 0x5

    .line 551
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 552
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 555
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private initListener()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setHandler()V
    .registers 3

    .line 268
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$2;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->handler:Landroid/os/Handler;

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 10

    .line 412
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 413
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 414
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$8;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060113

    const v2, 0x7f08006d

    const v3, 0x7f060137

    const/4 v4, 0x0

    if-eq p1, v0, :cond_17c

    const/4 v0, 0x2

    const/16 v5, 0x8

    if-eq p1, v0, :cond_f1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    goto/16 :goto_1eb

    .line 459
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getYearMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 467
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 445
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getSixMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 449
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 452
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 430
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getOneMonth()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 435
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 437
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1eb

    .line 416
    :cond_17c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    iget v7, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 420
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 421
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1eb
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method changeNextDay()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902bd
        }
    .end annotation

    const v0, 0x7f0902bd

    const-wide/16 v1, 0x1f4

    .line 511
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 513
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 514
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 515
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 516
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 517
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    .line 518
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz v0, :cond_65

    .line 519
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 520
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 521
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 523
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_7c
    return-void
.end method

.method changePreDay()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902c5
        }
    .end annotation

    const v0, 0x7f0902c5

    const-wide/16 v1, 0x1f4

    .line 529
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 531
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 533
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 534
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 535
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    .line 536
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz v0, :cond_65

    .line 537
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 538
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 539
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 541
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_7c
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0038

    return v0
.end method

.method protected initView()V
    .registers 9

    .line 155
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "DETAIL_DATE_KEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_29

    return-void

    :cond_29
    const v2, 0x7f0904e4

    .line 162
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    const v2, 0x7f090508

    .line 163
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    const v2, 0x7f0906ea

    .line 164
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNewTime:Landroid/widget/TextView;

    const v2, 0x7f090690

    .line 165
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue2:Landroid/widget/TextView;

    const v2, 0x7f090013

    .line 166
    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->TvRealTimeValue:Landroid/widget/TextView;

    .line 168
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_78

    .line 169
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/DeviceModel;->isManualHeartRateVariability()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 170
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_82

    .line 173
    :cond_78
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    :goto_82
    const-string v2, "HEART_RATE_DATA"

    invoke-static {p0, v2}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v2, :cond_10c

    .line 178
    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/keephealth/android/util/TimeUtil;->isSameDay(JJ)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 179
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime2(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 181
    :cond_aa
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNewTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_b5
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bpm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "bpm"

    invoke-virtual {p0, v4, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNew:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_10c
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->barLine:Landroid/widget/ImageView;

    const v4, 0x7f0d011b

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->llLenger:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 195
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    .line 196
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    .line 197
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    .line 198
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 199
    iput-boolean v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->showNewValue:Z

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 235
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v1, 0x43480000    # 200.0f

    .line 236
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v4, 0x0

    .line 237
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v5, 0x4

    .line 238
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 239
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 240
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    const/16 v6, 0xdd

    .line 241
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 242
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 245
    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 246
    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 248
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 249
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 250
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 251
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 252
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 253
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLinesBehindData(Z)V

    .line 254
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 263
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->initListener()V

    .line 264
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setHandler()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailHeartRateActivity2(Landroid/view/View;)V
    .registers 3

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 204
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 206
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 210
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_26
    :goto_26
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090648,
            0x7f0906c1,
            0x7f09068a,
            0x7f09071b
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 489
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 486
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 483
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 480
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    :goto_1f
    return-void

    :sswitch_data_20
    .sparse-switch
        0x7f090648 -> :sswitch_1a
        0x7f09068a -> :sswitch_14
        0x7f0906c1 -> :sswitch_e
        0x7f09071b -> :sswitch_8
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 4

    .line 857
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    .line 858
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isGoIn:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 859
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->isGoIn:Z

    .line 860
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getRealTimeHealth(II)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 862
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->handler:Landroid/os/Handler;

    :cond_1d
    return-void
.end method

.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 8

    .line 767
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bpm"

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 769
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/LineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 770
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    .line 772
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->barLine:Landroid/widget/ImageView;

    .line 773
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    iget-wide v2, p2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v2, v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 775
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 776
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getHeight()I

    move-result v1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v1, 0x5

    .line 777
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 778
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->barLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    .line 782
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-wide v2, p2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v2, v2

    add-int/lit8 v2, v2, -0xb

    iget-wide v3, p2, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-int p2, v3

    add-int/lit8 p2, p2, -0xc

    invoke-virtual {v1, v2, p2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 784
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v1, 0x1a

    .line 785
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 786
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 787
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "itemsDay:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FG43"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v2, "--"

    const/16 v3, 0x8

    if-ne p2, v1, :cond_fd

    .line 791
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    if-nez p2, :cond_d2

    .line 792
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 794
    :cond_d2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f6

    .line 795
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_ef

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 796
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 798
    :cond_ef
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 801
    :cond_f6
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 804
    :cond_fd
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p2, v1, :cond_15a

    .line 805
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    if-nez p2, :cond_10e

    .line 806
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 808
    :cond_10e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "infoMon:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "GG33"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_153

    .line 810
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14c

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14c

    .line 811
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 813
    :cond_14c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 816
    :cond_153
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c9

    .line 819
    :cond_15a
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p2, v1, :cond_192

    .line 820
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    if-nez p2, :cond_16a

    .line 821
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c9

    .line 823
    :cond_16a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_18c

    .line 824
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_186

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_186

    .line 825
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c9

    .line 827
    :cond_186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c9

    .line 830
    :cond_18c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c9

    .line 833
    :cond_192
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p2, v1, :cond_1c9

    .line 834
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    if-nez p2, :cond_1a2

    .line 835
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c9

    .line 837
    :cond_1a2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1c4

    .line 838
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1be

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1be

    .line 839
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c9

    .line 841
    :cond_1be
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c9

    .line 844
    :cond_1c4
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c9
    :goto_1c9
    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 560
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 561
    new-array v1, v1, [Ljava/lang/String;

    .line 563
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 565
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;)V

    .line 578
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 565
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 581
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 585
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v3, :cond_e

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->changeDateUpdateUI()V

    goto :goto_17

    .line 588
    :cond_e
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :goto_17
    iget v2, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    const v3, 0x7f10044c

    const-string v4, " bpm"

    const-string v5, "-- bpm"

    const-string v6, "bpm"

    if-eqz v2, :cond_69

    .line 591
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvRange:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_95

    .line 594
    :cond_69
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-boolean v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->showNewValue:Z

    if-eqz v2, :cond_95

    .line 597
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    :cond_95
    :goto_95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 605
    iget-object v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "#00000000"

    const-string v10, "%02d"

    const/4 v11, 0x0

    if-nez v8, :cond_166

    .line 606
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 607
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v8, v12, :cond_fa

    .line 608
    iget-object v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    move v8, v11

    :goto_c2
    const/16 v12, 0x18

    if-ge v8, v12, :cond_161

    .line 610
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 611
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 612
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":00"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 613
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_c2

    .line 615
    :cond_fa
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v8, v12, :cond_131

    .line 616
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 617
    invoke-virtual {v8, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 618
    sget-object v12, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 619
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 620
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 621
    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 622
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_161

    .line 625
    :cond_131
    new-instance v8, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 626
    invoke-virtual {v8, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 627
    sget-object v12, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 628
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 629
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 630
    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 631
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_161
    :goto_161
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    goto :goto_170

    .line 636
    :cond_166
    iget-object v8, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->itemsDay:Ljava/util/List;

    .line 637
    const-string v8, "#FF3C00"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    :goto_170
    move v12, v11

    .line 639
    :goto_171
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3f8

    .line 640
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 641
    new-instance v11, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v14, v12

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v14, v15}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 642
    invoke-virtual {v11, v13}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 643
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v14

    if-nez v14, :cond_199

    .line 644
    invoke-virtual {v11, v5}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    goto :goto_1b1

    .line 646
    :cond_199
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    .line 648
    :goto_1b1
    iget-boolean v14, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->showNewValue:Z

    if-eqz v14, :cond_348

    .line 649
    iget-object v14, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    const-string v15, "  "

    if-eqz v14, :cond_215

    .line 650
    iget-object v14, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v17, v9

    const v9, 0x7f10044c

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20c
    move-object/from16 v18, v5

    move/from16 v19, v8

    const v8, 0x7f10044c

    goto/16 :goto_34f

    :cond_215
    move-object/from16 v17, v9

    .line 653
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    if-nez v1, :cond_237

    .line 654
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f10044c

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20c

    .line 657
    :cond_237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "-"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    iget v14, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachYear:I

    move-object/from16 v18, v5

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string v15, ":"

    if-ne v14, v5, :cond_2d6

    iget v5, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachMonth:I

    const/4 v14, 0x2

    .line 660
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    if-ne v5, v14, :cond_2d6

    iget v5, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->mSeachDay:I

    const/4 v14, 0x5

    .line 661
    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v5, v1, :cond_2d6

    .line 662
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f10044c

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v19, v8

    const v8, 0x7f10044c

    goto :goto_329

    .line 664
    :cond_2d6
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v19, v8

    const v8, 0x7f10044c

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :goto_329
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34f

    :cond_348
    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v17, v9

    move v8, v3

    .line 670
    :goto_34f
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v3, :cond_3c7

    .line 672
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-lt v1, v3, :cond_3be

    .line 673
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v9, "01"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "\n"

    if-nez v1, :cond_392

    if-nez v12, :cond_379

    goto :goto_392

    .line 676
    :cond_379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c5

    .line 674
    :cond_392
    :goto_392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x5

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c5

    .line 679
    :cond_3be
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3c5
    const/4 v5, 0x0

    goto :goto_3e3

    .line 681
    :cond_3c7
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v3, :cond_3db

    .line 682
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e3

    :cond_3db
    const/4 v5, 0x0

    .line 684
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :goto_3e3
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/github/mikephil/charting/data/Entry;->setShowTime(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move v11, v5

    move v3, v8

    move-object/from16 v9, v17

    move-object/from16 v5, v18

    move/from16 v8, v19

    goto/16 :goto_171

    :cond_3f8
    move/from16 v19, v8

    move-object/from16 v17, v9

    move v5, v11

    .line 688
    iput-boolean v5, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->showNewValue:Z

    .line 689
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 690
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 691
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 692
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 693
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 694
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_430

    const/high16 v3, -0x41000000    # -0.5f

    .line 695
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 696
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 697
    invoke-virtual {v1, v4, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    goto :goto_445

    :cond_430
    const/4 v3, 0x0

    .line 699
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 700
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 701
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 703
    :goto_445
    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$6;

    invoke-direct {v3, v0, v7}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 709
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 710
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 711
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v3, v5, :cond_462

    const/16 v3, 0xc

    .line 712
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/4 v3, 0x5

    goto :goto_466

    :cond_462
    const/4 v3, 0x5

    .line 714
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 716
    :goto_466
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaxLabels(I)V

    .line 718
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 720
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v3, "DataSet 1"

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 722
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    move/from16 v8, v19

    .line 723
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 724
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v3, 0x42

    .line 725
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const v3, 0x7f0800e5

    .line 726
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 727
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    .line 728
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 730
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 731
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    const/4 v4, 0x0

    .line 732
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 733
    sget-object v5, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 734
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 736
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 744
    new-instance v5, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v3, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v3, v4

    invoke-direct {v5, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/4 v1, -0x1

    .line 745
    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    .line 746
    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 748
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setExtraBottomOffset(F)V

    .line 749
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v6

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    sget-object v8, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    invoke-direct {v3, v4, v6, v7}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 750
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v3, 0xf

    invoke-virtual {v1, v5, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 751
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 752
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;

    invoke-direct {v3, v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Ljava/util/List;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
