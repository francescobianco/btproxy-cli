.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$8;
.super Ljava/lang/Object;
.source "DetailSleepActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
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

    .line 1392
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1395
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->selectIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->access$000(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    return-void
.end method
