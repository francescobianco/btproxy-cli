.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;
.super Ljava/lang/Object;
.source "DetailSleepActivityNew.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->initSleepBarChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 7

    .line 450
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I
    invoke-static {p2, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$002(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;I)I

    .line 451
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v0, p1

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p2

    .line 452
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    .line 453
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-int p2, p2

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 455
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 456
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v1, 0x5

    .line 457
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 458
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectDay:I
    invoke-static {p2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$500(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_81

    .line 461
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$600(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c1

    .line 463
    :cond_81
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepList:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$600(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSleep;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSleep;->getRemark()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :goto_c1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepHour:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->tvSleepTime:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10076d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100387

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->setTextLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
