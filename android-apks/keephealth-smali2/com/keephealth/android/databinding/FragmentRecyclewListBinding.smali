.class public final Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;
.super Ljava/lang/Object;
.source "FragmentRecyclewListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;->rootView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iput-object p2, p0, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;
    .registers 2

    if-eqz p0, :cond_a

    .line 55
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    new-instance v0, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;

    invoke-direct {v0, p0, p0}, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 52
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;
    .registers 5

    const v0, 0x7f0c010c

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentRecyclewListBinding;->rootView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
