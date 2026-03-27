.class public final Lcom/keephealth/android/databinding/FragmentFamilyBinding;
.super Ljava/lang/Object;
.source "FragmentFamilyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAddMember:Landroid/widget/Button;

.field public final btnInviteGuardian:Landroid/widget/Button;

.field public final layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

.field public final layoutGuardian:Landroid/widget/LinearLayout;

.field public final layoutInvitation:Landroid/widget/LinearLayout;

.field public final layoutMember:Landroid/widget/LinearLayout;

.field public final recyclerViewGuardian:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyclerViewInvitation:Landroidx/recyclerview/widget/RecyclerView;

.field public final recyclerViewMember:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvMore:Landroid/widget/TextView;

.field public final tvTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 66
    iput-object p2, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->btnAddMember:Landroid/widget/Button;

    .line 67
    iput-object p3, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->btnInviteGuardian:Landroid/widget/Button;

    .line 68
    iput-object p4, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->layoutData:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 69
    iput-object p5, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->layoutGuardian:Landroid/widget/LinearLayout;

    .line 70
    iput-object p6, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->layoutInvitation:Landroid/widget/LinearLayout;

    .line 71
    iput-object p7, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->layoutMember:Landroid/widget/LinearLayout;

    .line 72
    iput-object p8, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->recyclerViewGuardian:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iput-object p9, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->recyclerViewInvitation:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    iput-object p10, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->recyclerViewMember:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    iput-object p11, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->tvMore:Landroid/widget/TextView;

    .line 76
    iput-object p12, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->tvTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentFamilyBinding;
    .registers 16

    const v0, 0x7f090098

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_8e

    const v0, 0x7f0900a6

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_8e

    const v0, 0x7f090301

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    if-eqz v6, :cond_8e

    const v0, 0x7f090307

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_8e

    const v0, 0x7f09030c

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_8e

    const v0, 0x7f090317

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_8e

    const v0, 0x7f09049f

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_8e

    const v0, 0x7f0904a0

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_8e

    const v0, 0x7f0904a1

    .line 155
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_8e

    const v0, 0x7f09068b

    .line 161
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8e

    const v0, 0x7f0906f5

    .line 167
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_8e

    .line 172
    new-instance v0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/FragmentFamilyBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 176
    :cond_8e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentFamilyBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentFamilyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentFamilyBinding;
    .registers 5

    const v0, 0x7f0c0103

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentFamilyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentFamilyBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
