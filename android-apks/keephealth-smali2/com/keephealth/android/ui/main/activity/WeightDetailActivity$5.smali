.class Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;
.super Ljava/lang/Object;
.source "WeightDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->returnWeightList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

.field final synthetic val$values1:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 682
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;->val$values1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 685
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->barLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;->val$values1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValue(FI)V

    .line 687
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method
