.class public Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0902cd:Landroid/view/View;

.field private view7f090484:Landroid/view/View;

.field private view7f090485:Landroid/view/View;

.field private view7f090486:Landroid/view/View;

.field private view7f090487:Landroid/view/View;

.field private view7f0904e9:Landroid/view/View;

.field private view7f090640:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V
    .registers 3

    .line 44
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;Landroid/view/View;)V
    .registers 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    .line 53
    const-string v0, "field \'bloodDayChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/BarChart;

    const v2, 0x7f090090

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 54
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v0, "field \'tvDate\' and method \'onClick\'"

    const v1, 0x7f090640

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    const-string v2, "field \'tvDate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvDate:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const-string v0, "field \'tvDay\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090648

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvDay:Landroid/widget/TextView;

    .line 82
    const-string v0, "field \'tvWeek\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090715

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvWeek:Landroid/widget/TextView;

    .line 83
    const-string v0, "field \'tvMonth\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvMonth:Landroid/widget/TextView;

    .line 84
    const-string v0, "field \'tvYear\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09071b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvYear:Landroid/widget/TextView;

    .line 85
    const-string v0, "field \'mSeekBar\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0903e3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 86
    const-string v0, "field \'tvWaterPrecent\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090713

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvWaterPrecent:Landroid/widget/TextView;

    .line 87
    const-string v0, "field \'waterTotal\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0907d4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->waterTotal:Landroid/widget/TextView;

    .line 88
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    const-string v0, "field \'waterTotal2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0907d5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->waterTotal2:Landroid/widget/TextView;

    .line 90
    const-string v0, "field \'waterAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0907d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->waterAvg:Landroid/widget/TextView;

    .line 91
    const-string v0, "field \'llDay\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090364

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->llDay:Landroid/widget/LinearLayout;

    .line 92
    const-string v0, "field \'llMonth\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09038f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->llMonth:Landroid/widget/LinearLayout;

    .line 93
    const-string v0, "field \'mNestedScrollView\'"

    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0903da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f090487

    .line 94
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 96
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090484

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 104
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090485

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 112
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090486

    .line 118
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 120
    new-instance v2, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902cd

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 128
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904e9

    .line 134
    const-string v1, "method \'setGoal\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 135
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0904e9:Landroid/view/View;

    .line 136
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$9;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    if-eqz v0, :cond_69

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    .line 151
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->bloodDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 152
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->ivPreDate:Landroid/widget/ImageView;

    .line 153
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->ivNextDate:Landroid/widget/ImageView;

    .line 154
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvDate:Landroid/widget/TextView;

    .line 155
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvDay:Landroid/widget/TextView;

    .line 156
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvWeek:Landroid/widget/TextView;

    .line 157
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvMonth:Landroid/widget/TextView;

    .line 158
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvYear:Landroid/widget/TextView;

    .line 159
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 160
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->tvWaterPrecent:Landroid/widget/TextView;

    .line 161
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->waterTotal:Landroid/widget/TextView;

    .line 162
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->waterTotal2:Landroid/widget/TextView;

    .line 164
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->waterAvg:Landroid/widget/TextView;

    .line 165
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->llDay:Landroid/widget/LinearLayout;

    .line 166
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->llMonth:Landroid/widget/LinearLayout;

    .line 167
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090640:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090640:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090487:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090487:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090484:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090484:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090485:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090486:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f090486:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0902cd:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0904e9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;->view7f0904e9:Landroid/view/View;

    return-void

    .line 148
    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
