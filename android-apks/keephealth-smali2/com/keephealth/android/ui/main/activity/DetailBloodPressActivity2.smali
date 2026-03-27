.class public Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DetailBloodPressActivity2.java"

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
.field private back:I

.field barLine:Landroid/widget/ImageView;

.field private before:I

.field bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

.field protected clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

.field healthBloodItemInput:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

.field img_index_dian1:Landroid/widget/ImageView;

.field img_index_dian2:Landroid/widget/ImageView;

.field private info6mon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;"
        }
    .end annotation
.end field

.field private infoMon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;"
        }
    .end annotation
.end field

.field private infoss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBloodItem;",
            ">;"
        }
    .end annotation
.end field

.field private infoyear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthBlood;",
            ">;"
        }
    .end annotation
.end field

.field private isFirst:I

.field ivNextDate:Landroid/widget/ImageView;

.field ivPreDate:Landroid/widget/ImageView;

.field llInput:Landroid/widget/LinearLayout;

.field private mSeachDay:I

.field private mSeachMonth:I

.field private mSeachYear:I

.field private onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field rlAvg:Landroid/widget/RelativeLayout;

.field protected selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field showData:Landroid/widget/LinearLayout;

.field private showNewValue:Z

.field private timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

.field tvAllData:Landroid/widget/TextView;

.field tvAvg:Landroid/widget/TextView;

.field tvDate:Landroid/widget/TextView;

.field tvDay:Landroid/widget/TextView;

.field tvInput:Landroid/widget/TextView;

.field tvMonth:Landroid/widget/TextView;

.field tvNewValue:Landroid/widget/TextView;

.field tvSixMonth:Landroid/widget/TextView;

.field tvTagAvg:Landroid/widget/TextView;

.field tvTagNew:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;

.field tvValue:Landroid/widget/TextView;

.field tvYear:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 380
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$8;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->type:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)I
    .registers 1

    .line 78
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)I
    .registers 1

    .line 78
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)I
    .registers 1

    .line 78
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    return p0
.end method

.method static synthetic access$402(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;I)I
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    return p1
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private changeDateUpdateUI()V
    .registers 6

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    const/4 v4, 0x2

    .line 432
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v2, v4, :cond_5c

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    const/4 v3, 0x5

    .line 433
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_5c

    .line 434
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 437
    :cond_5c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivNextDate:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_67
    return-void
.end method

.method private initListener()V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvInput:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAllData:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$7;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    .registers 9

    .line 318
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v0, p1, :cond_5

    return-void

    .line 319
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 320
    sget-object v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$14;->$SwitchMap$com$keephealth$android$model$bean$DetailTimeType:[I

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DetailTimeType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060113

    const v2, 0x7f08006d

    const v3, 0x7f060137

    const/4 v4, 0x0

    if-eq p1, v0, :cond_148

    const/4 v0, 0x2

    const/16 v5, 0x8

    if-eq p1, v0, :cond_e9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_89

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    goto/16 :goto_1ad

    .line 364
    :cond_29
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getOneYearData()V

    .line 368
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 372
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 350
    :cond_89
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getSixMonthData()V

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 357
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1ad

    .line 336
    :cond_e9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivPreDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getMonthData()V

    .line 340
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 342
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1ad

    .line 322
    :cond_148
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivPreDate:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivNextDate:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->rightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    invoke-virtual {p1, v0, v5, v6}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

    .line 326
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 327
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1ad
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;III)V
    .registers 7

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string v2, "YEAR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string p1, "MONTH"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string p1, "DAY"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
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

    .line 397
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayAfterDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 399
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 400
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 401
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 402
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 403
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    .line 404
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 406
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 407
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

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

    .line 413
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_70

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/DateUtil;->getSpecifiedDayBeforeDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 415
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 416
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 417
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    const/4 v2, 0x2

    .line 418
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    const/4 v0, 0x5

    .line 419
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    .line 420
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 422
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

    :cond_70
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0036

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 4

    .line 258
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 259
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x40c

    if-eq v0, v1, :cond_c

    goto :goto_2c

    .line 261
    :cond_c
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->healthBloodItemInput:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz p1, :cond_2c

    .line 263
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->healthBloodItemInput:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->healthBloodItemInput:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    :cond_2c
    :goto_2c
    return-void
.end method

.method protected initView()V
    .registers 8

    .line 129
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    const v0, 0x7f0903d8

    .line 130
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v0, 0x7f09007f

    .line 131
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->barLine:Landroid/widget/ImageView;

    const v0, 0x7f090640

    .line 132
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f0902c5

    .line 133
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivPreDate:Landroid/widget/ImageView;

    const v0, 0x7f0902bd

    .line 134
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->ivNextDate:Landroid/widget/ImageView;

    const v0, 0x7f0906f2

    .line 135
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTime:Landroid/widget/TextView;

    const v0, 0x7f09070c

    .line 136
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvValue:Landroid/widget/TextView;

    const v0, 0x7f09056a

    .line 137
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->showData:Landroid/widget/LinearLayout;

    const v0, 0x7f090648

    .line 138
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDay:Landroid/widget/TextView;

    const v0, 0x7f09068a

    .line 139
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvMonth:Landroid/widget/TextView;

    const v0, 0x7f0906c1

    .line 140
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvSixMonth:Landroid/widget/TextView;

    const v0, 0x7f09071b

    .line 141
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvYear:Landroid/widget/TextView;

    const v0, 0x7f0904db

    .line 142
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0906e7

    .line 143
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagAvg:Landroid/widget/TextView;

    const v0, 0x7f09061d

    .line 144
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAvg:Landroid/widget/TextView;

    const v0, 0x7f0906e8

    .line 145
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagNew:Landroid/widget/TextView;

    const v0, 0x7f09068f

    .line 146
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvNewValue:Landroid/widget/TextView;

    const v0, 0x7f090232

    .line 147
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    const v0, 0x7f090233

    .line 148
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    const v0, 0x7f090379

    .line 149
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->llInput:Landroid/widget/LinearLayout;

    const v0, 0x7f090672

    .line 150
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvInput:Landroid/widget/TextView;

    const v0, 0x7f090619

    .line 151
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAllData:Landroid/widget/TextView;

    .line 152
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_11a

    .line 154
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isManualBPRecording()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvInput:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAllData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_124

    .line 158
    :cond_10f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvInput:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAllData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_124

    .line 162
    :cond_11a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvInput:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAllData:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100178

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_179

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_179

    .line 169
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "YEAR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    .line 170
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    .line 171
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DAY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    .line 173
    :cond_179
    const-string v0, "BLOOD_DATA"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v0

    if-eqz v0, :cond_1dc

    .line 175
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10044c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getHighDataValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mmHg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mmHg"

    invoke-virtual {p0, v0, v3}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_1dc
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 179
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    iput v1, v0, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->barLine:Landroid/widget/ImageView;

    const v1, 0x7f0d011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->showNewValue:Z

    .line 199
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 202
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 203
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 205
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 206
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 207
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, p0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 210
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 217
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    .line 218
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 221
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v3, 0x43480000    # 200.0f

    .line 222
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v4, 0x0

    .line 223
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v5, 0x4

    .line 224
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 225
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 226
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    const/16 v6, 0xdd

    .line 227
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 228
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 230
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 231
    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 232
    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 233
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 234
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 235
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(I)V

    .line 236
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 237
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 238
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 239
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLinesBehindData(Z)V

    .line 240
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 243
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 244
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 245
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->initListener()V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-DetailBloodPressActivity2(Landroid/view/View;)V
    .registers 3

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p1, v0, :cond_26

    .line 187
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    if-nez p1, :cond_11

    .line 188
    new-instance p1, Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    .line 190
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    iput-object v0, p1, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    .line 191
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-eqz p1, :cond_21

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_26

    .line 194
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->clendarDialog:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog()V

    :cond_26
    :goto_26
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 954
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2b

    const/16 p2, 0x64

    if-ne p2, p1, :cond_2b

    if-eqz p3, :cond_2b

    .line 958
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 960
    const-string p2, "year"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 961
    const-string p3, "month"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 962
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 963
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    invoke-virtual {v0, p2, p3, p1}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

    :cond_2b
    return-void
.end method

.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 250
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onResume()V

    .line 251
    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;

    iget v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/persenter/main/BloodPressHistoryPresenter;->getHistoryData(III)V

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 12

    .line 819
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mmHg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_45

    .line 820
    const-string v4, "--/--"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 821
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->before:I

    .line 822
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->back:I

    .line 824
    :cond_45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "show:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gfe332fw"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 828
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 830
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 832
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 834
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->before:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v4

    .line 836
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->back:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 838
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->barLine:Landroid/widget/ImageView;

    .line 839
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-wide v6, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v6, v6

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/LineChart;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 841
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 842
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/LineChart;->getHeight()I

    move-result v5

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v7

    sub-int/2addr v5, v7

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v5, 0x5

    .line 843
    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 844
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->barLine:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    .line 847
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v6

    iget v7, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->before:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_12b

    .line 849
    iget-wide v6, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v2, v6

    add-int/lit8 v2, v2, -0xb

    iget-wide v6, v4, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-int v4, v6

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {v5, v2, v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_152

    .line 851
    :cond_12b
    iget v6, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->isFirst:I

    if-eqz v6, :cond_140

    if-ne v6, v2, :cond_132

    goto :goto_140

    .line 855
    :cond_132
    iget-wide v6, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v2, v6

    add-int/lit8 v2, v2, -0xb

    iget-wide v6, v4, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-int v4, v6

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {v5, v2, v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_152

    .line 852
    :cond_140
    :goto_140
    iget-wide v6, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0xb

    iget-wide v7, v4, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-int v4, v7

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {v5, v6, v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 853
    iget v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->isFirst:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->isFirst:I

    .line 858
    :goto_152
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v4, 0x1a

    .line 859
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 860
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 861
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    .line 864
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result p2

    iget v5, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->back:I

    int-to-float v5, v5

    cmpl-float p2, p2, v5

    if-nez p2, :cond_186

    .line 867
    iget-wide v5, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int p2, v5

    add-int/lit8 p2, p2, -0xb

    iget-wide v0, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0xc

    invoke-virtual {v2, p2, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_193

    .line 869
    :cond_186
    iget-wide v5, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int p2, v5

    add-int/lit8 p2, p2, -0xb

    iget-wide v0, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0xc

    invoke-virtual {v2, p2, v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 871
    :goto_193
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 872
    iput v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 873
    iput v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 874
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->DAY:Lcom/keephealth/android/model/bean/DetailTimeType;

    const-string v1, "--"

    const/16 v2, 0x8

    if-ne p2, v0, :cond_1f5

    .line 877
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoss:Ljava/util/List;

    if-nez p2, :cond_1bb

    .line 878
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 879
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 881
    :cond_1bb
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1e9

    .line 882
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1dd

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1dd

    .line 883
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 886
    :cond_1dd
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 890
    :cond_1e9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 891
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 894
    :cond_1f5
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->ONE_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p2, v0, :cond_266

    .line 895
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoMon:Ljava/util/List;

    if-nez p2, :cond_20b

    .line 896
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 899
    :cond_20b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "infoMon:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoMon:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GG33"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoMon:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_25a

    .line 901
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_24e

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24e

    .line 902
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 903
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 905
    :cond_24e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 909
    :cond_25a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 913
    :cond_266
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p2, v0, :cond_2b3

    .line 914
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->info6mon:Ljava/util/List;

    if-nez p2, :cond_27c

    .line 915
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2fe

    .line 918
    :cond_27c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2a8

    .line 919
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_29d

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29d

    .line 920
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2fe

    .line 923
    :cond_29d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2fe

    .line 927
    :cond_2a8
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2fe

    .line 931
    :cond_2b3
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne p2, v0, :cond_2fe

    .line 932
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoyear:Ljava/util/List;

    if-nez p2, :cond_2c8

    .line 933
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2fe

    .line 936
    :cond_2c8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2f4

    .line 937
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2e9

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e9

    .line 938
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 939
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2fe

    .line 941
    :cond_2e9
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 942
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2fe

    .line 945
    :cond_2f4
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->img_index_dian2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2fe
    :goto_2fe
    return-void
.end method

.method public reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 23
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 471
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoss:Ljava/util/List;

    const/4 v2, 0x1

    .line 472
    iput v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->isFirst:I

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->changeDateUpdateUI()V

    .line 474
    const-string v3, " mmHg"

    const-string v4, "/"

    const v5, 0x7f10044c

    const-string v6, "--/-- mmHg"

    const-string v7, "mmHg"

    if-eqz p2, :cond_64

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v8

    const-wide/16 v9, 0x0

    if-nez v8, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v8

    int-to-double v11, v8

    cmpl-double v8, v11, v9

    if-eqz v8, :cond_64

    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v8

    if-nez v8, :cond_39

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v8

    int-to-double v11, v8

    cmpl-double v8, v11, v9

    if-eqz v8, :cond_64

    .line 476
    :cond_39
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    .line 478
    :cond_64
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-boolean v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->showNewValue:Z

    if-eqz v8, :cond_8b

    .line 480
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvNewValue:Landroid/widget/TextView;

    const-string v9, "-- bpm"

    const-string v10, "bpm"

    invoke-virtual {v0, v9, v10}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_8b
    :goto_8b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 485
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 487
    const-string v11, "#FFD62B"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 488
    const-string v12, "#FFA800"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 489
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    const-string v14, "#00000000"

    const/4 v15, 0x0

    if-nez v13, :cond_de

    .line 490
    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    move v11, v15

    :goto_bb
    const/16 v12, 0x18

    if-ge v11, v12, :cond_d6

    .line 492
    new-instance v12, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-direct {v12}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;-><init>()V

    .line 493
    invoke-virtual {v12, v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setFzValue(I)V

    .line 494
    invoke-virtual {v12, v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setSsValue(I)V

    .line 495
    invoke-virtual {v12, v11}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setHour(I)V

    .line 496
    invoke-virtual {v12, v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->setMinute(I)V

    .line 497
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_bb

    .line 499
    :cond_d6
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 500
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    :cond_de
    move v13, v15

    .line 502
    :goto_df
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_3c2

    .line 503
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 504
    new-instance v2, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v5, v13

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v5, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 505
    new-instance v1, Lcom/github/mikephil/charting/data/Entry;

    move/from16 v16, v11

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v1, v5, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 506
    invoke-virtual {v2, v15}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v1, v15}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 508
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v5

    if-nez v5, :cond_115

    .line 509
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    goto :goto_15d

    .line 512
    :cond_115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    .line 515
    :goto_15d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v14

    const-string v14, "%02d"

    invoke-static {v14, v11}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ":"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v19, v12

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/Entry;->setShowTime(Ljava/lang/String;)V

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/Entry;->setShowTime(Ljava/lang/String;)V

    .line 517
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    iget-boolean v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->showNewValue:Z

    if-eqz v1, :cond_3ad

    .line 522
    const-string v1, "BLOOD_DATA"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v1

    .line 523
    const-string v2, "  "

    if-eqz v1, :cond_27c

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getHighDataValue()I

    move-result v5

    if-eqz v5, :cond_27c

    .line 524
    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f10044c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getHighDataValue()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3ad

    .line 527
    :cond_27c
    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v1

    if-nez v1, :cond_29d

    .line 528
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagNew:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10044c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvNewValue:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3ad

    .line 531
    :cond_29d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    iget v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachYear:I

    move-object/from16 v18, v6

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_335

    iget v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachMonth:I

    const/4 v6, 0x2

    .line 534
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v12

    if-ne v5, v6, :cond_335

    iget v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->mSeachDay:I

    const/4 v6, 0x5

    .line 535
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v5, v1, :cond_335

    .line 536
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f10044c

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f10044c

    goto :goto_382

    .line 538
    :cond_335
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvTagNew:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f10044c

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :goto_382
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvNewValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b2

    :cond_3ad
    :goto_3ad
    move-object/from16 v18, v6

    const v12, 0x7f10044c

    :goto_3b2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move v5, v12

    move/from16 v11, v16

    move-object/from16 v14, v17

    move-object/from16 v6, v18

    move/from16 v12, v19

    const/4 v2, 0x1

    goto/16 :goto_df

    :cond_3c2
    move/from16 v16, v11

    move/from16 v19, v12

    move-object/from16 v17, v14

    .line 546
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 547
    sget-object v2, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 548
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 v2, -0x1000000

    .line 549
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    const/4 v2, 0x0

    .line 550
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 551
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f6

    const/high16 v2, -0x41000000    # -0.5f

    .line 552
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 553
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 554
    invoke-virtual {v1, v3, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    goto :goto_40b

    :cond_3f6
    const/4 v2, 0x0

    .line 556
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 557
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 558
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 561
    :goto_40b
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$10;

    invoke-direct {v2, v0, v10}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$10;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 567
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 568
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    const/4 v2, 0x5

    .line 569
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 570
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 572
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "DataSet 1"

    invoke-direct {v1, v8, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 574
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    move/from16 v12, v19

    .line 575
    invoke-virtual {v1, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 576
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v3, 0x42

    .line 577
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const v4, 0x7f08008f

    .line 578
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 579
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    .line 580
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 582
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    const/4 v4, 0x0

    .line 583
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 584
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 585
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 586
    sget-object v5, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 587
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 589
    new-instance v4, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v5, "DataSet 2"

    invoke-direct {v4, v9, v5}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 590
    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    move/from16 v11, v16

    .line 591
    invoke-virtual {v4, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 592
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 593
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const v2, 0x7f080090

    .line 594
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 595
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 596
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    const/4 v2, 0x0

    .line 598
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 599
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 600
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 601
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 602
    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 603
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 604
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 605
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 606
    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 607
    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 610
    new-instance v3, Lcom/github/mikephil/charting/data/LineData;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v5, v2

    const/4 v1, 0x1

    aput-object v4, v5, v1

    invoke-direct {v3, v5}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/4 v1, -0x1

    .line 611
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    .line 612
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 615
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v4, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/LineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v5

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v6

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    sget-object v9, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 616
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 617
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    move v15, v2

    .line 619
    :goto_4f3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_51c

    move-object/from16 v1, p1

    .line 620
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 621
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reBackDayData:  -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_4f3

    :cond_51c
    move-object/from16 v1, p1

    .line 623
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;

    invoke-direct {v3, v0, v1, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->postDelayed(Ljava/lang/Runnable;J)Z

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

    move/from16 v2, p4

    move/from16 v3, p5

    .line 649
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoMon:Ljava/util/List;

    .line 650
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->info6mon:Ljava/util/List;

    .line 651
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->infoyear:Ljava/util/List;

    .line 652
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v7, p7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff5e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    move-object/from16 v7, p6

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    const-string v4, " mmHg"

    const-string v5, "/"

    const-string v6, "mmHg"

    const-string v7, "--/-- mmHg"

    if-eqz v3, :cond_69

    if-eqz v2, :cond_69

    .line 654
    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAvg:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 656
    :cond_69
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvAvg:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v6}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :goto_72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 660
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 661
    const-string v9, "#FFD62B"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 662
    const-string v10, "#FFA800"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 663
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "#00000000"

    const/4 v13, 0x0

    if-nez v11, :cond_114

    .line 664
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v6}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v9, v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 665
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 666
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 667
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v11, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v6, v11, :cond_e2

    .line 668
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 669
    invoke-virtual {v6, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 670
    invoke-virtual {v6, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 671
    sget-object v11, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    .line 672
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 673
    invoke-virtual {v11, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 674
    invoke-virtual {v11, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 675
    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat4:Ljava/text/SimpleDateFormat;

    sget-object v15, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    .line 676
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_114

    .line 679
    :cond_e2
    new-instance v6, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v6}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 680
    invoke-virtual {v6, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 681
    invoke-virtual {v6, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 682
    sget-object v11, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->endDate:Ljava/util/Date;

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    .line 683
    new-instance v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    invoke-direct {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;-><init>()V

    .line 684
    invoke-virtual {v6, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodFz(I)V

    .line 685
    invoke-virtual {v6, v13}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setAvgBloodSs(I)V

    .line 686
    sget-object v14, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->dateFormat2:Ljava/text/SimpleDateFormat;

    sget-object v15, Lcom/keephealth/android/persenter/sport/BaseTimePresenter;->startDate:Ljava/util/Date;

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/keephealth/android/greendao/bean/HealthBlood;->setReMark(Ljava/lang/String;)V

    .line 687
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_114
    :goto_114
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "size:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "FFD34"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v13

    .line 692
    :goto_12d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_25e

    .line 693
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 694
    new-instance v15, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v13, v6

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v15, v13, v14}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 695
    new-instance v14, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v14, v13, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 696
    invoke-virtual {v15, v11}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 697
    invoke-virtual {v14, v11}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 698
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v1

    if-nez v1, :cond_161

    .line 699
    invoke-virtual {v15, v7}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v14, v7}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    goto :goto_1a9

    .line 702
    :cond_161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodSs()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getAvgBloodFz()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/github/mikephil/charting/data/Entry;->setShowData(Ljava/lang/String;)V

    .line 705
    :goto_1a9
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/github/mikephil/charting/data/Entry;->setShowTime(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/github/mikephil/charting/data/Entry;->setShowTime(Ljava/lang/String;)V

    .line 707
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v13, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v13, :cond_238

    .line 710
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v13, 0x7

    if-lt v1, v13, :cond_22e

    .line 711
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x5

    invoke-virtual {v1, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v15, "01"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v15, "\n"

    if-nez v1, :cond_1ff

    if-nez v6, :cond_1e4

    goto :goto_1ff

    .line 714
    :cond_1e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p6, v4

    goto :goto_255

    .line 712
    :cond_1ff
    :goto_1ff
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x4

    move-object/from16 p6, v4

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x7

    const/4 v13, 0x5

    invoke-virtual {v4, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_255

    :cond_22e
    move-object/from16 p6, v4

    .line 717
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_255

    :cond_238
    move-object/from16 p6, v4

    .line 722
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v4, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v1, v4, :cond_24e

    .line 723
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_255

    .line 725
    :cond_24e
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_255
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, p6

    const/4 v13, 0x0

    goto/16 :goto_12d

    .line 728
    :cond_25e
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 729
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v4, 0x41200000    # 10.0f

    .line 730
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 v4, -0x1000000

    .line 731
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    const/4 v4, 0x0

    .line 732
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 733
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28c

    const/high16 v4, -0x41000000    # -0.5f

    .line 734
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 735
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 736
    invoke-virtual {v1, v5, v5}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    goto :goto_2a1

    :cond_28c
    const/4 v4, 0x0

    .line 738
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 739
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 740
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 742
    :goto_2a1
    new-instance v4, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$12;

    invoke-direct {v4, v0, v8}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$12;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 748
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 749
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 750
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->timeType:Lcom/keephealth/android/model/bean/DetailTimeType;

    sget-object v6, Lcom/keephealth/android/model/bean/DetailTimeType;->YEAR:Lcom/keephealth/android/model/bean/DetailTimeType;

    if-ne v4, v6, :cond_2bd

    const/16 v4, 0xc

    .line 751
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto :goto_2c1

    :cond_2bd
    const/4 v4, 0x5

    .line 753
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 755
    :goto_2c1
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setExtraBottomOffset(F)V

    .line 756
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v6, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/LineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v7

    iget-object v8, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v8

    iget-object v11, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    sget-object v13, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v11, v13}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    invoke-direct {v6, v7, v8, v11}, Lcom/github/mikephil/charting/renderer/CustomXAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 757
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 759
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v4, "DataSet 1"

    invoke-direct {v1, v2, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 761
    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 762
    invoke-virtual {v1, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 763
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const/16 v6, 0x42

    .line 764
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const v7, 0x7f08008f

    .line 765
    invoke-static {v0, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 766
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 769
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    const/4 v7, 0x0

    .line 770
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 771
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 772
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 773
    sget-object v8, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 774
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 776
    new-instance v7, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v8, "DataSet 2"

    invoke-direct {v7, v3, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 777
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 778
    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 779
    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 780
    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const v3, 0x7f080090

    .line 781
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 782
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    invoke-virtual {v7, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    const/4 v3, 0x0

    .line 785
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 786
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 787
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 788
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 789
    sget-object v4, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 790
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 791
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 792
    invoke-virtual {v7, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 793
    sget-object v4, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 794
    sget-object v4, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 797
    new-instance v4, Lcom/github/mikephil/charting/data/LineData;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v6, v3

    aput-object v7, v6, v5

    invoke-direct {v4, v6}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/4 v1, -0x1

    .line 798
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    .line 799
    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 801
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v3, 0xe

    invoke-virtual {v1, v4, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 802
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 803
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$13;

    invoke-direct {v3, v0, v2}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$13;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Ljava/util/List;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 444
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 445
    new-array v1, v1, [Ljava/lang/String;

    .line 447
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 449
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$9;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;)V

    .line 462
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 449
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 465
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
