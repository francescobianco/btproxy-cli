.class public Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailStreeCoseActivity2.java"

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

.field set2:Lcom/github/mikephil/charting/data/BarDataSet;

.field set3:Lcom/github/mikephil/charting/data/BarDataSet;

.field set4:Lcom/github/mikephil/charting/data/BarDataSet;

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

.field tvValueUnit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09070d
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

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selectIndex:I

    .line 312
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->lineColors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;I)I
    .registers 2

    .line 70
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;I)I
    .registers 2

    .line 70
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;I)I
    .registers 2

    .line 70
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)Lcom/keephealth/android/model/bean/DetailTimeType;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selectIndex:I

    return p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 361
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    const/4 v4, 0x2

    .line 364
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    const/4 v3, 0x5

    .line 365
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 366
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 369
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 10

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 231
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 232
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$6;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

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

    .line 277
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getYearMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 281
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 285
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 263
    :cond_8d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getSixMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 267
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 270
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1eb

    .line 248
    :cond_f1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getOneMonthBloodCose()Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 253
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 255
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1eb

    .line 234
    :cond_17c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    iget v7, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-static {v5, v6, v7}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 238
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 239
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1eb
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/Date;)V
    .registers 4

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v1, "bloodglucose"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
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

    .line 329
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 332
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 333
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 334
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 335
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    .line 336
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 338
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

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

    .line 345
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 348
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 349
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 350
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 351
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    .line 352
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 353
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 354
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    :cond_7a
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c003b

    return v0
.end method

.method protected initView()V
    .registers 8

    .line 136
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->titleName:Landroid/widget/TextView;

    const-string v2, "\u538b\u529b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "bloodglucose"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_20

    return-void

    .line 144
    :cond_20
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->barLine:Landroid/widget/ImageView;

    const v3, 0x7f0d011f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->llLenger:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    .line 153
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    .line 154
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    .line 155
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 156
    iput-boolean v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->showNewValue:Z

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v3, 0x42f00000    # 120.0f

    .line 195
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v4, 0x0

    .line 196
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v5, 0x4

    .line 197
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 203
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 206
    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 207
    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 208
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 209
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 210
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 211
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 215
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/DetailHrPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    invoke-static {v3, v4, v5}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/persenter/main/DetailHrPresenter;->getDetailBloodCoseCurrent(Lcom/keephealth/android/model/bean/DetailTimeType;Ljava/util/Date;)Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailStreeCoseActivity2(Landroid/view/View;)V
    .registers 3

    .line 159
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 160
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 161
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 163
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 167
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

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

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 307
    :sswitch_8
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 304
    :sswitch_e
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 301
    :sswitch_14
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    goto :goto_1f

    .line 298
    :sswitch_1a
    sget-object p1, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

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

    .line 620
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 621
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->showNewValue:Z

    return-void
.end method

.method public onNothingSelected()V
    .registers 3

    .line 616
    const-string v0, "gfre3e"

    const-string v1, "\u6ca1\u6709\u88ab\u9009\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 5

    .line 598
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u663e\u793a\u7684\u503c\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fr33re"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 601
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvValueUnit:Landroid/widget/TextView;

    const-string v0, "\u6b63\u5e38"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p1

    .line 603
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->barLine:Landroid/widget/ImageView;

    .line 604
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 606
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 607
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result p2

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 p2, 0x5

    .line 608
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 609
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->barLine:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->img_index_dian:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 374
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 375
    new-array v1, v1, [Ljava/lang/String;

    .line 377
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 379
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)V

    .line 392
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 379
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 395
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 401
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v3, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v2, v3, :cond_e

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->changeDateUpdateUI()V

    goto :goto_17

    .line 404
    :cond_e
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->mainVO:Lcom/keephealth/android/views/MainVO;

    iget-object v3, v3, Lcom/keephealth/android/views/MainVO;->date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_17
    iget v2, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    const-string v3, "hfrr544"

    const v4, 0x7f10044c

    const-string v5, "-- "

    const-string v6, " "

    const-string v7, ""

    if-eqz v2, :cond_6b

    .line 407
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvRange:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->minValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->maxValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->avgValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9c

    .line 410
    :cond_6b
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvRange:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-boolean v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->showNewValue:Z

    if-eqz v2, :cond_9c

    .line 413
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    const-string v2, "null_1"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_9c
    :goto_9c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 421
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget-object v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, "%02d"

    const/4 v11, 0x0

    if-nez v9, :cond_17e

    .line 426
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v9, v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 427
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v9, v12, :cond_10e

    .line 428
    iget-object v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->itemsDay:Ljava/util/List;

    move v9, v11

    :goto_d6
    const/16 v12, 0x18

    if-ge v9, v12, :cond_175

    .line 430
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 431
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 432
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 433
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_d6

    .line 435
    :cond_10e
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v12, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v9, v12, :cond_145

    .line 436
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 437
    invoke-virtual {v9, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 438
    sget-object v12, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 439
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 440
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 441
    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 442
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_175

    .line 445
    :cond_145
    new-instance v9, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 446
    invoke-virtual {v9, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 447
    sget-object v12, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 448
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;-><init>()V

    .line 449
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setHeartRaveValue(I)V

    .line 450
    sget-object v13, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->setRemark(Ljava/lang/String;)V

    .line 451
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_175
    :goto_175
    const-string v9, "#00000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->lineColor:I

    goto :goto_187

    .line 456
    :cond_17e
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->lineColors:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 457
    iget-object v9, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iput-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->itemsDay:Ljava/util/List;

    .line 460
    :goto_187
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 461
    invoke-interface {v9}, Ljava/util/List;->clear()V

    move v12, v11

    .line 462
    :goto_190
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_45d

    .line 463
    iget-object v13, v1, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 464
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v11, "healthBloodItem.getHeartRaveValue():"

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "ftrd4e"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v14, v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v11, v14, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 469
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    if-nez v4, :cond_1e5

    .line 470
    invoke-virtual {v11, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 472
    invoke-virtual {v11, v4}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    goto :goto_214

    .line 474
    :cond_1e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/github/mikephil/charting/data/BarEntry;->setShowData(Ljava/lang/String;)V

    .line 477
    iput v12, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selectIndex:I

    .line 479
    :goto_214
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/github/mikephil/charting/data/BarEntry;->setShowTime(Ljava/lang/String;)V

    .line 480
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "showNewValue:"

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->showNewValue:Z

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "fr33e"

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-boolean v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->showNewValue:Z

    if-eqz v4, :cond_3c0

    .line 483
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    if-nez v4, :cond_25e

    .line 484
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f10044c

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const-string v4, "null_2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c0

    .line 488
    :cond_25e
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 490
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "  "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "-"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 491
    iget v14, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachYear:I

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string v15, ":"

    if-ne v14, v1, :cond_306

    iget v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachMonth:I

    const/4 v14, 0x2

    .line 492
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    if-ne v1, v14, :cond_306

    iget v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mSeachDay:I

    const/4 v14, 0x5

    .line 493
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_306

    .line 494
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v17, v2

    const v2, 0x7f10044c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f10044c

    goto :goto_359

    :cond_306
    move-object/from16 v17, v2

    .line 496
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f10044c

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHour()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMinuter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :goto_359
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

    .line 499
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    sget v11, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v11, v11

    sget v15, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v15, v15

    invoke-static {v4, v11, v15}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v4

    float-to-double v14, v4

    invoke-static {v14, v15}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c2

    :cond_3c0
    :goto_3c0
    move-object/from16 v17, v2

    .line 503
    :goto_3c2
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v2, :cond_436

    .line 504
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_42e

    .line 505
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v11, "01"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "\n"

    if-nez v1, :cond_402

    if-nez v12, :cond_3e9

    goto :goto_402

    .line 508
    :cond_3e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_451

    .line 506
    :cond_402
    :goto_402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x5

    invoke-virtual {v4, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_451

    .line 511
    :cond_42e
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_451

    .line 513
    :cond_436
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v2, :cond_44a

    .line 514
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_451

    .line 516
    :cond_44a
    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_451
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    const v4, 0x7f10044c

    const/4 v11, 0x0

    goto/16 :goto_190

    :cond_45d
    move-object/from16 v17, v2

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectIndex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->selectIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fr33re"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->showNewValue:Z

    if-eqz v1, :cond_4ad

    .line 524
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4a4

    .line 525
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4ad

    .line 527
    :cond_4a4
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4ad
    :goto_4ad
    const/4 v1, 0x0

    .line 531
    iput-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->showNewValue:Z

    .line 532
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 533
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 534
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 535
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 536
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 537
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4e1

    const/high16 v1, -0x41000000    # -0.5f

    .line 538
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 539
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 540
    invoke-virtual {v2, v3, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    goto :goto_4f6

    :cond_4e1
    const/4 v1, 0x0

    .line 542
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 543
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 544
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 546
    :goto_4f6
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$4;

    invoke-direct {v1, v0, v8}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 552
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 553
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 554
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v4, :cond_513

    const/16 v1, 0xc

    .line 555
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    const/4 v1, 0x5

    goto :goto_517

    :cond_513
    const/4 v1, 0x5

    .line 557
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 559
    :goto_517
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaxLabels(I)V

    .line 561
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "values2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gde2ew"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v3, "Statistics Vienna 2014"

    invoke-direct {v2, v4, v3}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 566
    const-string v3, "#51E50F"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 568
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 569
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 570
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 571
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "#51E52F"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 573
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 577
    new-instance v1, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v7, v3}, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;-><init>(ZLjava/lang/String;I)V

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/4 v1, -0x1

    .line 578
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    .line 579
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarData;->setValueTextSize(F)V

    .line 580
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarData;->setDrawValues(Z)V

    .line 582
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraBottomOffset(F)V

    .line 583
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v3, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/BarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 584
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 585
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 586
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 587
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$5;

    invoke-direct {v2, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity2;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
