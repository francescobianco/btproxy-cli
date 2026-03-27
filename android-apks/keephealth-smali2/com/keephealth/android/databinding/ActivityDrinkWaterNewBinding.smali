.class public final Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;
.super Ljava/lang/Object;
.source "ActivityDrinkWaterNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barLine:Landroid/widget/ImageView;

.field public final llDay:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final llOther:Landroid/widget/LinearLayout;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final rlNext:Landroid/widget/RelativeLayout;

.field public final rlTarget:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final selectTitle:Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;

.field public final showData:Landroid/widget/LinearLayout;

.field public final sineWave:Lcom/keephealth/android/views/SineWaveView;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvRecordTag:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/SineWaveView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 16

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 78
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->barLine:Landroid/widget/ImageView;

    .line 79
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->llDay:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->llOther:Landroid/widget/LinearLayout;

    .line 81
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 82
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->rlNext:Landroid/widget/RelativeLayout;

    .line 84
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->rlTarget:Landroid/widget/RelativeLayout;

    .line 85
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->selectTitle:Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;

    .line 86
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->showData:Landroid/widget/LinearLayout;

    .line 87
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->sineWave:Lcom/keephealth/android/views/SineWaveView;

    .line 88
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 89
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->tvRecordTag:Landroid/widget/TextView;

    .line 90
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->tvTime:Landroid/widget/TextView;

    .line 91
    iput-object p15, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->tvValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;
    .registers 20

    move-object/from16 v0, p0

    const v1, 0x7f09007f

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_b9

    const v1, 0x7f090364

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_b9

    const v1, 0x7f090394

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_b9

    const v1, 0x7f0903d8

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v8, :cond_b9

    const v1, 0x7f0903dc

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_b9

    const v1, 0x7f0904fd

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_b9

    const v1, 0x7f090518

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_b9

    const v1, 0x7f09055a

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b9

    .line 168
    invoke-static {v2}, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;

    move-result-object v12

    const v1, 0x7f09056a

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_b9

    const v1, 0x7f090571

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/keephealth/android/views/SineWaveView;

    if-eqz v14, :cond_b9

    const v1, 0x7f0905f6

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b9

    .line 187
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v15

    const v1, 0x7f0906a9

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_b9

    const v1, 0x7f0906f2

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_b9

    const v1, 0x7f09070c

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_b9

    .line 207
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/BarChart;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/SineWaveView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 211
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;
    .registers 5

    const v0, 0x7f0c0049

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDrinkWaterNewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
