.class public final Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;
.super Ljava/lang/Object;
.source "ActivityDetailHeartRateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final heartRateBarChart:Lcom/keephealth/android/views/HeartBarChart;

.field public final heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAvHrValue:Landroid/widget/TextView;

.field public final tvHrValue:Landroid/widget/TextView;

.field public final tvMaxHrValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/HeartBarChart;Lcom/keephealth/android/views/HeartRateChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->heartRateBarChart:Lcom/keephealth/android/views/HeartBarChart;

    .line 44
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

    .line 45
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->tvAvHrValue:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->tvHrValue:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->tvMaxHrValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;
    .registers 10

    const v0, 0x7f0901ae

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/HeartBarChart;

    if-eqz v4, :cond_46

    const v0, 0x7f0901af

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/HeartRateChart;

    if-eqz v5, :cond_46

    const v0, 0x7f09061c

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_46

    const v0, 0x7f09066f

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_46

    const v0, 0x7f090683

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_46

    .line 107
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;-><init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/HeartBarChart;Lcom/keephealth/android/views/HeartRateChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 110
    :cond_46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;
    .registers 5

    const v0, 0x7f0c0037

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailHeartRateBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
