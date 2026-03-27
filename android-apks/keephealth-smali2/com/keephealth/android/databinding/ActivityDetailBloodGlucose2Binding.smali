.class public final Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;
.super Ljava/lang/Object;
.source "ActivityDetailBloodGlucose2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barLine:Landroid/widget/ImageView;

.field public final imgIndexDian:Landroid/widget/ImageView;

.field public final imgIndexDian1:Landroid/widget/ImageView;

.field public final imgIndexDian2:Landroid/widget/ImageView;

.field public final llLenger:Landroid/widget/LinearLayout;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final rlAvg:Landroid/widget/RelativeLayout;

.field public final rlRang:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final showData:Landroid/widget/LinearLayout;

.field public final tvAvg:Landroid/widget/TextView;

.field public final tvNewValue:Landroid/widget/TextView;

.field public final tvRange:Landroid/widget/TextView;

.field public final tvTagAvg:Landroid/widget/TextView;

.field public final tvTagNew:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 20

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->barLine:Landroid/widget/ImageView;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->imgIndexDian:Landroid/widget/ImageView;

    move-object v1, p4

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->imgIndexDian1:Landroid/widget/ImageView;

    move-object v1, p5

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->imgIndexDian2:Landroid/widget/ImageView;

    move-object v1, p6

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->llLenger:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->rlAvg:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->rlRang:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->showData:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->tvAvg:Landroid/widget/TextView;

    move-object v1, p12

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->tvNewValue:Landroid/widget/TextView;

    move-object v1, p13

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->tvRange:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->tvTagAvg:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->tvTagNew:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->tvTime:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->tvValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;
    .registers 22

    move-object/from16 v0, p0

    const v1, 0x7f09007f

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_d1

    const v1, 0x7f090231

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_d1

    const v1, 0x7f090232

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_d1

    const v1, 0x7f090233

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_d1

    const v1, 0x7f090382

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_d1

    const v1, 0x7f0903d8

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v10, :cond_d1

    const v1, 0x7f0904db

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_d1

    const v1, 0x7f090507

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_d1

    const v1, 0x7f09056a

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_d1

    const v1, 0x7f09061d

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_d1

    const v1, 0x7f09068f

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_d1

    const v1, 0x7f0906a6

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_d1

    const v1, 0x7f0906e7

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_d1

    const v1, 0x7f0906e8

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_d1

    const v1, 0x7f0906f2

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_d1

    const v1, 0x7f09070c

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_d1

    .line 223
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v20}, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 227
    :cond_d1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;
    .registers 5

    const v0, 0x7f0c0032

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodGlucose2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
