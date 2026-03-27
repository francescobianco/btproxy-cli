.class public Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "WeightDetailActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;
.implements Lcom/keephealth/android/persenter/main/WeightDetailContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/WeightDetailPresenter;",
        ">;",
        "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;",
        "Lcom/keephealth/android/persenter/main/WeightDetailContract$View;"
    }
.end annotation


# instance fields
.field private aid:I

.field barLine:Landroid/view/View;

.field btnRecord:Landroid/widget/Button;

.field private cardItemCycle1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field private cardItemCycle2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/model/bean/CardBean;",
            ">;"
        }
    .end annotation
.end field

.field img_index_dian:Landroid/widget/ImageView;

.field private mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;

.field private option1:F

.field private option1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private option2List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optionInt:I

.field private optionInt2:I

.field private pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

.field private final recordCode:I

.field rlLayout:Landroid/widget/RelativeLayout;

.field rlTarget:Landroid/widget/RelativeLayout;

.field private selectType:I

.field private selectWeight:F

.field private showWeightData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightData;",
            ">;"
        }
    .end annotation
.end field

.field private timeDelay:I

.field tvBmi:Landroid/widget/TextView;

.field tvDate1:Landroid/widget/TextView;

.field tvDate2:Landroid/widget/TextView;

.field tvNeed:Landroid/widget/TextView;

.field tvSetWeightTarget:Landroid/widget/TextView;

.field tvTragetComplete:Landroid/widget/TextView;

.field tvWeight:Landroid/widget/TextView;

.field tvWeightNeed:Landroid/widget/TextView;

.field tvWeightTarget:Landroid/widget/TextView;

.field private userBean:Lcom/keephealth/android/model/bean/UserBean;

.field weigetTar:F

.field weightChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private weightMin:F

.field private weightTargerData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightTargerData;",
            ">;"
        }
    .end annotation
.end field

.field private weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

.field private weightTargerDataValue:F

.field private weightTarget:Ljava/lang/String;

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/16 v0, 0x2b66

    .line 97
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->recordCode:I

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I

    const/16 v0, 0x64

    .line 105
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->timeDelay:I

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option2List:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 524
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 701
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle1:Ljava/util/ArrayList;

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle2:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;I)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->safeShowCustomCyclePicker(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)F
    .registers 1

    .line 74
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;)Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)I
    .registers 1

    .line 74
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I

    return p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/model/bean/UserBean;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Ljava/util/List;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;F)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/ui/main/bean/WeightTargerData;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method private getMaxWeight()F
    .registers 5

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 280
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 281
    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_7

    .line 283
    :cond_26
    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_7

    :cond_2f
    return v1
.end method

.method private initCustomCyclePicker()V
    .registers 12

    .line 709
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 710
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 712
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 713
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 714
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_6d

    move v0, v1

    :goto_1f
    const/16 v3, 0x127

    if-gt v0, v3, :cond_5b

    .line 716
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle1:Ljava/util/ArrayList;

    new-instance v4, Lcom/keephealth/android/model/bean/CardBean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v0, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " kg"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 719
    :cond_5b
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I

    if-nez v0, :cond_68

    .line 720
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1:F

    goto :goto_cc

    .line 722
    :cond_68
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1:F

    goto :goto_cc

    :cond_6d
    const/16 v0, 0xc

    :goto_6f
    const/16 v3, 0x289

    if-gt v0, v3, :cond_bb

    .line 726
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle1:Ljava/util/ArrayList;

    new-instance v4, Lcom/keephealth/android/model/bean/CardBean;

    int-to-float v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100773

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 729
    :cond_bb
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I

    if-nez v0, :cond_c8

    .line 730
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1:F

    goto :goto_cc

    .line 732
    :cond_c8
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1:F

    .line 735
    :goto_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 737
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    if-eqz v5, :cond_134

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_134

    .line 739
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_134

    move v5, v1

    .line 740
    :goto_119
    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_134

    .line 741
    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1List:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_131

    .line 742
    iput v5, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->optionInt:I

    :cond_131
    add-int/lit8 v5, v5, 0x1

    goto :goto_119

    :cond_134
    move v4, v1

    :goto_135
    const/16 v5, 0xa

    if-ge v4, v5, :cond_164

    .line 749
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle2:Ljava/util/ArrayList;

    new-instance v6, Lcom/keephealth/android/model/bean/CardBean;

    int-to-double v7, v4

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lcom/keephealth/android/model/bean/CardBean;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option2List:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_135

    .line 752
    :cond_164
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option2List:Ljava/util/ArrayList;

    if-eqz v4, :cond_195

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_195

    .line 753
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option2List:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_195

    .line 754
    :goto_176
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option2List:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_195

    .line 755
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option2List:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_192

    .line 756
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->optionInt2:I

    :cond_192
    add-int/lit8 v1, v1, 0x1

    goto :goto_176

    .line 761
    :cond_195
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_19f

    .line 762
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    .line 763
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 765
    :cond_19f
    new-instance v0, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    new-instance v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    const v3, 0x7f0c0188

    .line 1096
    invoke-virtual {v0, v3, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 1113
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 1114
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 1115
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    const v2, -0x333334

    .line 1116
    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setDividerColor(I)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    iget v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->optionInt:I

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->optionInt2:I

    .line 1117
    invoke-virtual {v0, v2, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->setSelectOptions(II)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->build()Lcom/bigkoo/pickerview/view/OptionsPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 1119
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle1:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->cardItemCycle2:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private initData()V
    .registers 16

    .line 385
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->aid:I

    if-nez v0, :cond_5dd

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 386
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->aid:I

    .line 387
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V

    .line 388
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    const-string v2, "kg"

    const/16 v3, 0x12d

    const v4, 0x44264000    # 665.0f

    const/high16 v5, 0x41200000    # 10.0f

    const-string v6, " "

    const-string v7, " kg"

    const v8, 0x7f100773

    if-eqz v0, :cond_85

    .line 389
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v0

    float-to-int v0, v0

    if-le v0, v3, :cond_5a

    .line 390
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v10, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v0

    div-float/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    goto/16 :goto_129

    .line 393
    :cond_5a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v10, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    goto/16 :goto_129

    .line 399
    :cond_85
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e0

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v10}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v10

    invoke-static {v10, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    goto :goto_129

    .line 403
    :cond_e0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v10}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v10

    invoke-static {v10, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    .line 407
    :goto_129
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v0

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    const/16 v10, 0x8

    if-eqz v0, :cond_5ce

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v0

    float-to-double v11, v0

    const-wide/16 v13, 0x0

    cmpl-double v0, v11, v13

    if-nez v0, :cond_145

    goto/16 :goto_5ce

    .line 413
    :cond_145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 414
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 415
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v0

    float-to-int v0, v0

    if-le v0, v3, :cond_182

    .line 416
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v12, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "Kg"

    invoke-virtual {p0, v3, v12}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_227

    .line 418
    :cond_182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v12, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, " Kg"

    invoke-virtual {p0, v3, v12}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_227

    .line 423
    :cond_1a6
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1ef

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v12}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v12

    invoke-static {v12, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v3, v12}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_227

    .line 426
    :cond_1ef
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    invoke-static {v12}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v12

    invoke-static {v12, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v3, v12}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :goto_227
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    const v3, 0x7f100448

    const v12, 0x7f100447

    const-string v13, "-"

    const-string v14, ""

    if-eqz v0, :cond_3dc

    .line 431
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    .line 433
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v2, 0x43968000    # 301.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_279

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    goto :goto_292

    .line 436
    :cond_279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    .line 439
    :goto_292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2c1

    .line 440
    sget v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v5

    sput v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    goto :goto_2cd

    .line 442
    :cond_2c1
    sget v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 444
    :goto_2cd
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_343

    .line 445
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    sub-float/2addr v0, v2

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_593

    .line 453
    :cond_343
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_372

    .line 454
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_366

    sget v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_360

    goto :goto_366

    .line 457
    :cond_360
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_36b

    .line 455
    :cond_366
    :goto_366
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :goto_36b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_593

    .line 461
    :cond_372
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    sget v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_593

    .line 469
    :cond_3dc
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    .line 470
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_41b

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    goto :goto_434

    .line 473
    :cond_41b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    .line 476
    :goto_434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_463

    .line 477
    sget v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v5

    sput v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    goto :goto_46f

    .line 479
    :cond_463
    sget v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 481
    :goto_46f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4f0

    .line 482
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    sget v0, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 487
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_593

    .line 488
    :cond_4f0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_524

    .line 489
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_514

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_519

    .line 492
    :cond_514
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    :goto_519
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_593

    .line 497
    :cond_524
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    sub-float/2addr v0, v2

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :goto_593
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_5a4

    .line 506
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5ae

    .line 509
    :cond_5a4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    :goto_5ae
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    if-eqz v0, :cond_5dd

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5dd

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTarget:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5dd

    .line 513
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5dd

    .line 408
    :cond_5ce
    :goto_5ce
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5dd
    :goto_5dd
    return-void
.end method

.method private initWeightTargeData()V
    .registers 5

    .line 208
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightTargerDataDao()Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataDao:Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;

    .line 209
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/WeightTargerDataDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerData:Ljava/util/List;

    if-eqz v0, :cond_93

    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_93

    .line 212
    :goto_2c
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_93

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz v0, :cond_90

    .line 214
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerData:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    if-eqz v0, :cond_90

    .line 217
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerData:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightTargerData;->getWeightLb()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerDataValue:F

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightTargerData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mWeightTargerData:Lcom/keephealth/android/ui/main/bean/WeightTargerData;

    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_93
    return-void
.end method

.method private safeShowCustomCyclePicker(I)V
    .registers 6

    .line 1132
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1133
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1134
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_26

    .line 1135
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1136
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    goto :goto_2b

    .line 1139
    :cond_26
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    .line 1141
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    .line 1144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4c

    .line 1150
    :cond_42
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initCustomCyclePicker()V

    .line 1151
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I

    .line 1152
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    :goto_4c
    return-void
.end method

.method private setLimit(F)V
    .registers 10

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v1, 0x1

    .line 231
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 233
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 234
    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    const/high16 v3, 0x40800000    # 4.0f

    .line 235
    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 236
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLinesBehindData(Z)V

    .line 237
    new-instance v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$3;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 245
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getMaxWeight()F

    move-result v3

    .line 246
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 247
    iget v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_57

    iget v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v4, v5

    goto :goto_5d

    :cond_57
    iget v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_5d
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 249
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v4

    .line 250
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 252
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    .line 255
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v7, v3

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 256
    iget v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8e

    iget v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v5

    goto :goto_94

    :cond_8e
    iget v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_94
    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 257
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 258
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 259
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 260
    const-string v3, "#E1E1E1"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 261
    invoke-virtual {v4, v3, v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    .line 262
    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 264
    new-instance v4, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-static {p1, v1}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p1, v1}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(FLjava/lang/String;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 265
    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    .line 266
    const-string p1, "#A9A9FF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    .line 267
    invoke-virtual {v4, v3, v3, v5}, Lcom/github/mikephil/charting/components/LimitLine;->enableDashedLine(FFF)V

    .line 268
    sget-object p1, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/components/LimitLine;->setLabelPosition(Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 269
    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/components/LimitLine;->setTextSize(F)V

    .line 270
    const-string p1, "#333333"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/github/mikephil/charting/components/LimitLine;->setTextColor(I)V

    .line 272
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLimitLinesBehindData(Z)V

    .line 273
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->removeAllLimitLines()V

    .line 274
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c009c

    return v0
.end method

.method protected initView()V
    .registers 9

    .line 108
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 109
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightDataDao()Lcom/keephealth/android/greendao/gen/WeightDataDao;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WeightDataDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 112
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    :cond_27
    const v0, 0x7f0907e1

    .line 114
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v0, 0x7f090716

    .line 115
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    const v0, 0x7f090629

    .line 116
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    const v0, 0x7f0900ab

    .line 117
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->btnRecord:Landroid/widget/Button;

    const v0, 0x7f09007f

    .line 118
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->barLine:Landroid/view/View;

    const v0, 0x7f090718

    .line 119
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    const v0, 0x7f09068e

    .line 120
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvNeed:Landroid/widget/TextView;

    const v0, 0x7f090717

    .line 121
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    const v0, 0x7f090703

    .line 122
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    const v0, 0x7f090518

    .line 123
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlTarget:Landroid/widget/RelativeLayout;

    const v0, 0x7f0904f4

    .line 124
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rlLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090641

    .line 125
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvDate1:Landroid/widget/TextView;

    const v0, 0x7f090642

    .line 126
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvDate2:Landroid/widget/TextView;

    const v0, 0x7f090231

    .line 127
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->img_index_dian:Landroid/widget/ImageView;

    const v0, 0x7f0906bd

    .line 128
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvSetWeightTarget:Landroid/widget/TextView;

    .line 129
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initWeightTargeData()V

    .line 130
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 131
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_16b

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x12d

    const-string v5, " kg"

    if-le v0, v3, :cond_148

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "kg"

    invoke-virtual {p0, v3, v5}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 135
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto/16 :goto_221

    .line 138
    :cond_148
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_221

    .line 141
    :cond_16b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWeightLb()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v0

    const v3, 0x44264000    # 665.0f

    cmpl-float v0, v0, v3

    const-string v3, " "

    const v5, 0x7f100773

    if-lez v0, :cond_1ec

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getWeightLb()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getWeightLb()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    .line 144
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_221

    .line 147
    :cond_1ec
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getWeightLb()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_221
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1007b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1005bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rightText:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rightText:Landroid/widget/Button;

    const/4 v2, 0x2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->bgView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->rightText:Landroid/widget/Button;

    new-instance v2, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda4;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/LineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setHorizontalScrollBarEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMaxVisibleValueCount(I)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleXEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMinOffset(F)V

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->getWeightHistory()V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightTarget:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeightNeed:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->btnRecord:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvSetWeightTarget:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$1$com-keephealth-android-ui-main-activity-WeightDetailActivity(Landroid/view/View;)V
    .registers 2

    .line 1100
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    if-eqz p1, :cond_f

    .line 1101
    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->returnData()V

    .line 1102
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    const/4 p1, 0x0

    .line 1103
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    :cond_f
    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$2$com-keephealth-android-ui-main-activity-WeightDetailActivity(Landroid/view/View;)V
    .registers 2

    .line 1107
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    if-eqz p1, :cond_a

    .line 1108
    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->dismiss()V

    const/4 p1, 0x0

    .line 1109
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    :cond_a
    return-void
.end method

.method synthetic lambda$initCustomCyclePicker$3$com-keephealth-android-ui-main-activity-WeightDetailActivity(Landroid/view/View;)V
    .registers 4

    .line 0
    const v0, 0x7f09073a

    .line 1097
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090726

    .line 1098
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1099
    new-instance v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    new-instance v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-WeightDetailActivity(Landroid/view/View;)V
    .registers 3

    .line 158
    const-class p1, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;

    const/16 v0, 0x2b66

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method

.method synthetic lambda$safeShowCustomCyclePicker$4$com-keephealth-android-ui-main-activity-WeightDetailActivity(I)V
    .registers 2

    .line 1145
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initCustomCyclePicker()V

    .line 1146
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectType:I

    .line 1147
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/view/OptionsPickerView;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1125
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2b66

    if-ne p1, p3, :cond_11

    const/4 p1, -0x1

    if-ne p2, p1, :cond_11

    .line 1127
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->getWeightHistory()V

    :cond_11
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1184
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    .line 1185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1186
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->pvCustomCycle:Lcom/bigkoo/pickerview/view/OptionsPickerView;

    :cond_a
    return-void
.end method

.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 25

    move-object/from16 v0, p0

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 300
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v2

    const-string v3, "trtr5"

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, " "

    if-eqz v2, :cond_c6

    .line 301
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v2

    invoke-static {v2, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "weightData.getWeight():"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x12d

    const-string v8, " kg"

    if-le v2, v3, :cond_a2

    .line 304
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v9

    div-float/2addr v9, v4

    invoke-static {v9, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "kg"

    invoke-virtual {v0, v3, v8}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v8

    div-float/2addr v8, v4

    invoke-static {v8, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 306
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 307
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto/16 :goto_19d

    .line 309
    :cond_a2
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19d

    .line 313
    :cond_c6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "weightData.getWeightLb():"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v2

    invoke-static {v2, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 316
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v2

    const v3, 0x44264000    # 665.0f

    cmpl-float v2, v2, v3

    const v3, 0x7f100773

    if-lez v2, :cond_167

    .line 317
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v9

    div-float/2addr v9, v4

    invoke-static {v9, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v8

    div-float/2addr v8, v4

    invoke-static {v8, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    .line 319
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2, v3}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 320
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_19d

    .line 322
    :cond_167
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v8

    invoke-static {v8, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :goto_19d
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initData()V

    .line 326
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    cmpg-double v2, v2, v4

    const v3, 0x7f10046d

    const v4, 0x7f100481

    const v8, 0x7f1005b7

    const-wide v9, 0x4037e66666666666L    # 23.9

    const-wide/high16 v11, 0x4040000000000000L    # 32.0

    const v13, 0x7f100754

    const-wide/high16 v14, 0x4038000000000000L    # 24.0

    const-wide/high16 v16, 0x403c000000000000L    # 28.0

    const-wide v18, 0x4032800000000000L    # 18.5

    const-string v5, "BMI "

    if-gez v2, :cond_2ff

    .line 337
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    cmpg-double v2, v20, v18

    if-gez v2, :cond_204

    .line 338
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 339
    :cond_204
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    cmpg-double v2, v20, v14

    if-gez v2, :cond_248

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    cmpl-double v2, v13, v18

    if-ltz v2, :cond_248

    .line 340
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 341
    :cond_248
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    cmpg-double v2, v13, v16

    if-gez v2, :cond_28c

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    cmpl-double v2, v13, v9

    if-ltz v2, :cond_28c

    .line 342
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 343
    :cond_28c
    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    cmpg-double v2, v8, v11

    if-gez v2, :cond_2d0

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    cmpl-double v2, v8, v16

    if-ltz v2, :cond_2d0

    .line 344
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 346
    :cond_2d0
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1007a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 349
    :cond_2ff
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v2, v2, v18

    if-gez v2, :cond_34c

    .line 350
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 351
    :cond_34c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v2, v2, v14

    if-gez v2, :cond_3ba

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v18

    if-ltz v2, :cond_3ba

    .line 352
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 353
    :cond_3ba
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v2, v2, v16

    if-gez v2, :cond_428

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v9

    if-ltz v2, :cond_428

    .line 354
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c5

    .line 355
    :cond_428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v2, v2, v11

    if-gez v2, :cond_498

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v16

    if-ltz v2, :cond_498

    .line 356
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10046d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c5

    .line 358
    :cond_498
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1007a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :goto_4c5
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvDate1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMongthDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvDate2:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightData;->getHoutMinter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 364
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/charts/LineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 366
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->barLine:Landroid/view/View;

    .line 367
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v4, v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/LineChart;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 369
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 370
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getHeight()I

    move-result v3

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, 0x5

    .line 371
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 372
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->barLine:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->img_index_dian:Landroid/widget/ImageView;

    .line 376
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int v4, v4

    add-int/lit8 v4, v4, -0xb

    iget-wide v5, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-int v1, v5

    add-int/lit8 v1, v1, -0xc

    invoke-virtual {v3, v4, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 378
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v2, 0x1a

    .line 379
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 380
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 381
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public returnRecordInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public returnWeightList(Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 528
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    .line 529
    const-string v2, " kg"

    const/16 v3, 0x8

    const v4, 0x7f100773

    const-string v5, ""

    if-eqz v1, :cond_530

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_530

    .line 548
    :cond_19
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->img_index_dian:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->barLine:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 550
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v6

    const/16 v8, 0x12d

    const v9, 0x44264000    # 665.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v11, 0x1

    if-eqz v6, :cond_13e

    .line 551
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v4

    float-to-int v4, v4

    if-le v4, v8, :cond_e5

    .line 552
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v12

    div-float/2addr v12, v10

    invoke-static {v12, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "kg"

    invoke-virtual {v0, v2, v6}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v6

    div-float/2addr v6, v10

    invoke-static {v6, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 554
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 555
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v4

    div-float/2addr v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    goto/16 :goto_258

    .line 558
    :cond_e5
    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v12}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v12

    invoke-static {v12, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    goto/16 :goto_258

    .line 563
    :cond_13e
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v2

    cmpl-float v2, v2, v9

    const-string v6, " "

    if-lez v2, :cond_1fa

    .line 564
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v13

    div-float/2addr v13, v10

    invoke-static {v13, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v6

    div-float/2addr v6, v10

    invoke-static {v6, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    .line 566
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2, v4}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 567
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v2}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 568
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v2

    div-float/2addr v2, v10

    invoke-static {v2, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    goto :goto_258

    .line 570
    :cond_1fa
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v13

    invoke-static {v13, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v2

    invoke-static {v2, v11}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    .line 575
    :goto_258
    iget v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    iput v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->option1:F

    .line 576
    iget-object v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "BMI "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/WeightData;->getBmi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 578
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v6

    const/4 v12, 0x0

    if-eqz v6, :cond_2df

    move v6, v7

    .line 580
    :goto_297
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_325

    .line 581
    iget-object v13, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 582
    iget v14, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    cmpl-float v15, v14, v12

    if-nez v15, :cond_2b4

    .line 583
    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v14

    iput v14, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    goto :goto_2c2

    .line 585
    :cond_2b4
    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2c2

    .line 586
    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v14

    iput v14, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    .line 589
    :cond_2c2
    :goto_2c2
    new-instance v14, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v15, v6

    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v9

    invoke-direct {v14, v15, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 590
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v14, v13}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 592
    invoke-virtual {v13}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMongthDay()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const v9, 0x44264000    # 665.0f

    goto :goto_297

    :cond_2df
    move v6, v7

    .line 595
    :goto_2e0
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_325

    .line 596
    iget-object v9, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 597
    iget v13, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    cmpl-float v14, v13, v12

    if-nez v14, :cond_2fd

    .line 598
    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v13

    iput v13, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    goto :goto_30b

    .line 600
    :cond_2fd
    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_30b

    .line 601
    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v13

    iput v13, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightMin:F

    .line 604
    :cond_30b
    :goto_30b
    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v14, v6

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v15

    invoke-direct {v13, v14, v15}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 605
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {v13, v9}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 607
    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMongthDay()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e0

    .line 610
    :cond_325
    iget-object v6, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v6

    const/4 v9, 0x7

    .line 611
    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaxLabels(I)V

    .line 612
    sget-object v9, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 613
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const v9, -0x777778

    .line 614
    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/XAxis;->setGridColor(I)V

    .line 615
    const-string v9, "#999999"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    const/high16 v9, 0x40800000    # 4.0f

    .line 616
    invoke-static {v9}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 618
    new-instance v9, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$4;

    invoke-direct {v9, v0, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;Ljava/util/List;)V

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 624
    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 625
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 626
    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 627
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 628
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 630
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v6, "DataSet 1"

    invoke-direct {v3, v2, v6}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 632
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 633
    const-string v6, "#6F6FFF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 v6, 0x40000000    # 2.0f

    .line 634
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    const v6, 0x7f08015b

    .line 635
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 636
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 638
    const-string v6, "#00000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 639
    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 640
    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 641
    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 642
    sget-object v6, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 643
    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 644
    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    .line 645
    new-instance v6, Lcom/github/mikephil/charting/data/LineData;

    new-array v9, v11, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v3, v9, v7

    invoke-direct {v6, v9}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/4 v3, -0x1

    .line 646
    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    const/high16 v3, 0x41100000    # 9.0f

    .line 647
    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 649
    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget v7, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    div-float v7, v4, v7

    invoke-virtual {v3, v7, v4, v12, v12}, Lcom/github/mikephil/charting/charts/LineChart;->zoom(FFFF)V

    .line 651
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v7, 0x50

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    if-lt v3, v7, :cond_3e0

    .line 652
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v10, v1

    div-double v10, v10, v16

    add-double/2addr v10, v13

    double-to-float v1, v10

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    goto :goto_44a

    .line 653
    :cond_3e0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v10, 0x3c

    if-le v3, v10, :cond_3fb

    .line 654
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v10, v1

    const-wide v18, 0x3fe999999999999aL    # 0.8

    mul-double v10, v10, v18

    div-double v10, v10, v16

    add-double/2addr v10, v13

    double-to-float v1, v10

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    goto :goto_44a

    .line 655
    :cond_3fb
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v10, 0x28

    if-le v3, v10, :cond_416

    .line 656
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v10, v1

    const-wide v18, 0x3fe6666666666666L    # 0.7

    mul-double v10, v10, v18

    div-double v10, v10, v16

    add-double/2addr v10, v13

    double-to-float v1, v10

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    goto :goto_44a

    .line 657
    :cond_416
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v10, 0x14

    if-le v3, v10, :cond_431

    .line 658
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v10, v1

    const-wide v18, 0x3fe3333333333333L    # 0.6

    mul-double v10, v10, v18

    div-double v10, v10, v16

    add-double/2addr v10, v13

    double-to-float v1, v10

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    goto :goto_44a

    .line 659
    :cond_431
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x6

    if-le v3, v10, :cond_448

    .line 660
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v10, v1

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v18

    div-double v10, v10, v16

    add-double/2addr v10, v13

    double-to-float v1, v10

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    goto :goto_44a

    .line 662
    :cond_448
    iput v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    .line 664
    :goto_44a
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->zoom:F

    invoke-virtual {v1, v3, v4, v12, v12}, Lcom/github/mikephil/charting/charts/LineChart;->zoom(FFFF)V

    .line 665
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const v3, 0x47435000    # 50000.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/LineChart;->moveViewToX(F)V

    .line 666
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v3, 0x22

    invoke-virtual {v1, v6, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 667
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-eqz v1, :cond_48a

    .line 668
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    float-to-int v1, v1

    if-le v1, v8, :cond_480

    .line 669
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    invoke-direct {v0, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    goto :goto_4e7

    .line 671
    :cond_480
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTarger()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    goto :goto_4e7

    .line 674
    :cond_48a
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v1

    const v3, 0x44264000    # 665.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4c4

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    goto :goto_4e7

    :cond_4c4
    const/4 v4, 0x1

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWeightTargerLb()F

    move-result v3

    invoke-static {v3, v4}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V

    .line 680
    :goto_4e7
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "returnWeightList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    if-eqz v1, :cond_5af

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5af

    .line 682
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;

    invoke-direct {v3, v0, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;Ljava/util/List;)V

    iget v2, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->timeDelay:I

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "returnWeightList: \u8bbe\u7f6e\u4f53\u91cd"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->timeDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5af

    .line 530
    :cond_530
    :goto_530
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvTragetComplete:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->showWeightData:Ljava/util/List;

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->initData()V

    .line 533
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v1

    if-eqz v1, :cond_555

    .line 534
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    const-string v4, "0.0  kg"

    invoke-virtual {v0, v4, v2}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57d

    .line 536
    :cond_555
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvWeight:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "0.0  "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :goto_57d
    const-string v1, "0.0"

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->selectWeight:F

    .line 539
    sput v1, Lcom/keephealth/android/app/AppApplication;->recordWeight:F

    .line 540
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->tvBmi:Landroid/widget/TextView;

    const-string v2, "BMI 0.0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 542
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataText(Ljava/lang/String;)V

    .line 543
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 544
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 545
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->img_index_dian:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->barLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5af
    :goto_5af
    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 1158
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 1159
    new-array v1, v1, [Ljava/lang/String;

    .line 1161
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 1163
    new-instance v1, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V

    .line 1176
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 1163
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1179
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
