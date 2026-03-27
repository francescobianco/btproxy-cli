.class public final Lcom/keephealth/android/databinding/CommomItemListCamBinding;
.super Ljava/lang/Object;
.source "CommomItemListCamBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/keephealth/android/views/gallery/view/SquareLayout;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/gallery/view/SquareLayout;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/databinding/CommomItemListCamBinding;->rootView:Lcom/keephealth/android/views/gallery/view/SquareLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/CommomItemListCamBinding;
    .registers 2

    if-eqz p0, :cond_a

    .line 50
    new-instance v0, Lcom/keephealth/android/databinding/CommomItemListCamBinding;

    check-cast p0, Lcom/keephealth/android/views/gallery/view/SquareLayout;

    invoke-direct {v0, p0}, Lcom/keephealth/android/databinding/CommomItemListCamBinding;-><init>(Lcom/keephealth/android/views/gallery/view/SquareLayout;)V

    return-object v0

    .line 47
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/CommomItemListCamBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/CommomItemListCamBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/CommomItemListCamBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/CommomItemListCamBinding;
    .registers 5

    const v0, 0x7f0c00b0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 39
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/CommomItemListCamBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/CommomItemListCamBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/CommomItemListCamBinding;->getRoot()Lcom/keephealth/android/views/gallery/view/SquareLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/keephealth/android/views/gallery/view/SquareLayout;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/databinding/CommomItemListCamBinding;->rootView:Lcom/keephealth/android/views/gallery/view/SquareLayout;

    return-object v0
.end method
