.class public final Lcom/keephealth/android/databinding/ActivityDetailStressBinding;
.super Ljava/lang/Object;
.source "ActivityDetailStressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final TvRealTimeValue:Landroid/widget/TextView;

.field public final barLine:Landroid/widget/ImageView;

.field public final imgIndexDian:Landroid/widget/ImageView;

.field public final imgIndexDian1:Landroid/widget/ImageView;

.field public final imgIndexDian2:Landroid/widget/ImageView;

.field public final llLenger:Landroid/widget/LinearLayout;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

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

.field public final tvValueUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 27

    move-object v0, p0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 106
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->TvRealTimeValue:Landroid/widget/TextView;

    move-object v1, p3

    .line 107
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->barLine:Landroid/widget/ImageView;

    move-object v1, p4

    .line 108
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->imgIndexDian:Landroid/widget/ImageView;

    move-object v1, p5

    .line 109
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->imgIndexDian1:Landroid/widget/ImageView;

    move-object v1, p6

    .line 110
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->imgIndexDian2:Landroid/widget/ImageView;

    move-object v1, p7

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->llLenger:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p9

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->rlAvg:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->rlCurrentHeartRate:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->rlRang:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->rlRealTimeHeartRate:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->showData:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvAvg:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvNewValue:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvNewValue2:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvRange:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvTagAvg:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvTagNew:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvTagNew2:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 125
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvTagNewTime:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 126
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvTime:Landroid/widget/TextView;

    move-object/from16 v1, p23

    .line 127
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvValue:Landroid/widget/TextView;

    move-object/from16 v1, p24

    .line 128
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->tvValueUnit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailStressBinding;
    .registers 29

    move-object/from16 v0, p0

    const v1, 0x7f090013

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_12c

    const v1, 0x7f09007f

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_12c

    const v1, 0x7f090231

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_12c

    const v1, 0x7f090232

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_12c

    const v1, 0x7f090233

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_12c

    const v1, 0x7f090382

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_12c

    const v1, 0x7f0903d8

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v11, :cond_12c

    const v1, 0x7f0904db

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_12c

    const v1, 0x7f0904e4

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_12c

    const v1, 0x7f090507

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_12c

    const v1, 0x7f090508

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_12c

    const v1, 0x7f09056a

    .line 225
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_12c

    const v1, 0x7f09061d

    .line 231
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_12c

    const v1, 0x7f09068f

    .line 237
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_12c

    const v1, 0x7f090690

    .line 243
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_12c

    const v1, 0x7f0906a6

    .line 249
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_12c

    const v1, 0x7f0906e7

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_12c

    const v1, 0x7f0906e8

    .line 261
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_12c

    const v1, 0x7f0906e9

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_12c

    const v1, 0x7f0906ea

    .line 273
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_12c

    const v1, 0x7f0906f2

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_12c

    const v1, 0x7f09070c

    .line 285
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_12c

    const v1, 0x7f09070d

    .line 291
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_12c

    .line 296
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v27}, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 301
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailStressBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailStressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailStressBinding;
    .registers 5

    const v0, 0x7f0c003b

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 147
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailStressBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailStressBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
