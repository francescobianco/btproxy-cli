.class public Lcom/keephealth/android/views/MyMarkerView;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "MyMarkerView.java"


# instance fields
.field private bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

.field private img1:Landroid/widget/ImageView;

.field private img2:Landroid/widget/ImageView;

.field private layoutContent2:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private tvContent:Landroid/widget/TextView;

.field private tvContent2:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    const p1, 0x7f090636

    .line 47
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/MyMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    const p1, 0x7f090637

    .line 48
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/MyMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent2:Landroid/widget/TextView;

    const p1, 0x7f090640

    .line 49
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/MyMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvTime:Landroid/widget/TextView;

    const p1, 0x7f0900ca

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/MyMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/BubbleLayout;

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    const p1, 0x7f090300

    .line 51
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/MyMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->layoutContent2:Landroid/widget/LinearLayout;

    const p1, 0x7f0901fd

    .line 52
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/MyMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->img1:Landroid/widget/ImageView;

    const p1, 0x7f0901fe

    .line 53
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/MyMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->img2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .registers 4

    .line 138
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p0}, Lcom/keephealth/android/views/MyMarkerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/MyMarkerView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    return-object v0
.end method

.method synthetic lambda$refreshContent$0$com-keephealth-android-views-MyMarkerView(Lcom/keephealth/android/greendao/bean/HealthBlood;)V
    .registers 9

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodSs()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodSs()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mmHg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100173

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMinBloodFz()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getMaxBloodFz()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    const-string v0, "#FFBE35"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/BubbleLayout;->setShadowColor(I)V

    .line 75
    iget-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->img1:Landroid/widget/ImageView;

    const v0, 0x7f080091

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->img2:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/BubbleLayout;->invalidate()V

    return-void
.end method

.method synthetic lambda$refreshContent$1$com-keephealth-android-views-MyMarkerView(Lcom/keephealth/android/greendao/bean/HealthBloodItem;)V
    .registers 7

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "mmHg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    const-string v0, "#FFBE35"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/BubbleLayout;->setShadowColor(I)V

    .line 97
    iget-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->img1:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object p1, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    invoke-virtual {p1}, Lcom/keephealth/android/views/BubbleLayout;->invalidate()V

    return-void
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 15

    .line 61
    instance-of v0, p1, Lcom/github/mikephil/charting/data/CandleEntry;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_46

    .line 62
    invoke-virtual {p0}, Lcom/keephealth/android/views/MyMarkerView;->getChartView()Lcom/github/mikephil/charting/charts/Chart;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v0

    if-le v0, v3, :cond_2f

    .line 64
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 65
    instance-of v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v1, :cond_221

    .line 66
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->layoutContent2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 68
    new-instance v1, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/MyMarkerView;Lcom/keephealth/android/greendao/bean/HealthBlood;)V

    invoke-static {v1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_221

    .line 81
    :cond_2f
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->layoutContent2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 83
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v0

    invoke-static {v0, v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->formatNumber(FIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_221

    .line 86
    :cond_46
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->layoutContent2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/views/MyMarkerView;->getChartView()Lcom/github/mikephil/charting/charts/Chart;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v0

    if-le v0, v3, :cond_6d

    .line 89
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 90
    instance-of v1, v0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz v1, :cond_221

    .line 91
    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 92
    new-instance v1, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/views/MyMarkerView$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/MyMarkerView;Lcom/keephealth/android/greendao/bean/HealthBloodItem;)V

    invoke-static {v1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_221

    .line 102
    :cond_6d
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 103
    instance-of v1, v0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    const v4, 0x7f08008d

    const-string v5, "#FF6384"

    const-string v6, "% Sp02"

    const v7, 0x7f100484

    const-string v8, "%02d"

    const-string v9, ":"

    if-eqz v1, :cond_ff

    .line 104
    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 105
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvTime:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getHour()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    invoke-static {v7, v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->formatNumber(FIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/BubbleLayout;->setShadowColor(I)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_21c

    .line 109
    :cond_ff
    instance-of v1, v0, Lcom/keephealth/android/greendao/bean/HealthBlood;

    if-eqz v1, :cond_14e

    .line 110
    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthBlood;

    .line 111
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBlood;->getReMark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    invoke-static {v7, v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->formatNumber(FIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/BubbleLayout;->setShadowColor(I)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_21c

    .line 115
    :cond_14e
    instance-of v1, v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    const v2, 0x7f0800df

    const-string v3, "#6BBDFF"

    const-string v4, " mL"

    const v5, 0x7f100749

    if-eqz v1, :cond_1d3

    .line 116
    check-cast v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    .line 117
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getHour()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getMinuter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/BubbleLayout;->setShadowColor(I)V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21c

    .line 121
    :cond_1d3
    instance-of v1, v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    if-eqz v1, :cond_21c

    .line 122
    check-cast v0, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;

    .line 123
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getReMark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/keephealth/android/views/MyMarkerView;->tvContent:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/views/MyMarkerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayBean;->getWater()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/BubbleLayout;->setShadowColor(I)V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :cond_21c
    :goto_21c
    iget-object v0, p0, Lcom/keephealth/android/views/MyMarkerView;->bubbleLayout:Lcom/keephealth/android/views/BubbleLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/BubbleLayout;->invalidate()V

    .line 133
    :cond_221
    :goto_221
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    return-void
.end method
