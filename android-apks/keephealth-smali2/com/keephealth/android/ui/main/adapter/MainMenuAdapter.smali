.class public Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;
.super Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;
.source "MainMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter<",
        "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
        ">;"
    }
.end annotation


# instance fields
.field private ab:I

.field entry1:Lcom/github/mikephil/charting/data/BarEntry;

.field entry2:Lcom/github/mikephil/charting/data/BarEntry;

.field entry3:Lcom/github/mikephil/charting/data/BarEntry;

.field entry4:Lcom/github/mikephil/charting/data/BarEntry;

.field entry5:Lcom/github/mikephil/charting/data/BarEntry;

.field private isEdit:Z

.field private final itemHeight:F

.field private final itemWight:F

.field pressUnit:Ljava/lang/String;

.field set1:Lcom/github/mikephil/charting/data/BarDataSet;

.field set2:Lcom/github/mikephil/charting/data/BarDataSet;

.field set3:Lcom/github/mikephil/charting/data/BarDataSet;

.field set4:Lcom/github/mikephil/charting/data/BarDataSet;

.field set5:Lcom/github/mikephil/charting/data/BarDataSet;

.field showStr:Ljava/lang/String;

.field showStrOxy:Ljava/lang/String;

.field showStrPress:Ljava/lang/String;

.field userBean:Lcom/keephealth/android/model/bean/UserBean;

.field values1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field values2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field values3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field values4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field values5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    const v0, 0x7f0c0124

    .line 131
    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/baseadapter/BGARecyclerViewAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values1:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values2:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values3:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values4:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values5:Ljava/util/List;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    .line 147
    iput p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->ab:I

    .line 534
    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->itemWight:F

    float-to-double v0, p1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 133
    iput p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->itemHeight:F

    return-void
.end method

.method private getBloodGlucoseData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 790
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v2

    .line 791
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    .line 792
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v7, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v5

    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    const v7, 0x7f090640

    .line 793
    invoke-virtual {v1, v7}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 794
    const-string v12, " mmol/L"

    const-string v13, "/"

    const v10, 0x7f0906d8

    const v11, 0x7f0902d0

    const-string v4, "mmol/L"

    const v7, 0x7f0907d3

    const v14, 0x7f09011c

    const v15, 0x7f0902c0

    const/16 v9, 0x8

    if-eqz v3, :cond_313

    .line 795
    invoke-virtual {v1, v15, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 796
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 797
    invoke-virtual {v1, v11, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 798
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 799
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f09014f

    .line 800
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f090575

    .line 801
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f0903e2

    .line 802
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v9, 0x7f0906c0

    .line 803
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v9, 0x7f090640

    .line 804
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 805
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 806
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v5

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 807
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v10, v14

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v10, v11

    .line 806
    invoke-virtual {v2, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v6, v14, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v9, v6, v5

    .line 808
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 811
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v6, :cond_15d

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v6

    if-nez v6, :cond_ef

    goto :goto_15d

    .line 816
    :cond_ef
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v6

    sget v8, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v8, v8

    sget v9, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v9, v9

    invoke-static {v6, v8, v9}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 818
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v6

    sget v8, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v8, v8

    sget v9, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v9, v9

    invoke-static {v6, v8, v9}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v10

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveBloodGlucoseData(DJ)V

    const/4 v10, 0x1

    goto/16 :goto_1e3

    .line 812
    :cond_15d
    :goto_15d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    sget v8, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v8, v8

    sget v9, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v9, v9

    invoke-static {v6, v8, v9}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    sget v8, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v8, v8

    sget v9, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v9, v9

    invoke-static {v6, v8, v9}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v11

    invoke-direct {v0, v8, v9, v11, v12}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveBloodGlucoseData(DJ)V

    .line 820
    :goto_1e3
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 821
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/16 v11, 0x21

    invoke-virtual {v6, v8, v5, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 822
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0xb

    invoke-direct {v8, v9, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v8, v4, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 823
    invoke-virtual {v1, v3, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 827
    invoke-virtual {v1, v7}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    .line 828
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 829
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    const v3, 0x3f666666    # 0.9f

    .line 830
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 831
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    const/4 v3, 0x1

    .line 832
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 833
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 834
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    const/4 v3, -0x1

    .line 835
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 836
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 837
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 838
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/high16 v4, 0x43200000    # 160.0f

    .line 839
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 840
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 841
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 842
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 843
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 844
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 845
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    .line 846
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 847
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 848
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 849
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 850
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 851
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 852
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 854
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2de

    .line 855
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x10

    if-gt v4, v6, :cond_2b9

    move v4, v5

    .line 856
    :goto_283
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2a3

    .line 857
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 858
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v4

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v8, v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 859
    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 860
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_283

    :cond_2a3
    move v4, v5

    .line 863
    :goto_2a4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x10

    if-ge v4, v7, :cond_2de

    .line 864
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v4

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 865
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a4

    .line 868
    :cond_2b9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_2be
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2de

    .line 869
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 870
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v4

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 871
    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 872
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2be

    .line 876
    :cond_2de
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 877
    const-string v3, "#FFAF13"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    const/4 v3, 0x1

    .line 878
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 879
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 880
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 881
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v4}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    const/16 v4, 0x25

    .line 883
    invoke-virtual {v1, v2, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 884
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 885
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    goto/16 :goto_429

    .line 887
    :cond_313
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    const v3, 0x7f0d0338

    if-eqz v2, :cond_3f9

    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v2

    if-nez v2, :cond_324

    goto/16 :goto_3f9

    .line 900
    :cond_324
    invoke-virtual {v1, v15, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 901
    invoke-virtual {v1, v15, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 902
    invoke-virtual {v1, v14, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 903
    invoke-virtual {v1, v11, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 904
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 905
    invoke-virtual {v1, v7, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f09014f

    .line 906
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 907
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 908
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 909
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 910
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 911
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 913
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v3

    sget v6, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v6, v6

    sget v7, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v7, v7

    invoke-static {v3, v6, v7}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v3

    sget v6, Lcom/keephealth/android/app/AppApplication;->calibrationCanBefore:I

    int-to-float v6, v6

    sget v7, Lcom/keephealth/android/app/AppApplication;->calibrationCanBack:I

    int-to-float v7, v7

    invoke-static {v3, v6, v7}, Lcom/keephealth/android/util/BloodGluCoseCountUtil;->bloodGluCoseCount(IFF)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Lcom/keephealth/android/util/StringUtils;->format1Point(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveBloodGlucoseData(DJ)V

    .line 917
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 918
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x14

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/16 v9, 0x21

    invoke-virtual {v3, v6, v5, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 919
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v5, v4, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 920
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_429

    .line 888
    :cond_3f9
    :goto_3f9
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 889
    invoke-virtual {v1, v11, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 890
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 891
    invoke-virtual {v1, v7, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f09014f

    .line 892
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 893
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 894
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 895
    invoke-virtual {v1, v15, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 896
    invoke-virtual {v1, v15, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 897
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 898
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_429
    return-void
.end method

.method private getHeartData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1533
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v2

    .line 1534
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    .line 1535
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v7, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v5

    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    const v7, 0x7f090640

    .line 1536
    invoke-virtual {v1, v7}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v15, 0x7f0906d8

    const v10, 0x7f0902d0

    const v9, 0x7f09011c

    .line 1537
    const-string v4, "HEART_RATE_DATA"

    const-string v7, "/"

    const-string v11, "bpm"

    const-string v12, " bpm"

    const v13, 0x7f0902c0

    const/16 v14, 0x8

    if-eqz v3, :cond_420

    .line 1538
    invoke-virtual {v1, v13, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1539
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1540
    invoke-virtual {v1, v10, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1541
    invoke-virtual {v1, v15, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f0907d3

    .line 1542
    invoke-virtual {v1, v10, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f09014f

    .line 1543
    invoke-virtual {v1, v10, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f090575

    .line 1544
    invoke-virtual {v1, v10, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f0903e2

    .line 1545
    invoke-virtual {v1, v10, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f0906c0

    .line 1546
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f090640

    .line 1547
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1548
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1549
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v15, 0x3

    new-array v15, v15, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v15, v5

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1550
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v15, v14

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v9, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v15, v9

    .line 1549
    invoke-virtual {v2, v10, v15}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v6, v14, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v9, v6, v5

    .line 1551
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f6

    .line 1554
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v14, :cond_f6

    .line 1555
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v6, 0x7f0d00ce

    .line 1556
    invoke-virtual {v1, v13, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_fb

    :cond_f6
    const/16 v6, 0x8

    .line 1558
    invoke-virtual {v1, v13, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1560
    :goto_fb
    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v6

    .line 1561
    sget-object v9, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v9, :cond_1fe

    sget-object v9, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v9

    if-nez v9, :cond_10f

    goto/16 :goto_1fe

    :cond_10f
    if-eqz v6, :cond_190

    .line 1576
    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    sget-object v13, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v13

    cmp-long v9, v9, v13

    if-lez v9, :cond_190

    .line 1577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "getHeartData: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -- "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\u5b9e\u65f6\u5fc3\u7387\u6570\u636e"

    invoke-static {v6, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30c

    .line 1581
    :cond_190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1583
    new-instance v6, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1584
    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1585
    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1586
    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1587
    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v4, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30c

    :cond_1fe
    :goto_1fe
    if-eqz v6, :cond_27c

    .line 1562
    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v13

    cmp-long v9, v9, v13

    if-lez v9, :cond_27c

    .line 1563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1564
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1565
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getHeartData: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\u5b9e\u65f6\u5fc3\u7387\u6570\u636e"

    invoke-static {v6, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_30c

    .line 1567
    :cond_27c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1568
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1570
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1571
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1572
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1573
    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v4, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 1590
    :goto_30c
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1591
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x14

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/16 v9, 0x21

    invoke-virtual {v4, v6, v5, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1592
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v6, v7, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 1593
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f09011c

    .line 1594
    invoke-virtual {v1, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/LineChart;

    .line 1595
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0xc

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 1599
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lez v4, :cond_3ee

    .line 1600
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v8, 0x10

    if-gt v4, v8, :cond_3a5

    move v4, v5

    .line 1601
    :goto_362
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3ee

    .line 1602
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 1603
    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v10, v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1604
    invoke-virtual {v9, v8}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1605
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gez v9, :cond_38d

    .line 1607
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    int-to-float v6, v6

    :cond_38d
    if-nez v4, :cond_394

    .line 1610
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v7

    int-to-float v7, v7

    .line 1612
    :cond_394
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3a2

    .line 1613
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v7

    int-to-float v7, v7

    :cond_3a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_362

    .line 1617
    :cond_3a5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x10

    :goto_3ab
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3ee

    .line 1618
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 1619
    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v10, v4

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1620
    invoke-virtual {v9, v8}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1621
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gez v9, :cond_3d6

    .line 1623
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v6

    int-to-float v6, v6

    :cond_3d6
    if-nez v4, :cond_3dd

    .line 1626
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v7

    int-to-float v7, v7

    .line 1628
    :cond_3dd
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3eb

    .line 1629
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v7

    int-to-float v7, v7

    :cond_3eb
    add-int/lit8 v4, v4, 0x1

    goto :goto_3ab

    .line 1636
    :cond_3ee
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    add-float/2addr v6, v4

    .line 1637
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    sub-float/2addr v7, v4

    .line 1638
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 1639
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 1640
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 1641
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 1642
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 1643
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 1644
    const-string v2, "#F5700F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0800e5

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->invalidChart(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_683

    .line 1646
    :cond_420
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_567

    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v2

    if-nez v2, :cond_42e

    goto/16 :goto_567

    .line 1682
    :cond_42e
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00ce

    .line 1683
    invoke-virtual {v1, v13, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f09011c

    .line 1684
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const/16 v3, 0x8

    .line 1685
    invoke-virtual {v1, v10, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1686
    invoke-virtual {v1, v15, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v6, 0x7f0907d3

    .line 1687
    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v6, 0x7f09014f

    .line 1688
    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v6, 0x7f090575

    .line 1689
    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v6, 0x7f0903e2

    .line 1690
    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1691
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 1692
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 1693
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1695
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1696
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v3

    if-eqz v3, :cond_4c7

    .line 1697
    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v8

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v13

    cmp-long v6, v8, v13

    if-lez v6, :cond_4c7

    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090640

    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_537

    .line 1701
    :cond_4c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1703
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1704
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1705
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1706
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1707
    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :goto_537
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1710
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x14

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x21

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1711
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1712
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_683

    :cond_567
    :goto_567
    const v2, 0x7f09011c

    const/16 v3, 0x8

    .line 1647
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1648
    invoke-virtual {v1, v10, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1649
    invoke-virtual {v1, v15, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0907d3

    .line 1650
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f09014f

    .line 1651
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 1652
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 1653
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1654
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00ce

    .line 1655
    invoke-virtual {v1, v13, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 1656
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1658
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    if-eqz v2, :cond_626

    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 1661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v3, 0x7f0906c0

    .line 1663
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f090640

    .line 1664
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1665
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x21

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1666
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 1667
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_683

    :cond_626
    const v3, 0x7f0906c0

    .line 1669
    const-string v2, "heartValue"

    invoke-static {v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_67e

    .line 1671
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 1673
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1674
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x21

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1675
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 1676
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_683

    :cond_67e
    const/16 v2, 0x8

    .line 1678
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_683
    return-void
.end method

.method private getHrvData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1718
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHRVItemBeanDao()Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;

    move-result-object v2

    .line 1719
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v7, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v5

    .line 1720
    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    const v10, 0x7f0907d3

    const v11, 0x7f0906d8

    const v12, 0x7f0902d0

    const v13, 0x7f0903e2

    const v14, 0x7f09011c

    const v15, 0x7f0902c0

    .line 1721
    const-string v7, "HRV_DATA"

    const-string v8, "/"

    const-string v4, " "

    const/16 v9, 0x8

    if-eqz v3, :cond_4d2

    .line 1722
    invoke-virtual {v1, v15, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1723
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1724
    invoke-virtual {v1, v12, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1725
    invoke-virtual {v1, v11, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1726
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1727
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f090575

    .line 1728
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v9, 0x7f0906c0

    .line 1729
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v9, 0x7f090640

    .line 1730
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1731
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v9, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1732
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getYear()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getMonth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v10, v5

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1733
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDay()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    sget-object v11, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v11, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v10, v11

    .line 1732
    invoke-virtual {v2, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v6, v12, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HRVItemBeanDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v9, v6, v5

    .line 1734
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 1744
    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v6

    .line 1745
    sget-object v9, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v9, :cond_1b9

    sget-object v9, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result v9

    if-nez v9, :cond_e7

    goto/16 :goto_1b9

    :cond_e7
    if-eqz v6, :cond_13e

    .line 1761
    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    sget-object v11, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_13e

    .line 1762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f10068b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getMonth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_2ba

    .line 1765
    :cond_13e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getMonth()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f10068b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1767
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1768
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1769
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1770
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1771
    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ba

    :cond_1b9
    :goto_1b9
    if-eqz v6, :cond_216

    .line 1746
    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDate()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_216

    .line 1747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f10068b

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_2ba

    .line 1750
    :cond_216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getMonth()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    if-eqz v2, :cond_2b8

    .line 1752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f10068b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1753
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1754
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1755
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDate()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1756
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1757
    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ba

    .line 1751
    :cond_2b8
    const-string v4, ""

    .line 1774
    :goto_2ba
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1775
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x14

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f10068b

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x21

    invoke-virtual {v3, v6, v5, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1776
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v6, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v7, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v4, 0x7f0906c0

    .line 1777
    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1778
    invoke-virtual {v1, v13}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/ScatterChart;

    .line 1779
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_437

    .line 1784
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v8, 0x19

    const/16 v9, 0x10

    if-gt v6, v9, :cond_3c8

    move v6, v5

    move v10, v7

    move v11, v10

    .line 1785
    :goto_31b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_381

    .line 1786
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    .line 1787
    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v14, v6

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1788
    invoke-virtual {v13, v12}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1789
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1794
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v10, v13

    if-gez v13, :cond_346

    .line 1795
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v10

    int-to-float v10, v10

    :cond_346
    cmpl-float v13, v11, v7

    if-nez v13, :cond_34f

    .line 1798
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v11

    int-to-float v11, v11

    .line 1800
    :cond_34f
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v11, v13

    if-lez v13, :cond_35d

    .line 1801
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v11

    int-to-float v11, v11

    .line 1803
    :cond_35d
    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v12

    if-lt v12, v8, :cond_371

    .line 1804
    const-string v12, "#F24B4B"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37e

    .line 1806
    :cond_371
    const-string v12, "#FF8650"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_37e
    add-int/lit8 v6, v6, 0x1

    goto :goto_31b

    :cond_381
    move v6, v5

    .line 1810
    :goto_382
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x10

    if-ge v6, v7, :cond_3c4

    .line 1811
    new-instance v7, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    invoke-direct {v7}, Lcom/keephealth/android/greendao/bean/HRVItemBean;-><init>()V

    .line 1812
    new-instance v12, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v13, v6

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v12, v13, v14}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1813
    invoke-virtual {v12, v7}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1814
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1815
    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v7

    if-lt v7, v8, :cond_3b4

    .line 1816
    const-string v7, "#F24B4B"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c1

    .line 1818
    :cond_3b4
    const-string v7, "#FF8650"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3c1
    add-int/lit8 v6, v6, 0x1

    goto :goto_382

    :cond_3c4
    move v7, v10

    move v10, v11

    goto/16 :goto_438

    .line 1822
    :cond_3c8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    move v9, v7

    move v10, v9

    :goto_3cf
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_435

    .line 1823
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HRVItemBean;

    .line 1824
    new-instance v12, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v13, v6

    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v12, v13, v14}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1825
    invoke-virtual {v12, v11}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1826
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v12

    if-lt v12, v8, :cond_400

    .line 1832
    const-string v12, "#F24B4B"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40d

    .line 1834
    :cond_400
    const-string v12, "#FF8650"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    :goto_40d
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v12, v9, v12

    if-gez v12, :cond_41b

    .line 1837
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v9

    int-to-float v9, v9

    :cond_41b
    cmpl-float v12, v10, v7

    if-nez v12, :cond_424

    .line 1840
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v10

    int-to-float v10, v10

    .line 1842
    :cond_424
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v12, v10, v12

    if-lez v12, :cond_432

    .line 1843
    invoke-virtual {v11}, Lcom/keephealth/android/greendao/bean/HRVItemBean;->getTmpHandler()I

    move-result v10

    int-to-float v10, v10

    :cond_432
    add-int/lit8 v6, v6, 0x1

    goto :goto_3cf

    :cond_435
    move v7, v9

    goto :goto_438

    :cond_437
    move v10, v7

    .line 1849
    :goto_438
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v7, v6

    .line 1850
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    sub-float/2addr v10, v6

    .line 1851
    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 1852
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 1853
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 1854
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 1855
    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 1856
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 1857
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 1858
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/ScatterChart;->setTouchEnabled(Z)V

    const v2, 0x3f666666    # 0.9f

    .line 1859
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setDragDecelerationFrictionCoef(F)V

    .line 1860
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/ScatterChart;->setDrawGridBackground(Z)V

    const/4 v2, 0x1

    .line 1861
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setHighlightPerDragEnabled(Z)V

    .line 1862
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setPinchZoom(Z)V

    .line 1863
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/ScatterChart;->setDoubleTapToZoomEnabled(Z)V

    const/4 v2, -0x1

    .line 1864
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/ScatterChart;->setBackgroundColor(I)V

    .line 1865
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/ScatterChart;->setScaleEnabled(Z)V

    .line 1866
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    .line 1867
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 1868
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 1869
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 1870
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 1871
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 1872
    new-instance v2, Lcom/github/mikephil/charting/data/ScatterDataSet;

    const-string v6, "\u7ea2\u8272\u70b9"

    invoke-direct {v2, v3, v6}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1873
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1874
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 1875
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setDrawValues(Z)V

    .line 1876
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setColors(Ljava/util/List;)V

    .line 1877
    sget-object v4, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 1878
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v4, v6}, Lcom/keephealth/android/util/ConvertUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShapeSize(F)V

    const/4 v4, 0x1

    .line 1879
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setHighlightEnabled(Z)V

    .line 1880
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setDrawHighlightIndicators(Z)V

    .line 1881
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setDrawValues(Z)V

    .line 1882
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    new-instance v2, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/ScatterData;-><init>(Ljava/util/List;)V

    const/16 v3, 0x187

    .line 1884
    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/ScatterChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1885
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->invalidate()V

    goto/16 :goto_701

    .line 1887
    :cond_4d2
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_632

    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result v2

    if-nez v2, :cond_4e0

    goto/16 :goto_632

    .line 1910
    :cond_4e0
    invoke-virtual {v1, v15, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00db

    .line 1911
    invoke-virtual {v1, v15, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1912
    invoke-virtual {v1, v14, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1913
    invoke-virtual {v1, v12, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1914
    invoke-virtual {v1, v11, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1915
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 1916
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1917
    invoke-virtual {v1, v13, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1918
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 1919
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 1920
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1922
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1924
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v3

    if-eqz v3, :cond_576

    .line 1925
    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_576

    .line 1926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f10068b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090640

    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_5f3

    .line 1929
    :cond_576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f10068b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1931
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1932
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getHrv()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1933
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1934
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1935
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v7, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    :goto_5f3
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1939
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x14

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f10068b

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x21

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1940
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1941
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_701

    .line 1888
    :cond_632
    :goto_632
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1889
    invoke-virtual {v1, v12, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1890
    invoke-virtual {v1, v11, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1891
    invoke-virtual {v1, v10, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 1892
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1893
    invoke-virtual {v1, v13, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1894
    invoke-virtual {v1, v15, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00db

    .line 1895
    invoke-virtual {v1, v15, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 1896
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 1897
    invoke-virtual {v1, v2, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1898
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    if-eqz v2, :cond_701

    .line 1900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f10068b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 1901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1902
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 1903
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1904
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1905
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f10068b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x21

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1906
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 1907
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :cond_701
    :goto_701
    return-void
.end method

.method private getOxygenData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 536
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v2

    .line 537
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->OxygenValue:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v7, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v5

    .line 538
    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 539
    const-string v10, "OXYGEN_DATA"

    const-string v12, "/"

    const v13, 0x7f0902c0

    const-string v11, "ghfgr4"

    const-string v15, " %"

    const-string v14, "%"

    if-eqz v3, :cond_51a

    .line 540
    const-string v7, "healthBloodItemLast != null"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 542
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v11, 0x3

    new-array v9, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v9, v5

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 543
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v9, v4

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->OxygenValue:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v9, v8

    .line 542
    invoke-virtual {v2, v7, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v6, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v6, v5

    .line 544
    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 545
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_50f

    const/16 v6, 0x8

    .line 546
    invoke-virtual {v1, v13, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f09011c

    .line 547
    invoke-virtual {v1, v7, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0902d0

    .line 548
    invoke-virtual {v1, v7, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0906d8

    .line 549
    invoke-virtual {v1, v7, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0907d3

    .line 550
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f09014f

    .line 551
    invoke-virtual {v1, v7, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f090575

    .line 552
    invoke-virtual {v1, v7, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0903e2

    .line 553
    invoke-virtual {v1, v7, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v6, 0x7f0906c0

    .line 554
    invoke-virtual {v1, v6, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v6, 0x7f090640

    .line 555
    invoke-virtual {v1, v6, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 557
    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v6

    .line 558
    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v7, :cond_1d6

    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v7

    if-nez v7, :cond_fb

    goto/16 :goto_1d6

    :cond_fb
    if-eqz v6, :cond_147

    .line 576
    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v7

    sget-object v9, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v16

    cmp-long v7, v7, v16

    if-lez v7, :cond_147

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 578
    iput-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f090640

    invoke-virtual {v1, v7, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_2f7

    .line 581
    :cond_147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 583
    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v3

    if-lez v3, :cond_1a2

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 586
    :cond_1a2
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 587
    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 588
    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 589
    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 590
    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v10, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f7

    :cond_1d6
    :goto_1d6
    if-eqz v6, :cond_234

    .line 559
    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v16

    cmp-long v7, v7, v16

    if-lez v7, :cond_234

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090640

    invoke-virtual {v1, v7, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move-object v6, v3

    goto/16 :goto_2f7

    .line 564
    :cond_234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 566
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v3

    if-lez v3, :cond_2aa

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 569
    :cond_2aa
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 570
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 571
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 572
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 573
    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v10, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_2f7
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 594
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v3, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 595
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xb

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v7, v8, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v14, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x46

    if-le v6, v7, :cond_354

    const v6, 0x7f0906c0

    .line 598
    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :cond_34f
    :goto_34f
    const v3, 0x7f0907d3

    goto/16 :goto_409

    .line 599
    :cond_354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3ca

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x46

    if-gt v3, v6, :cond_3ca

    .line 601
    new-instance v3, Landroid/text/SpannableString;

    const-string v6, "-- %"

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 602
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x14

    invoke-direct {v6, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v7, 0x3

    const/16 v9, 0x21

    invoke-virtual {v3, v6, v5, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 603
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v10, 0xb

    invoke-direct {v6, v10, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v10, 0x4

    invoke-virtual {v3, v6, v7, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v6, 0x7f0906c0

    .line 604
    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_34f

    .line 606
    :cond_3ca
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34f

    .line 607
    new-instance v3, Landroid/text/SpannableString;

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 608
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x14

    invoke-direct {v6, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/16 v9, 0x21

    invoke-virtual {v3, v6, v5, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 609
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v6, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    iget-object v10, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v6, v7, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v6, 0x7f0906c0

    .line 610
    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_34f

    .line 614
    :goto_409
    invoke-virtual {v1, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    .line 615
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 616
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    const v3, 0x3f666666    # 0.9f

    .line 617
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 618
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 619
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 620
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 621
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    const/4 v3, -0x1

    .line 622
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 623
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 624
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 625
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/high16 v6, 0x42c80000    # 100.0f

    .line 626
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 627
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 628
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    const/high16 v6, 0x42c80000    # 100.0f

    .line 629
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v6, 0x42b40000    # 90.0f

    .line 630
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 631
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 632
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    .line 633
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 634
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 635
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 636
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 637
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 639
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 640
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 643
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4dd

    .line 644
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_4b7

    move v6, v5

    .line 645
    :goto_481
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4a1

    .line 646
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 647
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v10, v6

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 648
    invoke-virtual {v9, v7}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 649
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_481

    :cond_4a1
    move v6, v5

    .line 652
    :goto_4a2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x10

    if-ge v6, v7, :cond_4dd

    .line 653
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v6

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 654
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a2

    .line 657
    :cond_4b7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x10

    :goto_4bd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4dd

    .line 658
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 659
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v10, v6

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getOxygenValue()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 660
    invoke-virtual {v9, v7}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 661
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4bd

    .line 666
    :cond_4dd
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-direct {v2, v3, v8}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 667
    const-string v3, "#FF8F8F"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 668
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 669
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 670
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    const/16 v3, 0x24

    .line 673
    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 674
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 675
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    goto/16 :goto_8ae

    .line 677
    :cond_50f
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00cf

    .line 678
    invoke-virtual {v1, v13, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_8ae

    .line 681
    :cond_51a
    const-string v2, "healthBloodItemLast == null"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    const-string v3, "spannableString_2:"

    const-string v6, "GFR43"

    if-eqz v2, :cond_6e4

    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v2

    if-nez v2, :cond_531

    goto/16 :goto_6e4

    :cond_531
    const v2, 0x7f0d00cf

    .line 734
    invoke-virtual {v1, v13, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 735
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f09011c

    .line 736
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0902d0

    const/16 v8, 0x8

    .line 737
    invoke-virtual {v1, v7, v8}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0906d8

    .line 738
    invoke-virtual {v1, v7, v8}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0907d3

    .line 739
    invoke-virtual {v1, v7, v8}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f09014f

    .line 740
    invoke-virtual {v1, v7, v8}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f090575

    .line 741
    invoke-virtual {v1, v7, v8}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0903e2

    .line 742
    invoke-virtual {v1, v7, v8}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 743
    invoke-virtual {v1, v2, v8}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const v7, 0x7f090640

    .line 747
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v7, 0x7f090640

    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 749
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_6d5

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "MainFragmentNew.currentHealthHeartRate.getOxygen()_444:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v2

    const/16 v7, 0x46

    if-lt v2, v7, :cond_657

    const v2, 0x7f0906c0

    .line 752
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 754
    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 755
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v2, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 756
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v5, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v4, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0906c0

    .line 758
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 759
    new-instance v1, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 760
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 761
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 762
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 763
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v10, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8ae

    .line 765
    :cond_657
    const-string v2, "6666666"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string v2, "oxygen_value"

    invoke-static {v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v7, 0x46

    if-lt v2, v7, :cond_6c6

    const v7, 0x7f0906c0

    .line 768
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 769
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 770
    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 771
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v2, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 772
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v5, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v4, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0906c0

    .line 774
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_8ae

    :cond_6c6
    const v3, 0x7f0906c0

    .line 776
    const-string v2, "222222"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    .line 777
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_8ae

    :cond_6d5
    const/16 v2, 0x8

    const v3, 0x7f0906c0

    .line 781
    const-string v4, "5555555"

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_8ae

    :cond_6e4
    :goto_6e4
    const/16 v2, 0x8

    .line 683
    const-string v7, "MainFragmentNew.currentHealthHeartRate.getSilentHeart() == 0"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f09011c

    .line 684
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0902d0

    .line 685
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0906d8

    .line 686
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0907d3

    .line 687
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f09014f

    .line 688
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f090575

    .line 689
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0903e2

    .line 690
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 691
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00cf

    .line 692
    invoke-virtual {v1, v13, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 693
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_817

    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v2

    if-eqz v2, :cond_817

    .line 694
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v2

    const/16 v7, 0x46

    if-le v2, v7, :cond_7a0

    const v2, 0x7f0906c0

    .line 695
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 696
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getOxygen()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 698
    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 699
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v2, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 700
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v5, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v4, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f0906c0

    .line 702
    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_8ae

    :cond_7a0
    const v7, 0x7f0906c0

    .line 704
    const-string v2, "oxygen_value"

    invoke-static {v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v8, 0x46

    if-lt v2, v8, :cond_80a

    .line 706
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    .line 708
    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 709
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v2, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 710
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v5, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v4, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0906c0

    .line 712
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_8ae

    :cond_80a
    move v3, v7

    .line 714
    const-string v2, "222222"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    .line 715
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_8ae

    .line 719
    :cond_817
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    if-eqz v2, :cond_8ae

    .line 721
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 722
    iput-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    const v7, 0x7f090640

    .line 723
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 724
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 725
    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 726
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v2, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 727
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xb

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrOxy:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v4, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0906c0

    .line 729
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 730
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :cond_8ae
    :goto_8ae
    return-void
.end method

.method private getPressData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 20

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 1213
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v1

    .line 1214
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->SsValue:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->FzValue:Lorg/greenrobot/greendao/Property;

    .line 1215
    invoke-virtual {v9, v5}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    aput-object v9, v7, v4

    .line 1214
    invoke-virtual {v2, v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v3, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v7, v3, v4

    .line 1215
    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 1216
    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const-string v7, "BLOOD_DATA"

    invoke-static {v3, v7}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v3

    .line 1217
    const-string v7, " mmHg"

    const-string v9, "mmHg"

    const-string v11, "/"

    if-eqz v2, :cond_3c2

    .line 1218
    const-string v13, "healthBloodItemLast != null"

    const-string v15, "FF32g432"

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {v1}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v13, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1220
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v13, 0x4

    new-array v13, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v13, v4

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1221
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    aput-object v10, v13, v6

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->SsValue:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v10, v5}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v10

    const/4 v14, 0x2

    aput-object v10, v13, v14

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->FzValue:Lorg/greenrobot/greendao/Property;

    .line 1222
    invoke-virtual {v10, v5}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v13, v10

    .line 1220
    invoke-virtual {v1, v12, v13}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v5, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v10, v5, v4

    .line 1223
    invoke-virtual {v1, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    .line 1224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3af

    .line 1225
    const-string v5, "healthBloodItemList.size() > 0"

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_dd

    const v5, 0x7f0902c0

    .line 1227
    invoke-virtual {v0, v5, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v10, 0x7f0d00d0

    .line 1228
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f09011c

    const/16 v10, 0x8

    goto :goto_e8

    :cond_dd
    const v5, 0x7f0902c0

    const/16 v10, 0x8

    .line 1230
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f09011c

    .line 1232
    :goto_e8
    invoke-virtual {v0, v5, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0902d0

    .line 1233
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0906d8

    .line 1234
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0907d3

    .line 1235
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f09014f

    .line 1236
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f090575

    .line 1237
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0903e2

    .line 1238
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0906c0

    .line 1239
    invoke-virtual {v0, v5, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f090640

    .line 1240
    invoke-virtual {v0, v5, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1242
    sget-object v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v5, :cond_1de

    sget-object v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v5

    if-nez v5, :cond_129

    goto/16 :goto_1de

    :cond_129
    if-eqz v3, :cond_17f

    .line 1252
    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    sget-object v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-lez v5, :cond_17f

    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090640

    invoke-virtual {v0, v5, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getHighDataValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2cf

    .line 1256
    :cond_17f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v0, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1258
    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v3

    sget-object v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSs()I

    move-result v5

    sget-object v7, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v10

    invoke-direct {v8, v3, v5, v10, v11}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->savePressData(IIJ)V

    goto/16 :goto_2cf

    :cond_1de
    :goto_1de
    if-eqz v3, :cond_245

    .line 1243
    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-lez v5, :cond_245

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090640

    invoke-virtual {v0, v5, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getHighDataValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2cf

    .line 1247
    :cond_245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v0, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1249
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v10

    invoke-direct {v8, v3, v5, v10, v11}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->savePressData(IIJ)V

    .line 1261
    :goto_2cf
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1262
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x14

    invoke-direct {v5, v7, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/16 v10, 0x21

    invoke-virtual {v3, v5, v4, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1263
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v5, v7, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v5, v6, v2, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1264
    invoke-virtual {v0, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f09011c

    .line 1265
    invoke-virtual {v0, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/github/mikephil/charting/charts/LineChart;

    .line 1266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_384

    .line 1269
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v6, 0x10

    if-gt v0, v6, :cond_34e

    .line 1270
    :goto_31e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_384

    .line 1271
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 1272
    new-instance v6, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v7, v4

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1273
    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v9, v7, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1274
    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1275
    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1276
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_31e

    .line 1280
    :cond_34e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    :goto_354
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_384

    .line 1281
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 1282
    new-instance v6, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v7, v0

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1283
    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v9, v7, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 1284
    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1285
    invoke-virtual {v9, v4}, Lcom/github/mikephil/charting/data/Entry;->setData(Ljava/lang/Object;)V

    .line 1286
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_354

    .line 1291
    :cond_384
    const-string v0, "#FFA800"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v0, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f08008f

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v0, "#FFD52B"

    .line 1292
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iget-object v0, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f080090

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v9

    .line 1291
    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->invalidPressChart(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;Ljava/util/List;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_61c

    .line 1294
    :cond_3af
    const-string v1, "healthBloodItemList.size() <= 0"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0902c0

    .line 1295
    invoke-virtual {v0, v1, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d0

    .line 1296
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_61c

    .line 1300
    :cond_3c2
    const-string v1, "healthBloodItemLast == null"

    const-string v2, "ggtf5"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    sget-object v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v1, :cond_503

    sget-object v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v1

    if-nez v1, :cond_3d7

    goto/16 :goto_503

    :cond_3d7
    const v1, 0x7f0902c0

    .line 1334
    invoke-virtual {v0, v1, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0d00d0

    .line 1335
    invoke-virtual {v0, v1, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f09011c

    .line 1336
    invoke-virtual {v0, v1, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0902d0

    const/16 v10, 0x8

    .line 1337
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0906d8

    .line 1338
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0907d3

    .line 1339
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f09014f

    .line 1340
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f090575

    .line 1341
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0903e2

    .line 1342
    invoke-virtual {v0, v5, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1343
    invoke-virtual {v0, v1, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f0906c0

    .line 1344
    invoke-virtual {v0, v1, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const v5, 0x7f090640

    .line 1347
    invoke-virtual {v0, v5, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f090640

    invoke-virtual {v0, v5, v1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    if-eqz v3, :cond_47c

    .line 1349
    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    sget-object v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v14

    cmp-long v1, v12, v14

    if-lez v1, :cond_47c

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getHighDataValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    goto :goto_4b8

    .line 1352
    :cond_47c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSs()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    .line 1353
    sget-object v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getFz()I

    move-result v1

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSs()I

    move-result v3

    sget-object v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v10

    invoke-direct {v8, v1, v3, v10, v11}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->savePressData(IIJ)V

    .line 1355
    :goto_4b8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "healthBloodItemLast == null2222:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1357
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1358
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1359
    invoke-virtual {v0, v2, v1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_61c

    .line 1302
    :cond_503
    :goto_503
    const-string v1, "healthBloodItemLast == null1111:"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v1, ""

    iput-object v1, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    const v1, 0x7f09011c

    const/16 v2, 0x8

    .line 1304
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f0902d0

    .line 1305
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f0906d8

    .line 1306
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f0907d3

    .line 1307
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f09014f

    .line 1308
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f090575

    .line 1309
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f0903e2

    .line 1310
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v1, 0x7f0902c0

    .line 1311
    invoke-virtual {v0, v1, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d0

    .line 1312
    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    if-eqz v3, :cond_5d3

    const v1, 0x7f090640

    .line 1314
    invoke-virtual {v0, v1, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getHighDataValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    const v1, 0x7f0906c0

    .line 1317
    invoke-virtual {v0, v1, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1318
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1319
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1320
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1321
    invoke-virtual {v0, v2, v1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_61c

    :cond_5d3
    const v2, 0x7f0906c0

    .line 1323
    iget-object v1, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_617

    .line 1324
    invoke-virtual {v0, v2, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1325
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1326
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1327
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v8, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStrPress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1328
    invoke-virtual {v0, v2, v1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_61c

    :cond_617
    const/16 v1, 0x8

    .line 1330
    invoke-virtual {v0, v2, v1}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_61c
    return-void
.end method

.method private getSleepData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1374
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthSleepItemDao()Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;

    move-result-object v2

    .line 1375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1377
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x2

    .line 1378
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v11, 0x0

    .line 1380
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1378
    aput-object v9, v8, v11

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v13, 0x5

    .line 1379
    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v8, v6

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    .line 1380
    invoke-virtual {v3, v12}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v8, v10

    .line 1377
    invoke-virtual {v4, v5, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1380
    invoke-virtual {v3, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v11

    .line 1381
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 1382
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v4

    .line 1384
    invoke-static {}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getInstance()Lcom/keephealth/android/util/AppSharedPreferencesUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/util/AppSharedPreferencesUtils;->getSleepType()I

    move-result v5

    if-eqz v5, :cond_8a

    move v5, v6

    goto :goto_8b

    :cond_8a
    move v5, v11

    :goto_8b
    if-eqz v4, :cond_9a

    .line 1389
    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DeviceModel;->isSleepDataShowType()I

    move-result v8

    if-eq v8, v6, :cond_99

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DeviceModel;->isHighPrecisionSleep()Z

    move-result v4

    if-eqz v4, :cond_9a

    :cond_99
    move v5, v6

    .line 1393
    :cond_9a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "\u67e5\u8be2\u51fa\u6700\u8fd1\u7684\u4e00\u6761\u7761\u7720\u6570\u636e:"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "GGED2"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f09014f

    const v9, 0x7f0907d3

    const v14, 0x7f0906d8

    const v15, 0x7f0902d0

    const v13, 0x7f09011c

    const v7, 0x7f090575

    const v6, 0x7f0902c0

    const/16 v10, 0x8

    if-eqz v3, :cond_460

    .line 1395
    invoke-virtual {v1, v6, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1396
    invoke-virtual {v1, v13, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1397
    invoke-virtual {v1, v15, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1398
    invoke-virtual {v1, v14, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1399
    invoke-virtual {v1, v9, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1400
    invoke-virtual {v1, v4, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1401
    invoke-virtual {v1, v7, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v4, 0x7f0903e2

    .line 1402
    invoke-virtual {v1, v4, v10}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v4, 0x7f0906c0

    .line 1403
    invoke-virtual {v1, v4, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v4, 0x7f090640

    .line 1404
    invoke-virtual {v1, v4, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "\u4eca\u5929\u8bf7\u6c42\u65f6\u95f4:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1408
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    const/4 v13, 0x4

    new-array v14, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v15, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1409
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v14, v11

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1410
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v14, v15

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    const/16 v6, 0x14

    .line 1411
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v14, v10

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    .line 1412
    invoke-virtual {v7, v12}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v14, v10

    .line 1408
    invoke-virtual {v4, v9, v14}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v7, v15, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v9, v7, v11

    .line 1413
    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    .line 1414
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v4

    .line 1415
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "todayItems-size:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1418
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getYear()I

    move-result v9

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v10

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v15

    sub-int/2addr v15, v14

    invoke-virtual {v7, v9, v10, v15}, Ljava/util/Calendar;->set(III)V

    .line 1419
    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x2

    .line 1420
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v14

    const/4 v10, 0x5

    .line 1421
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1422
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v10, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1423
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    new-array v10, v13, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    .line 1424
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v14

    aput-object v14, v10, v11

    sget-object v14, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1425
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v14, 0x1

    aput-object v7, v10, v14

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Hour:Lorg/greenrobot/greendao/Property;

    .line 1426
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v10, v15

    sget-object v7, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->SleepStatus:Lorg/greenrobot/greendao/Property;

    .line 1427
    invoke-virtual {v7, v12}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v12, 0x3

    aput-object v7, v10, v12

    .line 1423
    invoke-virtual {v2, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v7, v14, [Lorg/greenrobot/greendao/Property;

    sget-object v9, Lcom/keephealth/android/greendao/gen/HealthSleepItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v9, v7, v11

    .line 1428
    invoke-virtual {v2, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 1429
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 1430
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1432
    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1435
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "totalItems-size:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " -- "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " -- "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v9, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d9

    move v2, v11

    move v4, v2

    .line 1455
    :goto_267
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_2b3

    .line 1456
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    .line 1457
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_296

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_297

    .line 1458
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    const/4 v12, 0x2

    if-eq v9, v12, :cond_297

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    const/4 v12, 0x5

    if-eq v9, v12, :cond_297

    .line 1459
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    if-ne v9, v13, :cond_2b0

    goto :goto_297

    :cond_296
    const/4 v10, 0x3

    :cond_297
    :goto_297
    if-eqz v5, :cond_2a4

    .line 1461
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    if-eq v9, v13, :cond_2b0

    .line 1462
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    goto :goto_2af

    .line 1465
    :cond_2a4
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v9

    const/4 v12, 0x5

    if-eq v9, v12, :cond_2b0

    .line 1466
    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getOffsetMinute()I

    move-result v8

    :goto_2af
    add-int/2addr v4, v8

    :cond_2b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_267

    .line 1473
    :cond_2b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getMonth()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_2f4

    :cond_2d9
    const v2, 0x7f0906c0

    const v3, 0x7f090640

    const/16 v4, 0x8

    .line 1475
    invoke-virtual {v1, v2, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1476
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0902c0

    .line 1477
    invoke-virtual {v1, v2, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0d00d1

    .line 1478
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    move v4, v11

    .line 1480
    :goto_2f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, v4, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10076d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v4, v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    .line 1481
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100775

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1482
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1483
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v10, 0x1

    invoke-direct {v8, v6, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v12, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v3, v8, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1484
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v12, 0xb

    invoke-direct {v8, v12, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v10, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    iget-object v12, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v14, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v12, v14

    invoke-virtual {v3, v8, v10, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1485
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v10, 0x1

    invoke-direct {v8, v6, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    iget-object v10, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v8, v6, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1486
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xb

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v6, v4, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1487
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 1489
    invoke-virtual {v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/SleepBarDetailChart;

    .line 1490
    invoke-virtual {v1, v11}, Lcom/keephealth/android/views/SleepBarDetailChart;->setTouchEnable(Z)V

    .line 1491
    invoke-virtual {v1, v11}, Lcom/keephealth/android/views/SleepBarDetailChart;->setAnimate(Z)V

    .line 1492
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_453

    .line 1493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_41e

    .line 1496
    :goto_3ff
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_452

    .line 1497
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_41b

    .line 1498
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3ff

    .line 1504
    :cond_41e
    :goto_41e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_452

    .line 1505
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->getSleepStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_445

    .line 1506
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/keephealth/android/greendao/bean/HealthSleepItem;->setSleepStatus(I)V

    .line 1507
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44f

    :cond_445
    const/4 v5, 0x2

    .line 1509
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSleepItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_44f
    add-int/lit8 v11, v11, 0x1

    goto :goto_41e

    :cond_452
    move-object v7, v2

    .line 1516
    :cond_453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v7, v3, v4, v2}, Lcom/keephealth/android/views/SleepBarDetailChart;->setDatas(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_494

    :cond_460
    move v3, v10

    const v2, 0x7f090640

    .line 1518
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 1519
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1520
    invoke-virtual {v1, v13, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1521
    invoke-virtual {v1, v15, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1522
    invoke-virtual {v1, v14, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1523
    invoke-virtual {v1, v9, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1524
    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 1525
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 1526
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0902c0

    .line 1527
    invoke-virtual {v1, v2, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0d00d1

    .line 1528
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_494
    return-void
.end method

.method private getSportData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2118
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthActivityDao()Lcom/keephealth/android/greendao/gen/HealthActivityDao;

    move-result-object v2

    .line 2119
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthActivityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthActivityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2120
    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthActivity;

    const v4, 0x7f0903e2

    const v5, 0x7f090575

    const v7, 0x7f09014f

    const v8, 0x7f0907d3

    const v9, 0x7f09011c

    const v11, 0x7f0902c0

    const v13, 0x7f0902d0

    const v14, 0x7f090640

    .line 2121
    const-string v15, "gdr3d"

    const/16 v3, 0x8

    if-eqz v2, :cond_1d1

    .line 2122
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "healthActivity != null  healthActivity.getType():"

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    invoke-virtual {v1, v11, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2124
    invoke-virtual {v1, v13, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2125
    invoke-virtual {v1, v9, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2126
    invoke-virtual {v1, v14, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2127
    invoke-virtual {v1, v8, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2128
    invoke-virtual {v1, v7, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2129
    invoke-virtual {v1, v5, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2130
    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0906c0

    .line 2131
    invoke-virtual {v1, v3, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0906d8

    .line 2132
    invoke-virtual {v1, v3, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2134
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/SportDataHelper;->getStringBytyp(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0906d8

    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "healthActivity != null  healthActivity.getType()22:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/SportDataHelper;->getResByType(I)I

    move-result v3

    invoke-virtual {v1, v13, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v4

    div-int/lit16 v4, v4, 0xe10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f10076d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2138
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthActivity;->getDurations()I

    move-result v2

    rem-int/lit16 v2, v2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100775

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2139
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2140
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v10, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v3, v5, v6, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2141
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v9, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    iget-object v12, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v10, v12

    invoke-virtual {v3, v5, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2142
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v8, v7

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v5, v8, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2143
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v5, v4, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 2144
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_200

    .line 2146
    :cond_1d1
    const-string v2, "healthActivity == null"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    invoke-virtual {v1, v9, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2148
    invoke-virtual {v1, v14, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2149
    invoke-virtual {v1, v13, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906d8

    .line 2150
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2151
    invoke-virtual {v1, v8, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2152
    invoke-virtual {v1, v7, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2153
    invoke-virtual {v1, v5, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2154
    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2155
    invoke-virtual {v1, v11, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 2156
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d2

    .line 2157
    invoke-virtual {v1, v11, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_200
    return-void
.end method

.method private getStressData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 934
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthHeartRateItemDao()Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;

    move-result-object v2

    .line 935
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    .line 936
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    new-array v7, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v5

    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    const v7, 0x7f090640

    .line 937
    invoke-virtual {v1, v7}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 938
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "healthHeartRateItemLast:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FF5343"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f0906d8

    const v12, 0x7f0902d0

    const v13, 0x7f0907d3

    const v14, 0x7f09011c

    const v15, 0x7f0902c0

    .line 939
    const-string v4, "/"

    const-string v7, "STRESS_DATA"

    const-string v9, " "

    const-string v10, ""

    const/16 v5, 0x8

    if-eqz v3, :cond_7fd

    .line 940
    invoke-virtual {v1, v15, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 941
    invoke-virtual {v1, v14, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 942
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 943
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const/4 v11, 0x0

    .line 944
    invoke-virtual {v1, v13, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v12, 0x7f09014f

    .line 945
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v12, 0x7f090575

    .line 946
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v12, 0x7f0903e2

    .line 947
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f0906c0

    .line 948
    invoke-virtual {v1, v5, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v5, 0x7f090640

    .line 949
    invoke-virtual {v1, v5, v11}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 950
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v5, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 951
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getYear()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v11, 0x3

    new-array v11, v11, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v11, v14

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 952
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v11, v14

    sget-object v12, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->HeartRaveValue:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v12, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v11, v12

    .line 951
    invoke-virtual {v2, v5, v11}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v5, v14, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/HealthHeartRateItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x0

    aput-object v6, v5, v11

    .line 953
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 956
    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v5

    .line 957
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v6, :cond_293

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v6

    if-nez v6, :cond_10f

    goto/16 :goto_293

    :cond_10f
    if-eqz v5, :cond_1ac

    .line 982
    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v11

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v14

    cmp-long v6, v11, v14

    if-lez v6, :cond_1ac

    .line 983
    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/CalculateStress;->stressStatus(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v6

    invoke-static {v6}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090640

    invoke-virtual {v1, v5, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 986
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 987
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x14

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x21

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 988
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v6, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 989
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_433

    .line 991
    :cond_1ac
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090640

    invoke-virtual {v1, v4, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/CalculateStress;->stressStatus(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    .line 994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 996
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 997
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x14

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x21

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 998
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v6, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 999
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1000
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1001
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1002
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1003
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1004
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v7, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_433

    :cond_293
    :goto_293
    if-eqz v5, :cond_32e

    .line 958
    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v11

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v14

    cmp-long v6, v11, v14

    if-lez v6, :cond_32e

    .line 959
    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/CalculateStress;->stressStatus(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v6

    invoke-static {v6}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090640

    invoke-virtual {v1, v5, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 962
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 963
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x14

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x21

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 964
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v6, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 965
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_433

    .line 967
    :cond_32e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getMonth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDay()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 969
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/CalculateStress;->stressStatus(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    .line 970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 971
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 972
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x14

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x21

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 973
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v6, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 974
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 975
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 976
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 977
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 978
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 979
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v7, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :goto_433
    invoke-virtual {v1, v13}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    .line 1011
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 1012
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    const v3, 0x3f666666    # 0.9f

    .line 1013
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 1014
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    const/4 v3, 0x1

    .line 1015
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 1016
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 1017
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    const/4 v3, -0x1

    .line 1018
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 1019
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 1020
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 1021
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/high16 v5, 0x42b40000    # 90.0f

    .line 1024
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v6, -0x3e600000    # -20.0f

    .line 1025
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 1026
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 1029
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 1030
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 1031
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 1032
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    .line 1033
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 1034
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 1035
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 1036
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 1037
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 1038
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values1:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1040
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1041
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values3:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1042
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values4:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1044
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6cc

    .line 1045
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x10

    const/16 v5, 0x50

    const/16 v6, 0x3c

    const/16 v7, 0x1e

    if-gt v3, v4, :cond_5ce

    const/4 v3, 0x0

    .line 1046
    :goto_4be
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5b6

    .line 1047
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 1048
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-ge v8, v7, :cond_500

    .line 1049
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry1:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1050
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values1:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b2

    .line 1052
    :cond_500
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-lt v8, v7, :cond_53f

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-ge v8, v6, :cond_53f

    .line 1053
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry2:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1054
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values2:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b2

    .line 1056
    :cond_53f
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-lt v8, v6, :cond_57e

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-ge v8, v5, :cond_57e

    .line 1057
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry3:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1058
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values3:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b2

    .line 1060
    :cond_57e
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-lt v8, v5, :cond_5b2

    .line 1061
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry4:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1062
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values4:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b2
    :goto_5b2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4be

    :cond_5b6
    const/4 v3, 0x0

    .line 1066
    :goto_5b7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x10

    if-ge v3, v4, :cond_6cc

    .line 1067
    new-instance v4, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 1068
    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values1:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b7

    .line 1071
    :cond_5ce
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    :goto_5d4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6cc

    .line 1072
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    .line 1073
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-ge v8, v7, :cond_616

    .line 1074
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry1:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1075
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values1:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6c8

    .line 1077
    :cond_616
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-lt v8, v7, :cond_655

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-ge v8, v6, :cond_655

    .line 1078
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry2:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1079
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values2:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c8

    .line 1081
    :cond_655
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-lt v8, v6, :cond_694

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-ge v8, v5, :cond_694

    .line 1082
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry3:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1083
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values3:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c8

    .line 1085
    :cond_694
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v8

    if-lt v8, v5, :cond_6c8

    .line 1086
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v9, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    iput-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->entry4:Lcom/github/mikephil/charting/data/BarEntry;

    .line 1087
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values4:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c8
    :goto_6c8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5d4

    .line 1092
    :cond_6cc
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "values2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values1:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gde2ew"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values1:Ljava/util/List;

    const-string v5, "Statistics Vienna1 2014"

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 1097
    const-string v4, "#51E50F"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 1098
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 1099
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 1100
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 1101
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 1102
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "#51E52F"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 1104
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set1:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values2:Ljava/util/List;

    const-string v5, "Statistics Vienna2 2014"

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 1107
    const-string v4, "#2CB5E8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 1109
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 1110
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 1111
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 1112
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 1113
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "#2CB5F8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 1115
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set2:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values3:Ljava/util/List;

    const-string v5, "Statistics Vienna3 2014"

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 1119
    const-string v4, "#FFAF14"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 1121
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 1122
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 1123
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 1124
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 1125
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "#FFAF24"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 1127
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set3:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->values4:Ljava/util/List;

    const-string v5, "Statistics Vienna4 2014"

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    .line 1131
    const-string v4, "#F60C48"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 1133
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setVisible(Z)V

    .line 1134
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 1135
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 1136
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 1137
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v5, "#F60C68"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 1139
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->set4:Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    new-instance v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v3, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    const/16 v2, 0x25

    .line 1142
    invoke-virtual {v1, v3, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 1143
    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 1144
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    goto/16 :goto_a68

    .line 1147
    :cond_7fd
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    if-eqz v2, :cond_961

    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v2

    if-nez v2, :cond_80b

    goto/16 :goto_961

    :cond_80b
    const/4 v2, 0x0

    .line 1175
    invoke-virtual {v1, v15, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0d0339

    .line 1176
    invoke-virtual {v1, v15, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1177
    invoke-virtual {v1, v14, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1178
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1179
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1180
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f09014f

    .line 1181
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f090575

    .line 1182
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0903e2

    .line 1183
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1184
    invoke-virtual {v1, v14, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0906c0

    .line 1185
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f090640

    .line 1186
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1190
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    if-eqz v2, :cond_89d

    .line 1191
    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v3

    sget-object v5, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_89d

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v2

    invoke-static {v2}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8f2

    .line 1194
    :cond_89d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1195
    new-instance v3, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v3}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1196
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getSilentHeart()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1197
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1198
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentHealthHeartRate:Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1199
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v7, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :goto_8f2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/keephealth/android/util/CalculateStress;->stressStatus(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1203
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1204
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x21

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1205
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 1206
    invoke-virtual {v1, v2, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_a68

    .line 1148
    :cond_961
    :goto_961
    invoke-virtual {v1, v14, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1149
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1150
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1151
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f09014f

    .line 1152
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 1153
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 1154
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const/4 v2, 0x0

    .line 1155
    invoke-virtual {v1, v15, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d0339

    .line 1156
    invoke-virtual {v1, v15, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1158
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/keephealth/android/util/SPHelper;->getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    move-result-object v2

    if-eqz v2, :cond_a5c

    .line 1160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDataValue()I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/CalculateStress;->stressStatus(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    .line 1162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 1163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1164
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1165
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x14

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v6, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1166
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->pressUnit:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 1167
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1168
    invoke-virtual {v1, v3, v7}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 1169
    invoke-virtual {v1, v2, v7}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_a68

    :cond_a5c
    const v2, 0x7f090640

    const v3, 0x7f0906c0

    .line 1171
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1172
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_a68
    return-void
.end method

.method private getTempData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1946
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getTempInfoDao()Lcom/keephealth/android/greendao/gen/TempInfoDao;

    move-result-object v2

    .line 1947
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    new-array v7, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v7, v4, [Lorg/greenrobot/greendao/Property;

    sget-object v8, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v8, v7, v5

    .line 1948
    invoke-virtual {v3, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/TempInfo;

    const v8, 0x7f090575

    const v9, 0x7f09014f

    const v10, 0x7f0906d8

    const v11, 0x7f0902d0

    const v13, 0x7f0907d3

    const v14, 0x7f09011c

    .line 1949
    const-string v15, "ggtf5"

    const v12, 0x7f0902c0

    const-wide/high16 v16, 0x4040000000000000L    # 32.0

    const-wide v18, 0x3ffccccccccccccdL    # 1.8

    const/16 v4, 0x8

    if-eqz v3, :cond_40c

    .line 1950
    const-string v7, "tempInfoLast != null"

    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {v1, v12, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1952
    invoke-virtual {v1, v14, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1953
    invoke-virtual {v1, v11, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1954
    invoke-virtual {v1, v10, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1955
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1956
    invoke-virtual {v1, v9, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1957
    invoke-virtual {v1, v8, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v7, 0x7f0903e2

    .line 1958
    invoke-virtual {v1, v7, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v4, 0x7f0906c0

    .line 1959
    invoke-virtual {v1, v4, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v4, 0x7f090640

    .line 1960
    invoke-virtual {v1, v4, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1961
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/TempInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    .line 1962
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getYear()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x3

    new-array v7, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    aput-object v8, v7, v5

    sget-object v8, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    .line 1963
    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->TmpHandler:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8, v6}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v7, v8

    .line 1962
    invoke-virtual {v2, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    new-array v4, v9, [Lorg/greenrobot/greendao/Property;

    sget-object v6, Lcom/keephealth/android/greendao/gen/TempInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v6, v4, v5

    .line 1964
    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    .line 1966
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    .line 1968
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    const-string v7, " "

    if-eqz v6, :cond_1c8

    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-nez v6, :cond_fd

    goto/16 :goto_1c8

    .line 1980
    :cond_fd
    const-string v6, "tempInfoLast != null   currentTempInfo.getTmpHandler() != 0"

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 1982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1984
    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v3

    if-nez v3, :cond_172

    .line 1985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f10077c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1986
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1987
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v6

    sget-object v8, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDate()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveTempData(DJ)V

    goto :goto_1c5

    .line 1989
    :cond_172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v8

    mul-double v8, v8, v18

    add-double v8, v8, v16

    const/4 v4, 0x1

    invoke-static {v8, v9, v4}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f10077d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1990
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1991
    sget-object v6, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v6

    mul-double v6, v6, v18

    add-double v6, v6, v16

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v6

    sget-object v8, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDate()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveTempData(DJ)V

    :goto_1c5
    const/4 v7, 0x1

    goto/16 :goto_2c1

    .line 1969
    :cond_1c8
    :goto_1c8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getMonth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDay()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f090640

    invoke-virtual {v1, v6, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1970
    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v3

    if-nez v3, :cond_253

    .line 1971
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f10077c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1972
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1973
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDate()J

    move-result-wide v9

    invoke-direct {v0, v6, v7, v9, v10}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveTempData(DJ)V

    move v7, v8

    goto :goto_2c1

    :cond_253
    const/4 v8, 0x1

    .line 1975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v9

    mul-double v9, v9, v18

    add-double v9, v9, v16

    invoke-static {v9, v10, v8}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f10077d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1976
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1977
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v8

    mul-double v8, v8, v18

    add-double v8, v8, v16

    invoke-static {v8, v9, v7}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDate()J

    move-result-wide v10

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveTempData(DJ)V

    .line 1994
    :goto_2c1
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1995
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v6, v8, v5, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1996
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0xb

    invoke-direct {v8, v9, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v8, v4, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 1997
    invoke-virtual {v1, v3, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 1998
    invoke-virtual {v1, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1999
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 2000
    invoke-virtual {v1, v13}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    .line 2001
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 2002
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    const v3, 0x3f666666    # 0.9f

    .line 2003
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 2004
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 2005
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 2006
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 2007
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    const/4 v3, -0x1

    .line 2008
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setBackgroundColor(I)V

    .line 2009
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 2010
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 2011
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/high16 v4, 0x42180000    # 38.0f

    .line 2012
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v4, 0x42000000    # 32.0f

    .line 2013
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 2014
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 2015
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    const/high16 v4, 0x42180000    # 38.0f

    .line 2016
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/high16 v4, 0x42000000    # 32.0f

    .line 2017
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 2018
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    .line 2019
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 2020
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 2021
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 2022
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 2023
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 2024
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2026
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3ce

    .line 2027
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x10

    if-gt v4, v6, :cond_3a9

    move v4, v5

    .line 2028
    :goto_373
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_393

    .line 2029
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 2030
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v4

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v10

    double-to-float v10, v10

    invoke-direct {v8, v9, v10}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 2031
    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 2032
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_373

    :cond_393
    move v4, v5

    .line 2035
    :goto_394
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x10

    if-ge v4, v7, :cond_3ce

    .line 2036
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v4

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 2037
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_394

    .line 2040
    :cond_3a9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_3ae
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3ce

    .line 2041
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/TempInfo;

    .line 2042
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v4

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 2043
    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 2044
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3ae

    .line 2048
    :cond_3ce
    new-instance v2, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v4, "Statistics Vienna 2014"

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 2049
    const-string v3, "#6FDEC8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 2050
    const-string v3, "#00C59E"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    const/4 v3, 0x1

    .line 2051
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 2052
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarDataSet;->setRoundRect(Z)V

    .line 2053
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 2054
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    const/16 v3, 0x26

    .line 2057
    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 2058
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    goto/16 :goto_557

    .line 2060
    :cond_40c
    const-string v2, "tempInfoLast == null"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    const v3, 0x7f0d00d3

    if-eqz v2, :cond_52d

    sget-object v2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmpl-double v2, v6, v20

    if-nez v2, :cond_426

    goto/16 :goto_52d

    .line 2074
    :cond_426
    const-string v2, "tempInfoLast == null   currentTempInfo.getTmpHandler() != 0"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090640

    .line 2075
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2076
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2077
    invoke-virtual {v1, v12, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2078
    invoke-virtual {v1, v14, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2079
    invoke-virtual {v1, v11, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2080
    invoke-virtual {v1, v10, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2081
    invoke-virtual {v1, v13, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2082
    invoke-virtual {v1, v9, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2083
    invoke-virtual {v1, v8, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 2084
    invoke-virtual {v1, v2, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2085
    invoke-virtual {v1, v14, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 2086
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2089
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2091
    const-string v2, ""

    const v3, 0x7f090640

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2092
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    if-nez v2, :cond_4b0

    .line 2093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10077c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2094
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2095
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v6

    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDate()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveTempData(DJ)V

    const/4 v4, 0x1

    goto :goto_4ff

    .line 2097
    :cond_4b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v3

    mul-double v3, v3, v18

    add-double v3, v3, v16

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10077d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2098
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2099
    sget-object v4, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/TempInfo;->getTmpHandler()D

    move-result-wide v6

    mul-double v6, v6, v18

    add-double v6, v6, v16

    const/4 v4, 0x1

    invoke-static {v6, v7, v4}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v6

    sget-object v8, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->currentTempInfo:Lcom/keephealth/android/greendao/bean/TempInfo;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/TempInfo;->getDate()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->saveTempData(DJ)V

    .line 2101
    :goto_4ff
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2102
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x14

    invoke-direct {v7, v8, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2103
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0xb

    invoke-direct {v5, v7, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v5, v3, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0906c0

    .line 2104
    invoke-virtual {v1, v2, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_557

    .line 2062
    :cond_52d
    :goto_52d
    invoke-virtual {v1, v14, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2063
    invoke-virtual {v1, v11, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2064
    invoke-virtual {v1, v10, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2065
    invoke-virtual {v1, v13, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2066
    invoke-virtual {v1, v9, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2067
    invoke-virtual {v1, v8, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 2068
    invoke-virtual {v1, v2, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2069
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 2070
    invoke-virtual {v1, v12, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0906c0

    .line 2071
    invoke-virtual {v1, v2, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 2072
    invoke-virtual {v1, v2, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_557
    return-void
.end method

.method private getWaterData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 460
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getDrinkWaterDayBeanDao()Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;

    move-result-object v2

    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 462
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v4, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/keephealth/android/greendao/gen/DrinkWaterDayBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    const/4 v10, 0x5

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-virtual {v2, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    .line 464
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    iput-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    const v4, 0x7f0903e2

    const v7, 0x7f090575

    const v8, 0x7f0907d3

    const v10, 0x7f0906d8

    const v11, 0x7f0902d0

    const v12, 0x7f09011c

    const v13, 0x7f0902c0

    .line 465
    const-string v15, "ml"

    const-string v6, "oz"

    const v14, 0x7f09014f

    const/16 v5, 0x8

    if-eqz v2, :cond_1cf

    .line 466
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 467
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 468
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 469
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 470
    invoke-virtual {v1, v8, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 471
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 472
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 473
    invoke-virtual {v1, v4, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f0906c0

    .line 474
    invoke-virtual {v1, v3, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v3, 0x7f090640

    .line 475
    invoke-virtual {v1, v3, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getMonth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v3

    const-string v5, " oz"

    const/4 v7, 0x1

    if-ne v3, v7, :cond_107

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v4

    int-to-float v4, v4

    const v7, 0x3d102de0    # 0.0352f

    mul-float/2addr v4, v7

    invoke-static {v4}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_144

    .line 480
    :cond_107
    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_12f

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v4

    int-to-float v4, v4

    const v7, 0x3d0a71de    # 0.0338f

    mul-float/2addr v4, v7

    invoke-static {v4}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_144

    .line 483
    :cond_12f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    :goto_144
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v5

    if-nez v5, :cond_175

    .line 487
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x14

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v10, 0x21

    invoke-virtual {v4, v5, v9, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 488
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v11, 0xb

    invoke-direct {v5, v11, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v6, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_198

    :cond_175
    const/16 v7, 0x14

    const/4 v8, 0x1

    const/16 v10, 0x21

    const/16 v11, 0xb

    .line 490
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v9, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 491
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v11, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v6, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_198
    const v3, 0x7f0906c0

    .line 493
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 494
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v3

    if-nez v3, :cond_1a7

    const/16 v3, 0x708

    goto :goto_1ab

    :cond_1a7
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getWaterGoal()I

    move-result v3

    .line 495
    :goto_1ab
    invoke-virtual {v1, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/DrinkMenuProgressView;

    .line 496
    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/DrinkMenuProgressView;->setProgress(F)V

    .line 497
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00a6

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 498
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/DrinkMenuProgressView;->setCenterBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_282

    .line 502
    :cond_1cf
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v2

    const-string v3, "0 oz"

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1d9

    goto :goto_1e5

    .line 504
    :cond_1d9
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v2

    const/4 v13, 0x2

    if-ne v2, v13, :cond_1e3

    goto :goto_1e5

    :cond_1e3
    const-string v3, "0 ml"

    .line 507
    :goto_1e5
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v13, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v13}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v13

    if-nez v13, :cond_216

    .line 509
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v4, 0x1

    const/16 v13, 0x14

    invoke-direct {v6, v13, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/16 v7, 0x21

    invoke-virtual {v2, v6, v9, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 510
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v13, 0xb

    invoke-direct {v6, v13, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v4, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_239

    :cond_216
    const/4 v4, 0x1

    const/16 v7, 0x21

    const/16 v13, 0x14

    const/16 v15, 0xb

    .line 512
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v13, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v8, v9, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 513
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v15, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v8, v4, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 515
    :goto_239
    invoke-virtual {v1, v14}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/views/DrinkMenuProgressView;

    .line 516
    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d00a6

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 517
    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/DrinkMenuProgressView;->setCenterBitmap(Landroid/graphics/Bitmap;)V

    const v3, 0x7f0906c0

    .line 518
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 519
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 520
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 521
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0907d3

    .line 522
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 523
    invoke-virtual {v1, v14, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090575

    .line 524
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 527
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0902c0

    .line 528
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 530
    invoke-virtual {v1, v3, v9}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 531
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_282
    return-void
.end method

.method private getWeightData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 357
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightDataDao()Lcom/keephealth/android/greendao/gen/WeightDataDao;

    move-result-object v2

    .line 358
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WeightDataDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    const v4, 0x7f0d00d5

    const v5, 0x7f0903e2

    const v7, 0x7f090575

    const v8, 0x7f09014f

    const v9, 0x7f0907d3

    const v10, 0x7f0906d8

    const v11, 0x7f0902d0

    const v13, 0x7f09011c

    const v14, 0x7f0902c0

    const/16 v12, 0x8

    if-eqz v2, :cond_2d9

    .line 359
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_2d9

    .line 360
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v3, :cond_56

    .line 361
    invoke-virtual {v1, v14, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 362
    invoke-virtual {v1, v14, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_59

    .line 364
    :cond_56
    invoke-virtual {v1, v14, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 366
    :goto_59
    invoke-virtual {v1, v13, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 367
    invoke-virtual {v1, v11, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 368
    invoke-virtual {v1, v10, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 369
    invoke-virtual {v1, v9, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 370
    invoke-virtual {v1, v8, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 371
    invoke-virtual {v1, v7, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 372
    invoke-virtual {v1, v5, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v4, 0x7f0906c0

    .line 373
    invoke-virtual {v1, v4, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v4, 0x7f090640

    .line 374
    invoke-virtual {v1, v4, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 375
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMonth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getDay()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f090640

    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 377
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    const v8, 0x43968000    # 301.0f

    const/16 v9, 0xb

    const/16 v10, 0x14

    const/16 v11, 0x21

    if-eqz v5, :cond_166

    .line 379
    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v5

    cmpl-float v5, v5, v8

    const-string v8, "kg"

    if-lez v5, :cond_118

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v4

    div-float/2addr v4, v7

    invoke-static {v4, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 381
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v10, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 383
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v9, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v3, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 384
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_251

    .line 387
    :cond_118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v4

    invoke-static {v4, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 388
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 389
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v10, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 390
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v9, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v3, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 391
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_251

    .line 395
    :cond_166
    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v5

    cmpl-float v5, v5, v8

    const-string v8, " "

    const v12, 0x7f100773

    if-lez v5, :cond_1e5

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v4

    div-float/2addr v4, v7

    invoke-static {v4, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 397
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 398
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v10, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 399
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v9, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v3, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 400
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_251

    .line 402
    :cond_1e5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v4

    invoke-static {v4, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    .line 403
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v10, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v8, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 405
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, v9, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v3, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v7, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->showStr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v3, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v3, 0x7f0906c0

    .line 406
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 411
    :goto_251
    invoke-virtual {v1, v13}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/LineChart;

    .line 412
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 413
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xc

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 421
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2b8

    .line 422
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x10

    if-gt v4, v5, :cond_293

    move v4, v6

    .line 423
    :goto_274
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2b8

    .line 424
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 425
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v4

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 426
    invoke-virtual {v7, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 427
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_274

    .line 430
    :cond_293
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x10

    :goto_299
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2b8

    .line 431
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/main/bean/WeightData;

    .line 432
    new-instance v7, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v8, v4

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 433
    invoke-virtual {v7, v5}, Lcom/github/mikephil/charting/data/BarEntry;->setData(Ljava/lang/Object;)V

    .line 434
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_299

    .line 439
    :cond_2b8
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 440
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 441
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 442
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 443
    const-string v2, "#6F6FFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f08015b

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->invalidChart(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_300

    :cond_2d9
    const v2, 0x7f0906c0

    .line 445
    invoke-virtual {v1, v2, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 446
    invoke-virtual {v1, v13, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 447
    invoke-virtual {v1, v11, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 448
    invoke-virtual {v1, v10, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 449
    invoke-virtual {v1, v9, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 450
    invoke-virtual {v1, v8, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 451
    invoke-virtual {v1, v7, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 452
    invoke-virtual {v1, v5, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 453
    invoke-virtual {v1, v14, v6}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 454
    invoke-virtual {v1, v14, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f090640

    .line 455
    invoke-virtual {v1, v2, v12}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_300
    return-void
.end method

.method private invalidChart(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;ILandroid/graphics/drawable/Drawable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;I",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 2162
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 2163
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    const v0, 0x3f666666    # 0.9f

    .line 2164
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 2165
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    const/4 v0, 0x1

    .line 2166
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 2167
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 2168
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    const/4 v2, -0x1

    .line 2169
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 2170
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 2171
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    .line 2172
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 2173
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 2174
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 2175
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 2176
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 2202
    new-instance v2, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v3, "DataSet 1"

    invoke-direct {v2, p2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 2203
    sget-object p2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 2204
    invoke-virtual {v2, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 2205
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 2206
    invoke-virtual {v2, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2207
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 2208
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 2209
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 2210
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 2211
    sget-object p2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 2212
    new-instance p2, Lcom/github/mikephil/charting/data/LineData;

    new-array p3, v0, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v2, p3, v1

    invoke-direct {p2, p3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 p3, 0x27

    .line 2213
    invoke-virtual {p1, p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 2214
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method private invalidPressChart(Lcom/github/mikephil/charting/charts/LineChart;Ljava/util/List;Ljava/util/List;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 2219
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 2220
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    const v0, 0x3f666666    # 0.9f

    .line 2221
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setDragDecelerationFrictionCoef(F)V

    .line 2222
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    const/4 v0, 0x1

    .line 2223
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 2224
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 2225
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    const/4 v2, -0x1

    .line 2226
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 2227
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 2228
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    .line 2229
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    const/4 v4, 0x0

    .line 2230
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 2231
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 2232
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 2233
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 2234
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 2235
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 2236
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    .line 2237
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 2238
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 2239
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 2240
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 2241
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 2242
    new-instance v2, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v3, "DataSet 1"

    invoke-direct {v2, p2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 2243
    sget-object p2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 2244
    invoke-virtual {v2, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 2245
    invoke-virtual {v2, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 2246
    invoke-virtual {v2, p5}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2247
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 2248
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 2249
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 2250
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 2251
    sget-object p4, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v2, p4}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 2252
    new-instance p4, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string p5, "DataSet 2"

    invoke-direct {p4, p3, p5}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 2253
    sget-object p3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p4, p3}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 2254
    invoke-virtual {p4, p6}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 2255
    invoke-virtual {p4, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 2256
    invoke-virtual {p4, p7}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2257
    invoke-virtual {p4, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 2258
    invoke-virtual {p4, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 2259
    invoke-virtual {p4, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 2260
    invoke-virtual {p4, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 2261
    sget-object p2, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->HORIZONTAL_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p4, p2}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 2262
    new-instance p2, Lcom/github/mikephil/charting/data/LineData;

    const/4 p3, 0x2

    new-array p3, p3, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v2, p3, v1

    aput-object p4, p3, v0

    invoke-direct {p2, p3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    const/16 p3, 0x28

    .line 2263
    invoke-virtual {p1, p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;I)V

    .line 2264
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method private saveBloodGlucoseData(DJ)V
    .registers 6

    .line 925
    new-instance v0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 926
    invoke-virtual {v0, p1, p2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValueTemp(D)V

    .line 927
    invoke-virtual {v0, p3, p4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 928
    invoke-static {p3, p4}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 929
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "BLOOD_GLUCOSE_DATA"

    invoke-static {p1, p3, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private savePressData(IIJ)V
    .registers 6

    .line 1365
    new-instance v0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 1366
    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValue(I)V

    .line 1367
    invoke-virtual {v0, p2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setHighDataValue(I)V

    .line 1368
    invoke-virtual {v0, p3, p4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 1369
    invoke-static {p3, p4}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 1370
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "BLOOD_DATA"

    invoke-static {p1, p3, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveTempData(DJ)V
    .registers 6

    .line 2110
    new-instance v0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;-><init>()V

    .line 2111
    invoke-virtual {v0, p1, p2}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataValueTemp(D)V

    .line 2112
    invoke-virtual {v0, p3, p4}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDate(J)V

    .line 2113
    invoke-static {p3, p4}, Lcom/keephealth/android/util/TimeUtil;->getCurrentFormattedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;->setDataTime(Ljava/lang/String;)V

    .line 2114
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "TEMP_DATA"

    invoke-static {p1, p3, p2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILcom/keephealth/android/ui/main/bean/MainMenuSet;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0904f4

    .line 150
    invoke-virtual {v1, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 151
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 152
    iget v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->itemWight:F

    float-to-int v4, v4

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    .line 153
    iget v4, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->itemHeight:F

    float-to-int v4, v4

    iput v4, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const-wide/16 v6, 0x9

    const-wide/16 v8, 0x8

    const-wide/16 v10, 0x7

    const-wide/16 v12, 0x6

    const-wide/16 v14, 0x5

    const-wide/16 v16, 0x4

    const-wide/16 v18, 0x3

    const-wide/16 v20, 0x2

    const v3, 0x7f090684

    if-nez v2, :cond_53

    .line 157
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100573

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 158
    :cond_53
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v20

    if-nez v2, :cond_71

    .line 159
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10038f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 160
    :cond_71
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v18

    if-nez v2, :cond_8f

    .line 161
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100321

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 162
    :cond_8f
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v16

    if-nez v2, :cond_ad

    .line 163
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1001e4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 164
    :cond_ad
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v14

    if-nez v2, :cond_cb

    .line 165
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100178

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 166
    :cond_cb
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v12

    if-nez v2, :cond_e9

    .line 167
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100484

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 168
    :cond_e9
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v10

    if-nez v2, :cond_107

    .line 169
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100135

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 170
    :cond_107
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-nez v2, :cond_125

    .line 171
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1007b0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 172
    :cond_125
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_143

    .line 173
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10074c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 174
    :cond_143
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v24, 0xa

    cmp-long v2, v4, v24

    if-nez v2, :cond_163

    .line 175
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1002f0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 176
    :cond_163
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v24, 0xb

    cmp-long v2, v4, v24

    if-nez v2, :cond_183

    .line 177
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100179

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_1fe

    .line 178
    :cond_183
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v24, 0xd

    cmp-long v2, v4, v24

    if-nez v2, :cond_1a2

    .line 179
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100723

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_1fe

    .line 180
    :cond_1a2
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v24, 0xe

    cmp-long v2, v4, v24

    if-nez v2, :cond_1c1

    .line 181
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100736

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_1fe

    .line 182
    :cond_1c1
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v24, 0xf

    cmp-long v2, v4, v24

    if-nez v2, :cond_1e0

    .line 183
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100669

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_1fe

    .line 184
    :cond_1e0
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v24, 0x10

    cmp-long v2, v4, v24

    if-nez v2, :cond_1fe

    .line 185
    iget-object v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100608

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setText(ILjava/lang/CharSequence;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 189
    :cond_1fe
    :goto_1fe
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    const v3, 0x7f0902a7

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_221

    .line 190
    iget-boolean v2, v0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit:Z

    if-eqz v2, :cond_212

    .line 191
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_215

    .line 193
    :cond_212
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    :goto_215
    const v2, 0x7f0d0127

    .line 195
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 196
    const-string v2, "show"

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setTag(ILjava/lang/Object;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_22f

    .line 198
    :cond_221
    invoke-virtual {v1, v3, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 199
    const-string v2, "hide"

    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setTag(ILjava/lang/Object;)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00cc

    .line 200
    invoke-virtual {v1, v3, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 202
    :goto_22f
    invoke-virtual {v1, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setItemChildClickListener(I)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v22, 0x1

    cmp-long v2, v2, v22

    const v3, 0x7f0906c0

    const v6, 0x7f0902c0

    if-nez v2, :cond_262

    .line 204
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 205
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_254

    .line 206
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getSportData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 208
    :cond_254
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 209
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d2

    .line 210
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 214
    :cond_262
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v2, v24, v20

    if-nez v2, :cond_291

    .line 215
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 216
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_283

    .line 217
    const-string v2, "ggtf5"

    const-string v4, "model.isShow()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getTempData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 220
    :cond_283
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 221
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d3

    .line 222
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 224
    :cond_291
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v2, v20, v18

    if-nez v2, :cond_2b9

    .line 225
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_2ab

    .line 227
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getHeartData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 229
    :cond_2ab
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 230
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00ce

    .line 231
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 233
    :cond_2b9
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v18, v16

    if-nez v2, :cond_2e1

    .line 234
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 235
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_2d3

    .line 236
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getSleepData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 238
    :cond_2d3
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 239
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d1

    .line 240
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 242
    :cond_2e1
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v2, v16, v14

    if-nez v2, :cond_309

    .line 243
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 244
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_2fb

    .line 245
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getPressData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 247
    :cond_2fb
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 248
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d0

    .line 249
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 251
    :cond_309
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v2, v14, v12

    if-nez v2, :cond_331

    .line 252
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 253
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_323

    .line 254
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getOxygenData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 256
    :cond_323
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 257
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00cf

    .line 258
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 260
    :cond_331
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v2, v12, v10

    if-nez v2, :cond_359

    .line 261
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 262
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getWaterData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 265
    :cond_34b
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 266
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d4

    .line 267
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 269
    :cond_359
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-nez v2, :cond_381

    .line 270
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 271
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_373

    .line 272
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getWeightData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 274
    :cond_373
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 275
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d5

    .line 276
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 278
    :cond_381
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x9

    cmp-long v2, v7, v9

    const v7, 0x7f09014f

    const v8, 0x7f090640

    const v9, 0x7f090575

    const v10, 0x7f0907d3

    const v11, 0x7f0906d8

    const v12, 0x7f0902d0

    const v13, 0x7f09011c

    if-nez v2, :cond_3ca

    .line 279
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 280
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 281
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 282
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 283
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 284
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 285
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 286
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 287
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 288
    invoke-virtual {v1, v8, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00d6

    .line 289
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 290
    :cond_3ca
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0xa

    cmp-long v2, v14, v16

    if-nez v2, :cond_3fe

    .line 291
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 292
    invoke-virtual {v1, v8, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 293
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 294
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 295
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 296
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 297
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 298
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 299
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 300
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00cd

    .line 301
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 302
    :cond_3fe
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0xb

    cmp-long v2, v14, v16

    if-nez v2, :cond_428

    .line 303
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 304
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_41a

    .line 305
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getBloodGlucoseData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 307
    :cond_41a
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 308
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d0338

    .line 309
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 311
    :cond_428
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0xd

    cmp-long v2, v14, v16

    if-nez v2, :cond_452

    .line 312
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 313
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_444

    .line 314
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getStressData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto/16 :goto_4df

    .line 316
    :cond_444
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 317
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d0339

    .line 318
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto/16 :goto_4df

    .line 320
    :cond_452
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0xe

    cmp-long v2, v14, v16

    if-nez v2, :cond_488

    .line 321
    invoke-virtual {v1, v8, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 322
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 323
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 324
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 325
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 326
    invoke-virtual {v1, v7, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 327
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 328
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 329
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 330
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d0089

    .line 331
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_4df

    .line 332
    :cond_488
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x10

    cmp-long v2, v14, v16

    if-nez v2, :cond_4bb

    .line 333
    invoke-virtual {v1, v8, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 334
    invoke-virtual {v1, v13, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 335
    invoke-virtual {v1, v12, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 336
    invoke-virtual {v1, v11, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 337
    invoke-virtual {v1, v10, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 338
    invoke-virtual {v1, v9, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 339
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0903e2

    .line 340
    invoke-virtual {v1, v2, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 341
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d008a

    .line 342
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    goto :goto_4df

    .line 343
    :cond_4bb
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0xf

    cmp-long v2, v7, v9

    if-nez v2, :cond_4df

    .line 344
    invoke-virtual/range {p3 .. p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v2

    if-eqz v2, :cond_4d3

    .line 345
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->getHrvData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;)V

    goto :goto_4df

    .line 347
    :cond_4d3
    invoke-virtual {v1, v3, v5}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 348
    invoke-virtual {v1, v6, v4}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setVisibility(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    const v2, 0x7f0d00db

    .line 349
    invoke-virtual {v1, v6, v2}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->setImageResource(II)Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    .line 352
    :cond_4df
    :goto_4df
    invoke-virtual {v1, v3}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method public bridge synthetic fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILjava/lang/Object;)V
    .registers 4

    .line 117
    check-cast p3, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->fillData(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;ILcom/keephealth/android/ui/main/bean/MainMenuSet;)V

    return-void
.end method

.method public isEdit()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit:Z

    return v0
.end method

.method public setEdit(Z)V
    .registers 2

    .line 141
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->isEdit:Z

    .line 142
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuAdapter;->notifyDataSetChangedWrapper()V

    return-void
.end method

.method public setItemChildListener(Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;I)V
    .registers 3

    return-void
.end method
