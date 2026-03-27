.class public final Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;
.super Ljava/lang/Object;
.source "PullToRefreshHeaderHorizontalBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flInner:Landroid/widget/FrameLayout;

.field public final pullToRefreshImage:Landroid/widget/ImageView;

.field public final pullToRefreshProgress:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;->rootView:Landroid/view/View;

    .line 34
    iput-object p2, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;->flInner:Landroid/widget/FrameLayout;

    .line 35
    iput-object p3, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;->pullToRefreshImage:Landroid/widget/ImageView;

    .line 36
    iput-object p4, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;->pullToRefreshProgress:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;
    .registers 5

    const v0, 0x7f090195

    .line 62
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_27

    const v0, 0x7f09047b

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_27

    const v0, 0x7f09047c

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_27

    .line 79
    new-instance v0, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    return-object v0

    .line 82
    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;
    .registers 3

    if-eqz p1, :cond_d

    const v0, 0x7f0c018c

    .line 51
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    invoke-static {p1}, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;

    move-result-object p0

    return-object p0

    .line 49
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderHorizontalBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
