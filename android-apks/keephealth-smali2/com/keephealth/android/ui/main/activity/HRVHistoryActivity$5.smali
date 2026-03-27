.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;
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

    .line 380
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

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

    .line 383
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    # setter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I
    invoke-static {p2, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$802(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;I)I

    .line 384
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p2

    .line 385
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->barLine:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 388
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 389
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, 0x5

    .line 390
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 391
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->barLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e4

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10068b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 396
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_e4

    .line 399
    :cond_cf
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_e4
    :goto_e4
    return-void
.end method
