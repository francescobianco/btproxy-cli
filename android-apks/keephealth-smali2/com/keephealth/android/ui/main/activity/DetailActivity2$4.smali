.class Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;
.super Ljava/lang/Object;
.source "DetailActivity2.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailActivity2;->initmBarChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

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

    .line 283
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->selectIndex:I
    invoke-static {p2, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$302(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    .line 284
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v0, p1

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p2

    .line 285
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->sleepLine:Landroid/view/View;

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-int p2, p2

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 288
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 289
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v1, 0x5

    .line 290
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 291
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->sleepLine:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepStatus:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->itemList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$400(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I

    move-result p1

    const/4 p2, 0x1

    const-string v1, ""

    if-nez p1, :cond_af

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f10077a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 297
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime_unit:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_14d

    .line 299
    :cond_af
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I

    move-result p1

    if-ne p1, p2, :cond_e3

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100769

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 301
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime_unit:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_14d

    .line 303
    :cond_e3
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_14d

    .line 304
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p1

    if-nez p1, :cond_122

    .line 305
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100774

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 306
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime_unit:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_14d

    .line 309
    :cond_122
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100771

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 310
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime_unit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_14d
    :goto_14d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method
