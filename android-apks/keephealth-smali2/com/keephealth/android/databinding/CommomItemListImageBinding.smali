.class public final Lcom/keephealth/android/databinding/CommomItemListImageBinding;
.super Ljava/lang/Object;
.source "CommomItemListImageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cbSelected:Landroid/widget/ImageView;

.field public final ivImage:Landroid/widget/ImageView;

.field public final ivIsGif:Landroid/widget/ImageView;

.field public final layMask:Landroid/view/View;

.field private final rootView:Lcom/keephealth/android/views/gallery/view/SquareLayout;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/gallery/view/SquareLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->rootView:Lcom/keephealth/android/views/gallery/view/SquareLayout;

    .line 37
    iput-object p2, p0, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->cbSelected:Landroid/widget/ImageView;

    .line 38
    iput-object p3, p0, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->ivImage:Landroid/widget/ImageView;

    .line 39
    iput-object p4, p0, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->ivIsGif:Landroid/widget/ImageView;

    .line 40
    iput-object p5, p0, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->layMask:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/CommomItemListImageBinding;
    .registers 9

    const v0, 0x7f0900d7

    .line 71
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_37

    const v0, 0x7f0902e0

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_37

    const v0, 0x7f0902e1

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_37

    const v0, 0x7f0902fa

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 94
    new-instance v0, Lcom/keephealth/android/databinding/CommomItemListImageBinding;

    move-object v3, p0

    check-cast v3, Lcom/keephealth/android/views/gallery/view/SquareLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/databinding/CommomItemListImageBinding;-><init>(Lcom/keephealth/android/views/gallery/view/SquareLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-object v0

    .line 97
    :cond_37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/CommomItemListImageBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/CommomItemListImageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/CommomItemListImageBinding;
    .registers 5

    const v0, 0x7f0c00b2

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/CommomItemListImageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->getRoot()Lcom/keephealth/android/views/gallery/view/SquareLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/keephealth/android/views/gallery/view/SquareLayout;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/databinding/CommomItemListImageBinding;->rootView:Lcom/keephealth/android/views/gallery/view/SquareLayout;

    return-object v0
.end method
