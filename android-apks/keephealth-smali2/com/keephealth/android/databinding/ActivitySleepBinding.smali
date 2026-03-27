.class public final Lcom/keephealth/android/databinding/ActivitySleepBinding;
.super Ljava/lang/Object;
.source "ActivitySleepBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imgNodata:Landroid/widget/ImageView;

.field public final llRem:Landroid/widget/LinearLayout;

.field public final llSleepStart:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

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
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/charts/CandleStickChart;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/PieChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 23

    move-object v0, p0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->imgNodata:Landroid/widget/ImageView;

    move-object v1, p3

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->llRem:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->llSleepStart:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->showData:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->sleepBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p7

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->sleepChart:Lcom/github/mikephil/charting/charts/CandleStickChart;

    move-object v1, p8

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->sleepLine:Landroid/widget/ImageView;

    move-object v1, p9

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->sleepPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    move-object v1, p10

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvAwakeTime:Landroid/widget/TextView;

    move-object v1, p11

    .line 103
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvDeepSleepTime:Landroid/widget/TextView;

    move-object v1, p12

    .line 104
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvLightSleepTime:Landroid/widget/TextView;

    move-object v1, p13

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvNoData:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 106
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvSleepHour:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 107
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvSleepStatus:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 108
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvSleepTime:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 109
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvStartSleepTime:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 110
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvTag:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvTotalSleep:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->tvWakeSleepRem:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivitySleepBinding;
    .registers 25

    move-object/from16 v0, p0

    const v1, 0x7f090234

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_f8

    const v1, 0x7f09039c

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_f8

    const v1, 0x7f0903c8

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_f8

    const v1, 0x7f09056a

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_f8

    const v1, 0x7f090575

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v9, :cond_f8

    const v1, 0x7f090576

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/github/mikephil/charting/charts/CandleStickChart;

    if-eqz v10, :cond_f8

    const v1, 0x7f090577

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_f8

    const v1, 0x7f090578

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz v12, :cond_f8

    const v1, 0x7f090621

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_f8

    const v1, 0x7f09064d

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_f8

    const v1, 0x7f09067d

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_f8

    const v1, 0x7f090697

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_f8

    const v1, 0x7f0906c7

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_f8

    const v1, 0x7f0906cd

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_f8

    const v1, 0x7f0906cf

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_f8

    const v1, 0x7f0906db

    .line 233
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_f8

    const v1, 0x7f0906e6

    .line 239
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_f8

    const v1, 0x7f090701

    .line 245
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_f8

    const v1, 0x7f090712

    .line 251
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_f8

    .line 256
    new-instance v1, Lcom/keephealth/android/databinding/ActivitySleepBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v23}, Lcom/keephealth/android/databinding/ActivitySleepBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/charts/CandleStickChart;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/PieChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 261
    :cond_f8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivitySleepBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivitySleepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivitySleepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivitySleepBinding;
    .registers 5

    const v0, 0x7f0c0082

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 131
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivitySleepBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivitySleepBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivitySleepBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivitySleepBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
