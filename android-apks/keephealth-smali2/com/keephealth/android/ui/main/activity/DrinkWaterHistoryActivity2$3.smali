.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivity2.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->initmBarChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

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

    .line 256
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    # setter for: Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->selectIndex:I
    invoke-static {p2, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->access$102(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;I)I

    .line 257
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p2

    .line 258
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->barLine:Landroid/view/View;

    .line 259
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 261
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, 0x5

    .line 263
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->barLine:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mL"

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
