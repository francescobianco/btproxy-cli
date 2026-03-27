.class Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;
.super Ljava/lang/Object;
.source "DetailHeartRateActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

.field final synthetic val$values1:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 752
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;->val$values1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 755
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->barLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;->val$values1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 757
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValue(FI)V

    goto :goto_29

    .line 759
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2$7;->val$values1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValue(FI)V

    :goto_29
    return-void
.end method
