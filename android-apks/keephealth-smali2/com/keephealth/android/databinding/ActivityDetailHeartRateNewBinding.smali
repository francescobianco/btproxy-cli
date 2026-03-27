.class public final Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;
.super Ljava/lang/Object;
.source "ActivityDetailHeartRateNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final TvRealTimeValue:Landroid/widget/TextView;

.field public final barLine:Landroid/widget/ImageView;

.field public final imgIndexDian:Landroid/widget/ImageView;

.field public final imgIndexDian1:Landroid/widget/ImageView;

.field public final imgIndexDian2:Landroid/widget/ImageView;

.field public final llLenger:Landroid/widget/LinearLayout;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final rlAvg:Landroid/widget/RelativeLayout;

.field public final rlCurrentHeartRate:Landroid/widget/RelativeLayout;

.field public final rlRang:Landroid/widget/RelativeLayout;

.field public final rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final showData:Landroid/widget/LinearLayout;

.field public final tvAvg:Landroid/widget/TextView;

.field public final tvNewValue:Landroid/widget/TextView;

.field public final tvNewValue2:Landroid/widget/TextView;

.field public final tvRange:Landroid/widget/TextView;

.field public final tvTagAvg:Landroid/widget/TextView;

.field public final tvTagNew:Landroid/widget/TextView;

.field public final tvTagNew2:Landroid/widget/TextView;

.field public final tvTagNewTime:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 26

    move-object v0, p0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 103
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 104
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->TvRealTimeValue:Landroid/widget/TextView;

    move-object v1, p3

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->barLine:Landroid/widget/ImageView;

    move-object v1, p4

    .line 106
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->imgIndexDian:Landroid/widget/ImageView;

    move-object v1, p5

    .line 107
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->imgIndexDian1:Landroid/widget/ImageView;

    move-object v1, p6

    .line 108
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->imgIndexDian2:Landroid/widget/ImageView;

    move-object v1, p7

    .line 109
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->llLenger:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 110
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->mBarChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object v1, p9

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->rlAvg:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->rlRang:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->showData:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvAvg:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvNewValue:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvNewValue2:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvRange:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvTagAvg:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvTagNew:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvTagNew2:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvTagNewTime:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvTime:Landroid/widget/TextView;

    move-object/from16 v1, p23

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->tvValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;
    .registers 28

    move-object/from16 v0, p0

    const v1, 0x7f090013

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_11f

    const v1, 0x7f09007f

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_11f

    const v1, 0x7f090231

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_11f

    const v1, 0x7f090232

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_11f

    const v1, 0x7f090233

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_11f

    const v1, 0x7f090382

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_11f

    const v1, 0x7f0903d8

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v11, :cond_11f

    const v1, 0x7f0904db

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_11f

    const v1, 0x7f0904e4

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_11f

    const v1, 0x7f090507

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_11f

    const v1, 0x7f090508

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_11f

    const v1, 0x7f09056a

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_11f

    const v1, 0x7f09061d

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_11f

    const v1, 0x7f09068f

    .line 234
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_11f

    const v1, 0x7f090690

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_11f

    const v1, 0x7f0906a6

    .line 246
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_11f

    const v1, 0x7f0906e7

    .line 252
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_11f

    const v1, 0x7f0906e8

    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_11f

    const v1, 0x7f0906e9

    .line 264
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_11f

    const v1, 0x7f0906ea

    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_11f

    const v1, 0x7f0906f2

    .line 276
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_11f

    const v1, 0x7f09070c

    .line 282
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_11f

    .line 287
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v26}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 292
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;
    .registers 5

    const v0, 0x7f0c0038

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 144
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateNewBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
