.class Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$6;
.super Ljava/lang/Object;
.source "TempHistoryActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->reBackDayData(Ljava/util/List;DDD)V
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

    .line 459
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$6;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 462
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$6;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->barLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$6;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2$6;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->selectIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;->access$400(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    return-void
.end method
