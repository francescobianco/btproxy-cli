.class public Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivity2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

.field private view7f090099:Landroid/view/View;

.field private view7f0900c8:Landroid/view/View;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f0906c1:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V
    .registers 3

    .line 43
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;Landroid/view/View;)V
    .registers 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    .line 52
    const-string v0, "field \'mBarChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/BarChart;

    const v2, 0x7f0903d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v0, 0x7f09007f

    .line 53
    const-string v1, "field \'barLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->barLine:Landroid/view/View;

    .line 54
    const-string v0, "field \'tvDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090640

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDate:Landroid/widget/TextView;

    .line 55
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 58
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    .line 66
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTime:Landroid/widget/TextView;

    .line 74
    const-string v0, "field \'tvValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09070c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvValue:Landroid/widget/TextView;

    .line 75
    const-string v0, "field \'tvTotal\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    .line 76
    const-string v0, "field \'showData\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->showData:Landroid/widget/LinearLayout;

    .line 77
    const-string v0, "field \'tvDay\' and method \'onClick\'"

    const v1, 0x7f090648

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    const-string v2, "field \'tvDay\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-string v0, "field \'tvSixMonth\' and method \'onClick\'"

    const v1, 0x7f0906c1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 96
    const-string v2, "field \'tvSixMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    .line 106
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const-string v0, "field \'tvTag\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTag:Landroid/widget/TextView;

    .line 114
    const-string v0, "field \'rlAvg\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    .line 115
    const-string v0, "field \'tvTagAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTagAvg:Landroid/widget/TextView;

    .line 116
    const-string v0, "field \'tvAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    .line 117
    const-string v0, "field \'mSeekBar\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0903e3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeekBar:Landroid/widget/SeekBar;

    .line 118
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    const-string v0, "field \'mNestedScrollView\'"

    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0903da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 120
    const-string v0, "field \'tvWaterPrecent\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090713

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvWaterPrecent:Landroid/widget/TextView;

    .line 121
    const-string v0, "field \'tvRecordTag\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvRecordTag:Landroid/widget/TextView;

    const v0, 0x7f090099

    .line 122
    const-string v1, "method \'addWater\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f090099:Landroid/view/View;

    .line 124
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c8

    .line 130
    const-string v1, "method \'setGoal\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 131
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0900c8:Landroid/view/View;

    .line 132
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    if-eqz v0, :cond_6c

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    .line 147
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 148
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->barLine:Landroid/view/View;

    .line 149
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDate:Landroid/widget/TextView;

    .line 150
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivPreDate:Landroid/widget/ImageView;

    .line 151
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->ivNextDate:Landroid/widget/ImageView;

    .line 152
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTime:Landroid/widget/TextView;

    .line 153
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvValue:Landroid/widget/TextView;

    .line 154
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTotal:Landroid/widget/TextView;

    .line 155
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->showData:Landroid/widget/LinearLayout;

    .line 156
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvDay:Landroid/widget/TextView;

    .line 157
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvMonth:Landroid/widget/TextView;

    .line 158
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvSixMonth:Landroid/widget/TextView;

    .line 159
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvYear:Landroid/widget/TextView;

    .line 160
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTag:Landroid/widget/TextView;

    .line 161
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->rlAvg:Landroid/widget/RelativeLayout;

    .line 162
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvTagAvg:Landroid/widget/TextView;

    .line 163
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvAvg:Landroid/widget/TextView;

    .line 164
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mSeekBar:Landroid/widget/SeekBar;

    .line 165
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 167
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvWaterPrecent:Landroid/widget/TextView;

    .line 168
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->tvRecordTag:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f090648:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f090099:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f090099:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0900c8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;->view7f0900c8:Landroid/view/View;

    return-void

    .line 144
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
