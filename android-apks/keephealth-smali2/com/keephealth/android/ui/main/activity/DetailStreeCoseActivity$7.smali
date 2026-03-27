.class Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;
.super Ljava/lang/Object;
.source "DetailStreeCoseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

.field final synthetic val$heartRateDetailVO:Lcom/keephealth/android/model/bean/HeartRateDetailVO;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 874
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->val$heartRateDetailVO:Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 877
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->barLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->val$heartRateDetailVO:Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    if-eqz v0, :cond_cf

    iget-object v0, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    if-eqz v0, :cond_cf

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "selectIndex:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   heartRateDetailVO.items.size():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->val$heartRateDetailVO:Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gde2ewr"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->val$heartRateDetailVO:Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_cf

    .line 883
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->val$heartRateDetailVO:Lcom/keephealth/android/model/bean/HeartRateDetailVO;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/HeartRateDetailVO;->items:Ljava/util/List;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRateItem;->getHeartRaveValue()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/CalculateStress;->calculateStress(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 884
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "value:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_93

    .line 886
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    goto :goto_cf

    :cond_93
    const/16 v1, 0x3c

    if-lt v0, v2, :cond_a8

    if-ge v0, v1, :cond_a8

    .line 888
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    goto :goto_cf

    :cond_a8
    const/16 v2, 0x50

    if-lt v0, v1, :cond_be

    if-ge v0, v2, :cond_be

    .line 890
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    goto :goto_cf

    :cond_be
    if-le v0, v2, :cond_cf

    .line 892
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->selectIndex:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    :cond_cf
    :goto_cf
    return-void
.end method
