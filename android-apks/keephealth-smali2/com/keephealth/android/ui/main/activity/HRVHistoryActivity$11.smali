.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->initListener()V
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

    .line 615
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 618
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailTimeType;->SIX_MONTH:Lcom/keephealth/android/model/bean/DetailTimeType;

    # invokes: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTitleBack(Lcom/keephealth/android/model/bean/DetailTimeType;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$900(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;Lcom/keephealth/android/model/bean/DetailTimeType;)V

    .line 619
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/ScatterChart;->setVisibility(I)V

    .line 620
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->binding:Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rlHrvStandard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
