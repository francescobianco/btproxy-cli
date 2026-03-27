.class public final Lcom/keephealth/android/databinding/ActivitySleepNewBinding;
.super Ljava/lang/Object;
.source "ActivitySleepNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imgNodata:Landroid/widget/ImageView;

.field public final llNewSleep:Landroid/widget/LinearLayout;

.field public final llOldSleep:Landroid/widget/LinearLayout;

.field public final llRem:Landroid/widget/LinearLayout;

.field public final llSleepStart:Landroid/widget/LinearLayout;

.field public final rlSleepTotal:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final rvSleepStage:Landroidx/recyclerview/widget/RecyclerView;

.field public final showData:Landroid/widget/LinearLayout;

.field public final sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

.field public final sleepLine:Landroid/widget/ImageView;

.field public final sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

.field public final tvAwakeTime:Landroid/widget/TextView;

.field public final tvDeepSleepTime:Landroid/widget/TextView;

.field public final tvLightSleepTime:Landroid/widget/TextView;

.field public final tvNoData:Landroid/widget/TextView;

.field public final tvSleepHour:Landroid/widget/TextView;

.field public final tvSleepStatus:Landroid/widget/TextView;

.field public final tvSleepTime:Landroid/widget/TextView;

.field public final tvStartSleepTime:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;

.field public final tvTotalSleep:Landroid/widget/TextView;

.field public final tvWakeSleepRem:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/charts/CandleStickChart;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/PieChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 27

    move-object v0, p0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 109
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 110
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->imgNodata:Landroid/widget/ImageView;

    move-object v1, p3

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->llNewSleep:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->llOldSleep:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->llRem:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->llSleepStart:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->rlSleepTotal:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->rvSleepStage:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p9

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->showData:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p11

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    move-object v1, p12

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->sleepLine:Landroid/widget/ImageView;

    move-object v1, p13

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object/from16 v1, p14

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvAwakeTime:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvDeepSleepTime:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvLightSleepTime:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvNoData:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvSleepHour:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvSleepStatus:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvSleepTime:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 129
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvStartSleepTime:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvTag:Landroid/widget/TextView;

    move-object/from16 v1, p23

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvTotalSleep:Landroid/widget/TextView;

    move-object/from16 v1, p24

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->tvWakeSleepRem:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivitySleepNewBinding;
    .registers 29

    move-object/from16 v0, p0

    const v1, 0x7f090234

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_12c

    const v1, 0x7f090390

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_12c

    const v1, 0x7f090393

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_12c

    const v1, 0x7f09039c

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_12c

    const v1, 0x7f0903c8

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_12c

    const v1, 0x7f090515

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_12c

    const v1, 0x7f090534

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_12c

    const v1, 0x7f09056a

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_12c

    const v1, 0x7f090575

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v13, :cond_12c

    const v1, 0x7f090576

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/github/mikephil/charting/charts/CandleStickChart;

    if-eqz v14, :cond_12c

    const v1, 0x7f090577

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_12c

    const v1, 0x7f090578

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz v16, :cond_12c

    const v1, 0x7f090621

    .line 235
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_12c

    const v1, 0x7f09064d

    .line 241
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_12c

    const v1, 0x7f09067d

    .line 247
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_12c

    const v1, 0x7f090697

    .line 253
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_12c

    const v1, 0x7f0906c7

    .line 259
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_12c

    const v1, 0x7f0906cd

    .line 265
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_12c

    const v1, 0x7f0906cf

    .line 271
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_12c

    const v1, 0x7f0906db

    .line 277
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_12c

    const v1, 0x7f0906e6

    .line 283
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_12c

    const v1, 0x7f090701

    .line 289
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_12c

    const v1, 0x7f090712

    .line 295
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_12c

    .line 300
    new-instance v1, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v27}, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/charts/CandleStickChart;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/PieChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 306
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivitySleepNewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivitySleepNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivitySleepNewBinding;
    .registers 5

    const v0, 0x7f0c0083

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 151
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivitySleepNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivitySleepNewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
