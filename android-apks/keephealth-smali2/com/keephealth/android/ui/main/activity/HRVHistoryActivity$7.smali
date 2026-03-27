.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;
.super Ljava/lang/Object;
.source "HRVHistoryActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->initmBarChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 6

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selected X: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onValueSelected  Highlight"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/data/ScatterDataSet;

    if-eqz p2, :cond_54

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EntryCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/ScatterDataSet;->getEntryCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onValueSelected   ScatterDataSet"

    invoke-static {v0, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_54
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I
    invoke-static {p2, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$802(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 452
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    .line 453
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->barLine:Landroid/widget/ImageView;

    .line 454
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-wide v1, p2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-int p2, v1

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 456
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 457
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->getHeight()I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, 0x5

    .line 458
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 459
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->barLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10068b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 463
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_115

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    .line 464
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_128

    .line 466
    :cond_115
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    const-string v1, "--"

    invoke-virtual {v0, v1, p2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_128
    return-void
.end method
