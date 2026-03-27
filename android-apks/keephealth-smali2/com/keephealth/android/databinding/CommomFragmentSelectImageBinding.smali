.class public final Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;
.super Ljava/lang/Object;
.source "CommomFragmentSelectImageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnDone:Landroid/widget/TextView;

.field public final btnPreview:Landroid/widget/TextView;

.field public final flFolder:Landroid/widget/FrameLayout;

.field public final ibBack:Landroid/widget/ImageButton;

.field public final ivArrow:Landroid/widget/ImageView;

.field public final layButton:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rvImage:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbar:Landroid/widget/RelativeLayout;

.field public final tvFolderName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .registers 11

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p2, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->btnDone:Landroid/widget/TextView;

    .line 60
    iput-object p3, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->btnPreview:Landroid/widget/TextView;

    .line 61
    iput-object p4, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->flFolder:Landroid/widget/FrameLayout;

    .line 62
    iput-object p5, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->ibBack:Landroid/widget/ImageButton;

    .line 63
    iput-object p6, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->ivArrow:Landroid/widget/ImageView;

    .line 64
    iput-object p7, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->layButton:Landroid/widget/FrameLayout;

    .line 65
    iput-object p8, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->rvImage:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    iput-object p9, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->toolbar:Landroid/widget/RelativeLayout;

    .line 67
    iput-object p10, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->tvFolderName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;
    .registers 14

    const v0, 0x7f0900c2

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_76

    const v0, 0x7f0900c6

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_76

    const v0, 0x7f090194

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_76

    const v0, 0x7f0901bc

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_76

    const v0, 0x7f0902d7

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_76

    const v0, 0x7f0902f8

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_76

    const v0, 0x7f090536

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_76

    const v0, 0x7f0905fe

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_76

    const v0, 0x7f09073b

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_76

    .line 151
    new-instance v0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object v0

    .line 154
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;
    .registers 5

    const v0, 0x7f0c00af

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/databinding/CommomFragmentSelectImageBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
