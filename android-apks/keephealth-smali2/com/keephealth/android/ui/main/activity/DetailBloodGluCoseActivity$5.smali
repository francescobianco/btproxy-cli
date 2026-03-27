.class Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$5;
.super Ljava/lang/Object;
.source "DetailBloodGluCoseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 590
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->barLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->selectIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->access$500(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    return-void
.end method
