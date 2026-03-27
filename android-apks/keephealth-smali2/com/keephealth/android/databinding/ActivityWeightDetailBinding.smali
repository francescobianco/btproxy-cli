.class public final Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;
.super Ljava/lang/Object;
.source "ActivityWeightDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barLine:Landroid/widget/ImageView;

.field public final btnRecord:Landroid/widget/Button;

.field public final imgIndexDian:Landroid/widget/ImageView;

.field public final rlLayout:Landroid/widget/RelativeLayout;

.field public final rlTarget:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final tvBmi:Landroid/widget/TextView;

.field public final tvDate1:Landroid/widget/TextView;

.field public final tvDate2:Landroid/widget/TextView;

.field public final tvNeed:Landroid/widget/TextView;

.field public final tvSetWeightTarget:Landroid/widget/Button;

.field public final tvTragetComplete:Landroid/widget/TextView;

.field public final tvWeight:Landroid/widget/TextView;

.field public final tvWeightNeed:Landroid/widget/TextView;

.field public final tvWeightTarget:Landroid/widget/TextView;

.field public final weightChart:Lcom/github/mikephil/charting/charts/LineChart;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V
    .registers 19

    move-object v0, p0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 78
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->barLine:Landroid/widget/ImageView;

    move-object v1, p3

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->btnRecord:Landroid/widget/Button;

    move-object v1, p4

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->imgIndexDian:Landroid/widget/ImageView;

    move-object v1, p5

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->rlLayout:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->rlTarget:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvBmi:Landroid/widget/TextView;

    move-object v1, p8

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvDate1:Landroid/widget/TextView;

    move-object v1, p9

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvDate2:Landroid/widget/TextView;

    move-object v1, p10

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvNeed:Landroid/widget/TextView;

    move-object v1, p11

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvSetWeightTarget:Landroid/widget/Button;

    move-object v1, p12

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvTragetComplete:Landroid/widget/TextView;

    move-object v1, p13

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvWeight:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvWeightNeed:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->tvWeightTarget:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->weightChart:Lcom/github/mikephil/charting/charts/LineChart;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;
    .registers 21

    move-object/from16 v0, p0

    const v1, 0x7f09007f

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_c4

    const v1, 0x7f0900ab

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_c4

    const v1, 0x7f090231

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_c4

    const v1, 0x7f0904f4

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_c4

    const v1, 0x7f090518

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_c4

    const v1, 0x7f090629

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_c4

    const v1, 0x7f090641

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_c4

    const v1, 0x7f090642

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_c4

    const v1, 0x7f09068e

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_c4

    const v1, 0x7f0906bd

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_c4

    const v1, 0x7f090703

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_c4

    const v1, 0x7f090716

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_c4

    const v1, 0x7f090717

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_c4

    const v1, 0x7f090718

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_c4

    const v1, 0x7f0907e1

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v19, :cond_c4

    .line 213
    new-instance v1, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v19}, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/LineChart;)V

    return-object v1

    .line 217
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;
    .registers 5

    const v0, 0x7f0c009c

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityWeightDetailBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
