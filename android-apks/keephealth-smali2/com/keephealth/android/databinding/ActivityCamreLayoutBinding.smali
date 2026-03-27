.class public final Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;
.super Ljava/lang/Object;
.source "ActivityCamreLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cameraPreviewLayout:Landroid/widget/FrameLayout;

.field public final cancleButton:Landroid/widget/Button;

.field public final changeWebcam:Landroid/widget/ImageView;

.field public final flashButton:Landroid/widget/ImageView;

.field public final llPhotoLayout:Landroid/widget/RelativeLayout;

.field public final llPhotoTop:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final takePhotoButton:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V
    .registers 9

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 51
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->cameraPreviewLayout:Landroid/widget/FrameLayout;

    .line 52
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->cancleButton:Landroid/widget/Button;

    .line 53
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->changeWebcam:Landroid/widget/ImageView;

    .line 54
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->flashButton:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->llPhotoLayout:Landroid/widget/RelativeLayout;

    .line 56
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->llPhotoTop:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->takePhotoButton:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;
    .registers 12

    const v0, 0x7f0900d1

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5e

    const v0, 0x7f0900d6

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_5e

    const v0, 0x7f0900e1

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_5e

    const v0, 0x7f090197

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_5e

    const v0, 0x7f0903c4

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_5e

    const v0, 0x7f0903c5

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_5e

    const v0, 0x7f0905c1

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_5e

    .line 129
    new-instance v0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V

    return-object v0

    .line 132
    :cond_5e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;
    .registers 5

    const v0, 0x7f0c0027

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityCamreLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
