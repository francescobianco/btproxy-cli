.class public final Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;
.super Ljava/lang/Object;
.source "ActivityDetailStepsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avgUnit:Landroid/widget/TextView;

.field public final baseTitleBg2:Landroid/widget/RelativeLayout;

.field public final imgBack:Landroid/widget/ImageView;

.field public final imgCalander:Landroid/widget/ImageView;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final rlAvg:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final showData:Landroid/widget/LinearLayout;

.field public final sleepLine:Landroid/widget/ImageView;

.field public final totalUnit:Landroid/widget/TextView;

.field public final tvAvg:Landroid/widget/TextView;

.field public final tvSleepStatus:Landroid/widget/TextView;

.field public final tvSleepTime:Landroid/widget/TextView;

.field public final tvSleepTimeUnit:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;

.field public final tvTagAvg:Landroid/widget/TextView;

.field public final tvTitleNname:Landroid/widget/TextView;

.field public final tvTotal:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 21

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->avgUnit:Landroid/widget/TextView;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->baseTitleBg2:Landroid/widget/RelativeLayout;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->imgBack:Landroid/widget/ImageView;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->imgCalander:Landroid/widget/ImageView;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->rlAvg:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->showData:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->sleepLine:Landroid/widget/ImageView;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->totalUnit:Landroid/widget/TextView;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvAvg:Landroid/widget/TextView;

    move-object v1, p12

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvSleepStatus:Landroid/widget/TextView;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvSleepTime:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvSleepTimeUnit:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvTag:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvTagAvg:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvTitleNname:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->tvTotal:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;
    .registers 23

    move-object/from16 v0, p0

    const v1, 0x7f09007c

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_de

    const v1, 0x7f090088

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_de

    const v1, 0x7f090220

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_de

    const v1, 0x7f090223

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_de

    const v1, 0x7f0903d8

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v9, :cond_de

    const v1, 0x7f0904db

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_de

    const v1, 0x7f09056a

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_de

    const v1, 0x7f090577

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_de

    const v1, 0x7f090602

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_de

    const v1, 0x7f09061d

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_de

    const v1, 0x7f0906cd

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_de

    const v1, 0x7f0906cf

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_de

    const v1, 0x7f0906d0

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_de

    const v1, 0x7f0906e6

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_de

    const v1, 0x7f0906e7

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_de

    const v1, 0x7f090788

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_de

    const v1, 0x7f0906ff

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_de

    .line 233
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v21}, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 237
    :cond_de
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;
    .registers 5

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailStepsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
