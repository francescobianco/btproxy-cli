.class public Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;
.super Ljava/lang/Object;
.source "DetailSleepActivity2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f0906c1:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V
    .registers 3

    .line 37
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Landroid/view/View;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    .line 45
    const-string v0, "field \'sleepChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/CandleStickChart;

    const v2, 0x7f090576

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CandleStickChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    .line 46
    const-string v0, "field \'sleepBarChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/BarChart;

    const v2, 0x7f090575

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v0, 0x7f090577

    .line 47
    const-string v1, "field \'sleepLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepLine:Landroid/view/View;

    .line 48
    const-string v0, "field \'tvDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090640

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDate:Landroid/widget/TextView;

    .line 49
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivPreDate:Landroid/widget/ImageView;

    .line 51
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const-string v0, "field \'tvSleepStatus\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906cd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    .line 68
    const-string v0, "field \'tvSleepTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepTime:Landroid/widget/TextView;

    .line 69
    const-string v0, "field \'tvSleepHour\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906c7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepHour:Landroid/widget/TextView;

    .line 70
    const-string v0, "field \'tvTotalSleep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090701

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    .line 71
    const-string v0, "field \'showData\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->showData:Landroid/widget/LinearLayout;

    .line 72
    const-string v0, "field \'tvNoData\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090697

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    .line 73
    const-string v0, "field \'sleepPieChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x7f090578

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 74
    const-string v0, "field \'tvStartSleepTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    .line 75
    const-string v0, "field \'tvWakeSleepRem\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090712

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    .line 76
    const-string v0, "field \'llRem\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09039c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->llRem:Landroid/widget/LinearLayout;

    .line 77
    const-string v0, "field \'ll_sleep_start\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ll_sleep_start:Landroid/widget/LinearLayout;

    .line 78
    const-string v0, "field \'tvLightSleepTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09067d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    .line 79
    const-string v0, "field \'tvDeepSleepTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09064d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    .line 80
    const-string v0, "field \'tvAwakeTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090621

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    .line 81
    const-string v0, "field \'tvDay\' and method \'onClick\'"

    const v1, 0x7f090648

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    const-string v2, "field \'tvDay\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    .line 84
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 93
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-string v0, "field \'tvSixMonth\' and method \'onClick\'"

    const v1, 0x7f0906c1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 100
    const-string v2, "field \'tvSixMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 102
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 109
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    .line 110
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 111
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const-string v0, "field \'tvTag\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTag:Landroid/widget/TextView;

    .line 118
    const-string v0, "field \'img_nodata\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090234

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->img_nodata:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    if-eqz v0, :cond_66

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    .line 129
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepLine:Landroid/view/View;

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDate:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivPreDate:Landroid/widget/ImageView;

    .line 133
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ivNextDate:Landroid/widget/ImageView;

    .line 134
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepStatus:Landroid/widget/TextView;

    .line 135
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepTime:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSleepHour:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTotalSleep:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->showData:Landroid/widget/LinearLayout;

    .line 139
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvNoData:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 141
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvStartSleepTime:Landroid/widget/TextView;

    .line 142
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvWakeSleepRem:Landroid/widget/TextView;

    .line 143
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->llRem:Landroid/widget/LinearLayout;

    .line 144
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->ll_sleep_start:Landroid/widget/LinearLayout;

    .line 145
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvLightSleepTime:Landroid/widget/TextView;

    .line 146
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDeepSleepTime:Landroid/widget/TextView;

    .line 147
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvAwakeTime:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvDay:Landroid/widget/TextView;

    .line 149
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvMonth:Landroid/widget/TextView;

    .line 150
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvSixMonth:Landroid/widget/TextView;

    .line 151
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvYear:Landroid/widget/TextView;

    .line 152
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->tvTag:Landroid/widget/TextView;

    .line 153
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->img_nodata:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    return-void

    .line 125
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
