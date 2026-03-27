.class public Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;
.super Ljava/lang/Object;
.source "DetailActivity2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f0906c1:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V
    .registers 3

    .line 36
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Landroid/view/View;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    .line 44
    const-string v0, "field \'mBarChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/BarChart;

    const v2, 0x7f0903d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v0, 0x7f090577

    .line 45
    const-string v1, "field \'sleepLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->sleepLine:Landroid/view/View;

    .line 46
    const-string v0, "field \'tvDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090640

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDate:Landroid/widget/TextView;

    .line 47
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivPreDate:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v0, "field \'tvSleepStatus\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906cd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepStatus:Landroid/widget/TextView;

    .line 66
    const-string v0, "field \'tvSleepTime_unit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906d0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime_unit:Landroid/widget/TextView;

    .line 67
    const-string v0, "field \'tvSleepTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime:Landroid/widget/TextView;

    .line 68
    const-string v0, "field \'tvTotal\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    .line 69
    const-string v0, "field \'showData\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->showData:Landroid/widget/LinearLayout;

    .line 70
    const-string v0, "field \'tvDay\' and method \'onClick\'"

    const v1, 0x7f090648

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    const-string v2, "field \'tvDay\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    .line 73
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-string v0, "field \'tvSixMonth\' and method \'onClick\'"

    const v1, 0x7f0906c1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    const-string v2, "field \'tvSixMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    .line 90
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 98
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const-string v0, "field \'tvTag\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    .line 107
    const-string v0, "field \'rlAvg\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    .line 108
    const-string v0, "field \'tvTagAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    .line 109
    const-string v0, "field \'tvAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvAvg:Landroid/widget/TextView;

    .line 110
    const-string v0, "field \'total_unit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090602

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    .line 111
    const-string v0, "field \'avg_unit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09007c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->avg_unit:Landroid/widget/TextView;

    .line 112
    const-string v0, "field \'img_back\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090220

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_back:Landroid/widget/ImageView;

    .line 113
    const-string v0, "field \'img_calander\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090223

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_calander:Landroid/widget/ImageView;

    .line 114
    const-string v0, "field \'tv_titleNname\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090788

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    .line 115
    const-string v0, "field \'base_title_bg2\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090088

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->base_title_bg2:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    if-eqz v0, :cond_62

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->sleepLine:Landroid/view/View;

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDate:Landroid/widget/TextView;

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivPreDate:Landroid/widget/ImageView;

    .line 129
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->ivNextDate:Landroid/widget/ImageView;

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepStatus:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime_unit:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSleepTime:Landroid/widget/TextView;

    .line 133
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTotal:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->showData:Landroid/widget/LinearLayout;

    .line 135
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvDay:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvMonth:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvSixMonth:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvYear:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTag:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    .line 141
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvTagAvg:Landroid/widget/TextView;

    .line 142
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tvAvg:Landroid/widget/TextView;

    .line 143
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->total_unit:Landroid/widget/TextView;

    .line 144
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->avg_unit:Landroid/widget/TextView;

    .line 145
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_back:Landroid/widget/ImageView;

    .line 146
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->img_calander:Landroid/widget/ImageView;

    .line 147
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->base_title_bg2:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    return-void

    .line 122
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
