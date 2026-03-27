.class public final Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;
.super Ljava/lang/Object;
.source "ActivityTempHistory2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barLine:Landroid/widget/ImageView;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final rlAvg:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final showData:Landroid/widget/LinearLayout;

.field public final tvAvg:Landroid/widget/TextView;

.field public final tvNewValue:Landroid/widget/TextView;

.field public final tvTag:Landroid/widget/TextView;

.field public final tvTagAvg:Landroid/widget/TextView;

.field public final tvTagNew:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvTotal:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 14

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 68
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->barLine:Landroid/widget/ImageView;

    .line 69
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 70
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->rlAvg:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->showData:Landroid/widget/LinearLayout;

    .line 72
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvAvg:Landroid/widget/TextView;

    .line 73
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvNewValue:Landroid/widget/TextView;

    .line 74
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvTag:Landroid/widget/TextView;

    .line 75
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvTagAvg:Landroid/widget/TextView;

    .line 76
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvTagNew:Landroid/widget/TextView;

    .line 77
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvTime:Landroid/widget/TextView;

    .line 78
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvTotal:Landroid/widget/TextView;

    .line 79
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->tvValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;
    .registers 18

    move-object/from16 v0, p0

    const v1, 0x7f09007f

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_9d

    const v1, 0x7f0903d8

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v6, :cond_9d

    const v1, 0x7f0904db

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_9d

    const v1, 0x7f09056a

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_9d

    const v1, 0x7f09061d

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_9d

    const v1, 0x7f09068f

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_9d

    const v1, 0x7f0906e6

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_9d

    const v1, 0x7f0906e7

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_9d

    const v1, 0x7f0906e8

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_9d

    const v1, 0x7f0906f2

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_9d

    const v1, 0x7f0906ff

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_9d

    const v1, 0x7f09070c

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_9d

    .line 181
    new-instance v1, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 184
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;
    .registers 5

    const v0, 0x7f0c0091

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityTempHistory2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
