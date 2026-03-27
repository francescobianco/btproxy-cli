.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$17;
.super Ljava/lang/Object;
.source "HRVHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->createObserver()V
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

    .line 812
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 815
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->barLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->selectIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$800(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->highlightValue(FI)V

    return-void
.end method
