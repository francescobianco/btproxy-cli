.class public final Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;
.super Ljava/lang/Object;
.source "ActivityDrinkWaterHistoryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bloodDayChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final llDay:Landroid/widget/LinearLayout;

.field public final llMonth:Landroid/widget/LinearLayout;

.field public final mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mSeekBar:Landroid/widget/SeekBar;

.field public final rlEditGoal:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvWaterPrecent:Landroid/widget/TextView;

.field public final waterAvg:Landroid/widget/TextView;

.field public final waterTotal:Landroid/widget/TextView;

.field public final waterTotal2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 67
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->bloodDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 68
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->llDay:Landroid/widget/LinearLayout;

    .line 69
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->llMonth:Landroid/widget/LinearLayout;

    .line 70
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 71
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->mSeekBar:Landroid/widget/SeekBar;

    .line 73
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->rlEditGoal:Landroid/widget/RelativeLayout;

    .line 74
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->tvWaterPrecent:Landroid/widget/TextView;

    .line 75
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->waterAvg:Landroid/widget/TextView;

    .line 76
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->waterTotal:Landroid/widget/TextView;

    .line 77
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->waterTotal2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;
    .registers 16

    const v0, 0x7f090090

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v4, :cond_83

    const v0, 0x7f090364

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_83

    const v0, 0x7f09038f

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_83

    .line 125
    move-object v7, p0

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0903dc

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_83

    const v0, 0x7f0903e3

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/SeekBar;

    if-eqz v9, :cond_83

    const v0, 0x7f0904e9

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_83

    const v0, 0x7f090713

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_83

    const v0, 0x7f0907d2

    .line 152
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_83

    const v0, 0x7f0907d4

    .line 158
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_83

    const v0, 0x7f0907d5

    .line 164
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_83

    .line 169
    new-instance p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 173
    :cond_83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;
    .registers 5

    const v0, 0x7f0c0048

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterHistoryBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
