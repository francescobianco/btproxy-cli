.class public final Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;
.super Ljava/lang/Object;
.source "ActivityDrinkWater2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barLine:Landroid/widget/ImageView;

.field public final btnAddWater:Landroid/widget/Button;

.field public final btnSetGoal:Landroid/widget/Button;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mSeekBar:Landroid/widget/SeekBar;

.field public final rlAvg:Landroid/widget/RelativeLayout;

.field public final rlEditGoal:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final showData:Landroid/widget/LinearLayout;

.field public final tvAvg:Landroid/widget/TextView;

.field public final tvRecordTag:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;

.field public final tvTagAvg:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvTotal:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;

.field public final tvWaterPrecent:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Lcom/github/mikephil/charting/charts/BarChart;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 22

    move-object v0, p0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->barLine:Landroid/widget/ImageView;

    move-object v1, p3

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->btnAddWater:Landroid/widget/Button;

    move-object v1, p4

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->btnSetGoal:Landroid/widget/Button;

    move-object v1, p5

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p6

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p7

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p8

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->mSeekBar:Landroid/widget/SeekBar;

    move-object v1, p9

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->rlAvg:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->rlEditGoal:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->showData:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvAvg:Landroid/widget/TextView;

    move-object v1, p13

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvRecordTag:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 103
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvTag:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 104
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvTagAvg:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvTime:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 106
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvTotal:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 107
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvValue:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 108
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->tvWaterPrecent:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;
    .registers 24

    move-object/from16 v0, p0

    const v1, 0x7f09007f

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_e0

    const v1, 0x7f090099

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_e0

    const v1, 0x7f0900c8

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_e0

    const v1, 0x7f0903d8

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v8, :cond_e0

    .line 162
    move-object v9, v0

    check-cast v9, Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0903dc

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_e0

    const v1, 0x7f0903e3

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/SeekBar;

    if-eqz v11, :cond_e0

    const v1, 0x7f0904db

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_e0

    const v1, 0x7f0904e9

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_e0

    const v1, 0x7f09056a

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_e0

    const v1, 0x7f09061d

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_e0

    const v1, 0x7f0906a9

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_e0

    const v1, 0x7f0906e6

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_e0

    const v1, 0x7f0906e7

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_e0

    const v1, 0x7f0906f2

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_e0

    const v1, 0x7f0906ff

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_e0

    const v1, 0x7f09070c

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_e0

    const v1, 0x7f090713

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_e0

    .line 242
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;

    move-object v3, v0

    move-object v4, v9

    invoke-direct/range {v3 .. v22}, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Lcom/github/mikephil/charting/charts/BarChart;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 246
    :cond_e0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;
    .registers 5

    const v0, 0x7f0c0045

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDrinkWater2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
