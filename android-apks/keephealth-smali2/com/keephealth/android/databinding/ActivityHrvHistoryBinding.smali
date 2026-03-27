.class public final Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;
.super Ljava/lang/Object;
.source "ActivityHrvHistoryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final CPVHrv:Lcom/keephealth/android/views/CustomProgressView;

.field public final TvRealTimeValue:Landroid/widget/TextView;

.field public final barLine:Landroid/widget/ImageView;

.field public final custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

.field public final hrvContent:Landroid/widget/TextView;

.field public final hrvStandard:Landroid/widget/TextView;

.field public final ivHrvDetail:Landroid/widget/ImageView;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

.field public final rlAvg:Landroid/widget/RelativeLayout;

.field public final rlHrvStandard:Landroid/widget/RelativeLayout;

.field public final rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final showData:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvNewValue:Landroid/widget/TextView;

.field public final tvNewValue2:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;

.field public final tvTagNew:Landroid/widget/TextView;

.field public final tvTagNew2:Landroid/widget/TextView;

.field public final tvTagNewTime:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvTotal:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;

.field public final tvWhatHrv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/CustomProgressView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/charts/ScatterChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 28

    move-object v0, p0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 110
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->CPVHrv:Lcom/keephealth/android/views/CustomProgressView;

    move-object v1, p3

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->TvRealTimeValue:Landroid/widget/TextView;

    move-object v1, p4

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->barLine:Landroid/widget/ImageView;

    move-object v1, p5

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->custom:Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    move-object v1, p6

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->hrvContent:Landroid/widget/TextView;

    move-object v1, p7

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->hrvStandard:Landroid/widget/TextView;

    move-object v1, p8

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->ivHrvDetail:Landroid/widget/ImageView;

    move-object v1, p9

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p10

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    move-object v1, p11

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rlAvg:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rlHrvStandard:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->showData:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-object/from16 v1, p16

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvNewValue2:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTag:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNew:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 129
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNew2:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 130
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTagNewTime:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 131
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTime:Landroid/widget/TextView;

    move-object/from16 v1, p23

    .line 132
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvTotal:Landroid/widget/TextView;

    move-object/from16 v1, p24

    .line 133
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvValue:Landroid/widget/TextView;

    move-object/from16 v1, p25

    .line 134
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->tvWhatHrv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;
    .registers 30

    move-object/from16 v0, p0

    const v1, 0x7f090007

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/keephealth/android/views/CustomProgressView;

    if-eqz v5, :cond_13a

    const v1, 0x7f090013

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_13a

    const v1, 0x7f09007f

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_13a

    const v1, 0x7f090112

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_13a

    .line 187
    invoke-static {v2}, Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;

    move-result-object v8

    const v1, 0x7f0901b9

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_13a

    const v1, 0x7f0901ba

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_13a

    const v1, 0x7f0902b4

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_13a

    const v1, 0x7f0903d8

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v12, :cond_13a

    const v1, 0x7f0903e2

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/github/mikephil/charting/charts/ScatterChart;

    if-eqz v13, :cond_13a

    const v1, 0x7f0904db

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_13a

    const v1, 0x7f0904f1

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_13a

    const v1, 0x7f090508

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_13a

    const v1, 0x7f09056a

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_13a

    const v1, 0x7f0905f6

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_13a

    .line 248
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v18

    const v1, 0x7f09068f

    .line 251
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_13a

    const v1, 0x7f090690

    .line 257
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_13a

    const v1, 0x7f0906e6

    .line 263
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_13a

    const v1, 0x7f0906e8

    .line 269
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_13a

    const v1, 0x7f0906e9

    .line 275
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_13a

    const v1, 0x7f0906ea

    .line 281
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_13a

    const v1, 0x7f0906f2

    .line 287
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_13a

    const v1, 0x7f0906ff

    .line 293
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_13a

    const v1, 0x7f09070c

    .line 299
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_13a

    const v1, 0x7f09071a

    .line 305
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/TextView;

    if-eqz v28, :cond_13a

    .line 310
    new-instance v1, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v28}, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/CustomProgressView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/keephealth/android/databinding/LayoutCustomDayTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/charts/ScatterChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 316
    :cond_13a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;
    .registers 5

    const v0, 0x7f0c0060

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 153
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityHrvHistoryBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
