.class Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;
.super Ljava/lang/Object;
.source "TempHistoryActivity2.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->initmBarChart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNothingSelected()V
    .registers 1

    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 9

    .line 240
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    # setter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selectIndex:I
    invoke-static {p2, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$402(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;I)I

    .line 241
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/BarChart;->getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;

    move-result-object p2

    .line 242
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->barLine:Landroid/view/View;

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 245
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getHeight()I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, 0x5

    .line 247
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->barLine:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p2

    .line 252
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result p2

    const-string v0, "\u2103"

    if-nez p2, :cond_8a

    .line 253
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_16e

    .line 255
    :cond_8a
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f10077d

    const-string v2, " "

    const-string v3, "--"

    if-eqz p2, :cond_13b

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p2

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13b

    .line 256
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p2

    const-string v5, "\u2109"

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_107

    .line 257
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getShowData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_16e

    .line 262
    :cond_107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_16e

    .line 266
    :cond_13b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_16e
    return-void
.end method
