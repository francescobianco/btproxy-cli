.class public Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;
.super Ljava/lang/Object;
.source "DrinkWaterHistoryActivityNew_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

.field private view7f09029d:Landroid/view/View;

.field private view7f0902bd:Landroid/view/View;

.field private view7f0902c5:Landroid/view/View;

.field private view7f0904fd:Landroid/view/View;

.field private view7f090518:Landroid/view/View;

.field private view7f090648:Landroid/view/View;

.field private view7f09068a:Landroid/view/View;

.field private view7f0906c1:Landroid/view/View;

.field private view7f09071b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V
    .registers 3

    .line 45
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;Landroid/view/View;)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    .line 54
    const-string v0, "field \'mBarChart\'"

    const-class v1, Lcom/github/mikephil/charting/charts/BarChart;

    const v2, 0x7f0903d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const v0, 0x7f09007f

    .line 55
    const-string v1, "field \'barLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->barLine:Landroid/view/View;

    .line 56
    const-string v0, "field \'tvDate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090640

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDate:Landroid/widget/TextView;

    .line 57
    const-string v0, "field \'ivPreDate\' and method \'changePreDay\'"

    const v1, 0x7f0902c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    const-string v2, "field \'ivPreDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivPreDate:Landroid/widget/ImageView;

    .line 59
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-string v0, "field \'ivNextDate\' and method \'changeNextDay\'"

    const v1, 0x7f0902bd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    const-string v2, "field \'ivNextDate\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    .line 68
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTime:Landroid/widget/TextView;

    .line 76
    const-string v0, "field \'tvValue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09070c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvValue:Landroid/widget/TextView;

    .line 77
    const-string v0, "field \'tvTotal\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTotal:Landroid/widget/TextView;

    .line 78
    const-string v0, "field \'showData\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showData:Landroid/widget/LinearLayout;

    .line 79
    const-string v0, "field \'tvDay\' and method \'onClick\'"

    const v1, 0x7f090648

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    const-string v2, "field \'tvDay\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f090648:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-string v0, "field \'tvMonth\' and method \'onClick\'"

    const v1, 0x7f09068a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    const-string v2, "field \'tvMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    .line 90
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-string v0, "field \'tvSixMonth\' and method \'onClick\'"

    const v1, 0x7f0906c1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 98
    const-string v2, "field \'tvSixMonth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const-string v0, "field \'tvYear\' and method \'onClick\'"

    const v1, 0x7f09071b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    const-string v2, "field \'tvYear\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    .line 108
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 109
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-string v0, "field \'tvTag\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTag:Landroid/widget/TextView;

    .line 116
    const-string v0, "field \'rlAvg\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlAvg:Landroid/widget/RelativeLayout;

    .line 117
    const-string v0, "field \'tvTagAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTagAvg:Landroid/widget/TextView;

    .line 118
    const-string v0, "field \'tvAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvAvg:Landroid/widget/TextView;

    .line 119
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    const-string v0, "field \'mNestedScrollView\'"

    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0903da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 121
    const-string v0, "field \'tvRecordTag\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvRecordTag:Landroid/widget/TextView;

    .line 122
    const-string v0, "field \'sineWave\'"

    const-class v1, Lcom/keephealth/android/views/SineWaveView;

    const v2, 0x7f090571

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/SineWaveView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    .line 123
    const-string v0, "field \'llChart\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090361

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llChart:Landroid/widget/LinearLayout;

    .line 124
    const-string v0, "field \'llView\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903b1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llView:Landroid/widget/LinearLayout;

    .line 125
    const-string v0, "field \'tvResidue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvResidue:Landroid/widget/TextView;

    .line 126
    const-string v0, "field \'tvDrinkResidue\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090657

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDrinkResidue:Landroid/widget/TextView;

    .line 127
    const-string v0, "field \'tvNextTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090692

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvNextTime:Landroid/widget/TextView;

    .line 128
    const-string v0, "field \'rlTodayDrink\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09051b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlTodayDrink:Landroid/widget/RelativeLayout;

    const v0, 0x7f09029d

    .line 129
    const-string v1, "method \'addWater\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09029d:Landroid/view/View;

    .line 131
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090518

    .line 137
    const-string v1, "method \'setGoal\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f090518:Landroid/view/View;

    .line 139
    new-instance v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904fd

    .line 145
    const-string v1, "method \'setNext\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 146
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0904fd:Landroid/view/View;

    .line 147
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding$9;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    if-eqz v0, :cond_7d

    const/4 v1, 0x0

    .line 160
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    .line 162
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 163
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->barLine:Landroid/view/View;

    .line 164
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDate:Landroid/widget/TextView;

    .line 165
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivPreDate:Landroid/widget/ImageView;

    .line 166
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->ivNextDate:Landroid/widget/ImageView;

    .line 167
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTime:Landroid/widget/TextView;

    .line 168
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvValue:Landroid/widget/TextView;

    .line 169
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTotal:Landroid/widget/TextView;

    .line 170
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->showData:Landroid/widget/LinearLayout;

    .line 171
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDay:Landroid/widget/TextView;

    .line 172
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvMonth:Landroid/widget/TextView;

    .line 173
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvSixMonth:Landroid/widget/TextView;

    .line 174
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvYear:Landroid/widget/TextView;

    .line 175
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTag:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlAvg:Landroid/widget/RelativeLayout;

    .line 177
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvTagAvg:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvAvg:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 181
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvRecordTag:Landroid/widget/TextView;

    .line 182
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    .line 183
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llChart:Landroid/widget/LinearLayout;

    .line 184
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->llView:Landroid/widget/LinearLayout;

    .line 185
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvResidue:Landroid/widget/TextView;

    .line 186
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvDrinkResidue:Landroid/widget/TextView;

    .line 187
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->tvNextTime:Landroid/widget/TextView;

    .line 188
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;->rlTodayDrink:Landroid/widget/RelativeLayout;

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0902c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0902c5:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0902bd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0902bd:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f090648:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f090648:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09068a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09068a:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0906c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0906c1:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09071b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09071b:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09029d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f09029d:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f090518:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f090518:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0904fd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew_ViewBinding;->view7f0904fd:Landroid/view/View;

    return-void

    .line 159
    :cond_7d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
