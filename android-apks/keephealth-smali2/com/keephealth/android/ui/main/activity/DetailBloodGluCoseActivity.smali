.class public Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailBloodGluCoseActivity.java"

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


# static fields
.field private static final DETAIL_DATE_KEY2:Ljava/lang/String; = "bloodglucose"


# instance fields
.field barLine:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

.field img_index_dian:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090231
    .end annotation
.end field

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

.field lineColor:I

.field private lineColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field llLenger:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090382
    .end annotation
.end field

.field mBarChart:Lcom/github/mikephil/charting/charts/BarChart;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d8
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

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field private selectIndex:I

.field set1:Lcom/github/mikephil/charting/data/BarDataSet;

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

    .line 75
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selectIndex:I

    .line 322
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->lineColors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)Lcom/keephealth/android/model/bean/DetailTimeType;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selectIndex:I

    return p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    const/4 v4, 0x2

    .line 374
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    const/4 v3, 0x5

    .line 375
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 379
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 10

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 241
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 242
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$6;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

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

    .line 287
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getYearMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 291
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 295
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 273
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getSixMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 277
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 280
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 258
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getOneMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1eb

    .line 244
    :cond_17c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    iget v7, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 248
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 249
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1eb
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "bloodglucose"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
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

    .line 339
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 343
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 344
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 345
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    .line 346
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 347
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 349
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_7a
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

    .line 355
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 359
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    const/4 v2, 0x2

    .line 360
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    const/4 v0, 0x5

    .line 361
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    .line 362
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 364
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_7a
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0032

    return v0
.end method

.method protected initView()V
    .registers 8

    .line 140
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "bloodglucose"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_29

    return-void

    .line 147
    :cond_29
    const-string v2, "BLOOD_GLUCOSE_DATA"

    invoke-static {p0, v2}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    if-eqz v2, :cond_84

    .line 149
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10044c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValueTemp()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mmol/L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmol/L"

    invoke-virtual {p0, v3, v4}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_84
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->barLine:Landroid/widget/ImageView;

    const v3, 0x7f0d0119

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->llLenger:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    .line 161
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    .line 162
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    .line 163
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 164
    iput-boolean v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showNewValue:Z

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 203
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v4, 0x0

    .line 204
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v5, 0x4

    .line 205
    invoke-virtual {v0, v5, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 209
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 214
    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 215
    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 216
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 217
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 218
    invoke-virtual {v0, v5, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 223
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 227
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 228
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "calibrationCanBefore"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    .line 229
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "calibrationCanBack"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailBloodGluCoseActivity(Landroid/view/View;)V
    .registers 3

    .line 167
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 169
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 171
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 175
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

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

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 317
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 314
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 311
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 308
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

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
    .registers 2

    .line 618
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 619
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showNewValue:Z

    return-void
.end method

.method public onNothingSelected()V
    .registers 3

    .line 614
    const-string v0, "gfre3e"

    const-string v1, "\u6ca1\u6709\u88ab\u9009\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 5

    .line 598
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mmol/L"

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 600
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p1

    .line 601
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->barLine:Landroid/widget/ImageView;

    .line 602
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 604
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 605
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result p2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 p2, 0x5

    .line 606
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 607
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->barLine:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->img_index_dian:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 384
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 385
    new-array v1, v1, [Ljava/lang/String;

    .line 387
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 389
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    .line 402
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 389
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 405
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heartRateDetailVO.avgValue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fr33e"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "heartRateDetailVO.minValue:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AppApplication.calibrationCanBefore:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AppApplication.calibrationCanBack:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v4, :cond_50

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->changeDateUpdateUI()V

    goto :goto_59

    .line 416
    :cond_50
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvDate:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v4, v4, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :goto_59
    iget v2, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    const-string v4, "hfrr544"

    const v5, 0x7f10044c

    const-string v6, " mmol/L"

    const-string v7, "-- mmol/L"

    const-string v8, "mmol/L"

    if-eqz v2, :cond_da

    .line 419
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvRange:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    sget v11, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v11, v11

    sget v12, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    sget v11, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v11, v11

    sget v12, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvAvg:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    sget v11, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v11, v11

    sget v12, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10b

    .line 422
    :cond_da
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-boolean v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showNewValue:Z

    if-eqz v2, :cond_10b

    .line 425
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const-string v2, "null_1"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_10b
    :goto_10b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 434
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "heartRateDetailVO.items.size():"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ftrd4e"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v10, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, "%02d"

    const/4 v12, 0x0

    if-nez v10, :cond_1fb

    .line 436
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v10, v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 437
    iget-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v13, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v10, v13, :cond_18b

    .line 438
    iget-object v10, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->itemsDay:Ljava/util/List;

    move v10, v12

    :goto_150
    const/16 v13, 0x18

    if-ge v10, v13, :cond_1f2

    .line 440
    new-instance v13, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 441
    invoke-virtual {v13, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 442
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ":00"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 443
    iget-object v5, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const v5, 0x7f10044c

    goto :goto_150

    .line 445
    :cond_18b
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v10, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v5, v10, :cond_1c2

    .line 446
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 447
    invoke-virtual {v5, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 448
    sget-object v10, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v10, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 449
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 450
    invoke-virtual {v10, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 451
    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 452
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v5, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f2

    .line 455
    :cond_1c2
    new-instance v5, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 456
    invoke-virtual {v5, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 457
    sget-object v10, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v10, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 458
    new-instance v10, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v10}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 459
    invoke-virtual {v10, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 460
    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 461
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v5, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_1f2
    :goto_1f2
    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->lineColor:I

    goto :goto_204

    .line 466
    :cond_1fb
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->lineColors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 467
    iget-object v5, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->itemsDay:Ljava/util/List;

    .line 470
    :goto_204
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v10, v12

    .line 472
    :goto_20d
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_540

    .line 473
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 475
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v14, v10

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v12

    sget v1, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v1, v1

    move-object/from16 v18, v2

    sget v2, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v2, v2

    invoke-static {v12, v1, v2}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v15, v14, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 478
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    if-nez v1, :cond_24b

    .line 479
    invoke-virtual {v15, v7}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v15, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    move-object v14, v11

    goto :goto_275

    .line 483
    :cond_24b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v2

    sget v12, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v12, v12

    sget v14, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v14, v14

    invoke-static {v2, v12, v14}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v2

    move-object v14, v11

    float-to-double v11, v2

    invoke-static {v11, v12}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 484
    iput v10, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selectIndex:I

    .line 487
    :goto_275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showNewValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showNewValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showNewValue:Z

    if-eqz v1, :cond_48d

    .line 489
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    const-string v2, "  "

    if-eqz v1, :cond_2ea

    .line 490
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v19, v14

    const v14, 0x7f10044c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->heartRateData:Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValueTemp()D

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2e0
    move-object/from16 v21, v5

    move-object/from16 v20, v7

    move-object/from16 v12, v19

    move-object/from16 v19, v3

    goto/16 :goto_494

    :cond_2ea
    move-object/from16 v19, v14

    .line 493
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    if-nez v1, :cond_311

    .line 494
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f10044c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const-string v1, "null_2"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e0

    .line 498
    :cond_311
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 500
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "-"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    iget v12, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachYear:I

    move-object/from16 v20, v7

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const-string v14, ":"

    if-ne v12, v7, :cond_3bf

    iget v7, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachMonth:I

    const/4 v12, 0x2

    .line 502
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v17, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v7, v12, :cond_3bf

    iget v7, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mSeachDay:I

    const/4 v12, 0x5

    .line 503
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v7, v1, :cond_3bf

    .line 504
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10044c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v12, v19

    invoke-static {v12, v7}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    const v5, 0x7f10044c

    goto :goto_416

    :cond_3bf
    move-object/from16 v12, v19

    .line 506
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvTagNew:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v21, v5

    const v5, 0x7f10044c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_416
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u65b0\u503c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u6700\u65b0\u503c2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    sget v7, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v7, v7

    sget v11, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v11, v11

    invoke-static {v3, v7, v11}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v3

    move-object v7, v6

    float-to-double v5, v3

    invoke-static {v5, v6}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v3

    sget v5, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v5, v5

    sget v6, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v6, v6

    invoke-static {v3, v5, v6}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_495

    :cond_48d
    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v20, v7

    move-object v12, v14

    :goto_494
    move-object v7, v6

    .line 514
    :goto_495
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v2, :cond_509

    .line 515
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_501

    .line 516
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "01"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "\n"

    if-nez v1, :cond_4d5

    if-nez v10, :cond_4bc

    goto :goto_4d5

    .line 519
    :cond_4bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_524

    .line 517
    :cond_4d5
    :goto_4d5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_524

    .line 522
    :cond_501
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_524

    .line 524
    :cond_509
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v2, :cond_51d

    .line 525
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_524

    .line 527
    :cond_51d
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :goto_524
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    move-object/from16 v1, v18

    .line 530
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object v2, v1

    move-object v6, v7

    move-object v11, v12

    move-object/from16 v3, v19

    move-object/from16 v7, v20

    move-object/from16 v5, v21

    const/4 v12, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_20d

    :cond_540
    move-object v1, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasRateValue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 542
    iput-boolean v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->showNewValue:Z

    .line 543
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 544
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 545
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 546
    const-string v4, "#999999"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 547
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 548
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$4;

    invoke-direct {v2, v0, v9}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 554
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/4 v2, 0x1

    .line 555
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 556
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v5, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v4, v5, :cond_59a

    const/16 v4, 0xc

    .line 557
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/4 v4, 0x5

    goto :goto_59e

    :cond_59a
    const/4 v4, 0x5

    .line 559
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 561
    :goto_59e
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaxLabels(I)V

    .line 563
    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "values2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gde2ew"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "Statistics Vienna 2014"

    invoke-direct {v3, v1, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 568
    const-string v1, "#FFD789"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 569
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 570
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 571
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 572
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "#FFAF13"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 574
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 577
    new-instance v2, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4, v3}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v2, -0x1

    .line 578
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    const/high16 v2, 0x41100000    # 9.0f

    .line 579
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarData;->setValueTextSize(F)V

    .line 580
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 582
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 583
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 584
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 585
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 586
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 587
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$5;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
