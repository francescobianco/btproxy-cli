.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$8;
.super Ljava/lang/Object;
.source "DetailSleepActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->updateMonth(Lcom/keephealth/android/model/bean/SleepDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V
    .registers 2

    .line 1175
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1178
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2$8;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->selectIndex:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(FI)V

    return-void
.end method
