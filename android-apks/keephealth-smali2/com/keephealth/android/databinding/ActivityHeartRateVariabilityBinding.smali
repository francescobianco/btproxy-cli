.class public final Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;
.super Ljava/lang/Object;
.source "ActivityHeartRateVariabilityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 27
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;
    .registers 3

    const v0, 0x7f0905f6

    .line 58
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 62
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;)V

    return-object v1

    .line 67
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;
    .registers 5

    const v0, 0x7f0c005f

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityHeartRateVariabilityBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
