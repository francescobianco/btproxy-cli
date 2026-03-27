.class public final Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;
.super Ljava/lang/Object;
.source "PullToRefreshHeaderVerticalBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flInner:Landroid/widget/FrameLayout;

.field public final pullToRefreshImage:Landroid/widget/ImageView;

.field public final pullToRefreshProgress:Landroid/widget/ProgressBar;

.field public final pullToRefreshSubText:Landroid/widget/TextView;

.field public final pullToRefreshText:Landroid/widget/TextView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->rootView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->flInner:Landroid/widget/FrameLayout;

    .line 43
    iput-object p3, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->pullToRefreshImage:Landroid/widget/ImageView;

    .line 44
    iput-object p4, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->pullToRefreshProgress:Landroid/widget/ProgressBar;

    .line 45
    iput-object p5, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->pullToRefreshSubText:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->pullToRefreshText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;
    .registers 10

    const v0, 0x7f090195

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_44

    const v0, 0x7f09047b

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_44

    const v0, 0x7f09047c

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_44

    const v0, 0x7f09047d

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_44

    const v0, 0x7f09047e

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_44

    .line 101
    new-instance v0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 104
    :cond_44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;
    .registers 3

    if-eqz p1, :cond_d

    const v0, 0x7f0c018d

    .line 61
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    invoke-static {p1}, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;

    move-result-object p0

    return-object p0

    .line 59
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/databinding/PullToRefreshHeaderVerticalBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
