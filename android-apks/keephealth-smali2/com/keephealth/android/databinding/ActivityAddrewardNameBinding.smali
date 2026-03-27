.class public final Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;
.super Ljava/lang/Object;
.source "ActivityAddrewardNameBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etAddName:Landroid/widget/EditText;

.field public final layoutMain:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final recyclerviewAddreward:Landroidx/recyclerview/widget/RecyclerView;

.field public final relaAddrewardName:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvAddRewardChoose:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;)V
    .registers 8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    .line 49
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->layoutMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->recyclerviewAddreward:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->relaAddrewardName:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 53
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->tvAddRewardChoose:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;
    .registers 11

    const v0, 0x7f090170

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_48

    .line 89
    move-object v5, p0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0904a4

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_48

    const v0, 0x7f0904aa

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_48

    const v0, 0x7f0905f6

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 108
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v8

    const v0, 0x7f090720

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_48

    .line 116
    new-instance p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;)V

    return-object p0

    .line 119
    :cond_48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;
    .registers 5

    const v0, 0x7f0c001f

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
