.class public final Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;
.super Ljava/lang/Object;
.source "FragmentMainTestItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dayChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final ivDelete:Landroid/widget/ImageView;

.field public final ivNoData:Landroid/widget/ImageView;

.field public final ivSportType:Landroid/widget/ImageView;

.field public final rlLayout:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final sleepBarChart:Lcom/keephealth/android/views/SleepBarDetailChart;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvMenu:Landroid/widget/TextView;

.field public final tvShowLast:Landroid/widget/TextView;

.field public final tvSportType:Landroid/widget/TextView;

.field public final waterDayChart:Lcom/github/mikephil/charting/charts/BarChart;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/SleepBarDetailChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/BarChart;)V
    .registers 13

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p2, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->dayChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 66
    iput-object p3, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->ivDelete:Landroid/widget/ImageView;

    .line 67
    iput-object p4, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->ivNoData:Landroid/widget/ImageView;

    .line 68
    iput-object p5, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->ivSportType:Landroid/widget/ImageView;

    .line 69
    iput-object p6, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->rlLayout:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p7, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->sleepBarChart:Lcom/keephealth/android/views/SleepBarDetailChart;

    .line 71
    iput-object p8, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->tvDate:Landroid/widget/TextView;

    .line 72
    iput-object p9, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->tvMenu:Landroid/widget/TextView;

    .line 73
    iput-object p10, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->tvShowLast:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->tvSportType:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->waterDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;
    .registers 16

    const v0, 0x7f09011c

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v4, :cond_83

    const v0, 0x7f0902a7

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_83

    const v0, 0x7f0902c0

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_83

    const v0, 0x7f0902d0

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_83

    .line 129
    move-object v8, p0

    check-cast v8, Landroid/widget/RelativeLayout;

    const v0, 0x7f090575

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/keephealth/android/views/SleepBarDetailChart;

    if-eqz v9, :cond_83

    const v0, 0x7f090640

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_83

    const v0, 0x7f090684

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_83

    const v0, 0x7f0906c0

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_83

    const v0, 0x7f0906d8

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_83

    const v0, 0x7f0907d3

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/github/mikephil/charting/charts/BarChart;

    if-eqz v14, :cond_83

    .line 167
    new-instance p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/SleepBarDetailChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mikephil/charting/charts/BarChart;)V

    return-object p0

    .line 171
    :cond_83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;
    .registers 5

    const v0, 0x7f0c0108

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentMainTestItemBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
