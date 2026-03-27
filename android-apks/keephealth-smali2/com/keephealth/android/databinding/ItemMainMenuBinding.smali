.class public final Lcom/keephealth/android/databinding/ItemMainMenuBinding;
.super Ljava/lang/Object;
.source "ItemMainMenuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dayChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final drinkProgress:Lcom/keephealth/android/views/DrinkMenuProgressView;

.field public final ivDelete:Landroid/widget/ImageView;

.field public final ivNoData:Landroid/widget/ImageView;

.field public final ivSportType:Landroid/widget/ImageView;

.field public final mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

.field public final rlLayout:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final sleepBarChart:Lcom/keephealth/android/views/SleepBarDetailChart;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvMenu:Landroid/widget/TextView;

.field public final tvShowLast:Landroid/widget/TextView;

.field public final tvSportType:Landroid/widget/TextView;

.field public final waterDayChart:Lcom/github/mikephil/charting/charts/BarChart;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/github/mikephil/charting/charts/LineChart;Lcom/keephealth/android/views/DrinkMenuProgressView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/ScatterChart;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/SleepBarDetailChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/BarChart;)V
    .registers 15

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 75
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->dayChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 76
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->drinkProgress:Lcom/keephealth/android/views/DrinkMenuProgressView;

    .line 77
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->ivDelete:Landroid/widget/ImageView;

    .line 78
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->ivNoData:Landroid/widget/ImageView;

    .line 79
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->ivSportType:Landroid/widget/ImageView;

    .line 80
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->mScatterChart:Lcom/github/mikephil/charting/charts/ScatterChart;

    .line 81
    iput-object p8, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->rlLayout:Landroid/widget/RelativeLayout;

    .line 82
    iput-object p9, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->sleepBarChart:Lcom/keephealth/android/views/SleepBarDetailChart;

    .line 83
    iput-object p10, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->tvDate:Landroid/widget/TextView;

    .line 84
    iput-object p11, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->tvMenu:Landroid/widget/TextView;

    .line 85
    iput-object p12, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->tvShowLast:Landroid/widget/TextView;

    .line 86
    iput-object p13, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->tvSportType:Landroid/widget/TextView;

    .line 87
    iput-object p14, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->waterDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemMainMenuBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f09011c

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v5, :cond_9f

    const v1, 0x7f09014f

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/DrinkMenuProgressView;

    if-eqz v6, :cond_9f

    const v1, 0x7f0902a7

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_9f

    const v1, 0x7f0902c0

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_9f

    const v1, 0x7f0902d0

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_9f

    const v1, 0x7f0903e2

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/github/mikephil/charting/charts/ScatterChart;

    if-eqz v10, :cond_9f

    .line 153
    move-object v11, v0

    check-cast v11, Landroid/widget/RelativeLayout;

    const v1, 0x7f090575

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/keephealth/android/views/SleepBarDetailChart;

    if-eqz v12, :cond_9f

    const v1, 0x7f090640

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_9f

    const v1, 0x7f090684

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_9f

    const v1, 0x7f0906c0

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_9f

    const v1, 0x7f0906d8

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_9f

    const v1, 0x7f0907d3

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v17, :cond_9f

    .line 191
    new-instance v0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;

    move-object v3, v0

    move-object v4, v11

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ItemMainMenuBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/github/mikephil/charting/charts/LineChart;Lcom/keephealth/android/views/DrinkMenuProgressView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/github/mikephil/charting/charts/ScatterChart;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/SleepBarDetailChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/BarChart;)V

    return-object v0

    .line 195
    :cond_9f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemMainMenuBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemMainMenuBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemMainMenuBinding;
    .registers 5

    const v0, 0x7f0c0124

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemMainMenuBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemMainMenuBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
