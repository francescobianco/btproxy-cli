.class public final Lcom/keephealth/android/databinding/DialogMedalBinding;
.super Ljava/lang/Object;
.source "DialogMedalBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSure:Landroid/widget/Button;

.field public final imgAnimation:Landroid/widget/ImageView;

.field public final imgClose:Landroid/widget/ImageView;

.field public final imgLine:Landroid/widget/ImageView;

.field public final imgMedalRes:Landroid/widget/ImageView;

.field public final layoutMedalRes:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final txtMedalName:Landroid/widget/TextView;

.field public final txtMedalTips:Landroid/widget/TextView;

.field public final txtTag:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 57
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->btnSure:Landroid/widget/Button;

    .line 58
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->imgAnimation:Landroid/widget/ImageView;

    .line 59
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->imgClose:Landroid/widget/ImageView;

    .line 60
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->imgLine:Landroid/widget/ImageView;

    .line 61
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->imgMedalRes:Landroid/widget/ImageView;

    .line 62
    iput-object p7, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->layoutMedalRes:Landroid/widget/RelativeLayout;

    .line 63
    iput-object p8, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->txtMedalName:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->txtMedalTips:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->txtTag:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogMedalBinding;
    .registers 14

    const v0, 0x7f0900bb

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_76

    const v0, 0x7f0901ff

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_76

    const v0, 0x7f090205

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_76

    const v0, 0x7f09020c

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_76

    const v0, 0x7f09020f

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_76

    const v0, 0x7f090316

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_76

    const v0, 0x7f090797

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_76

    const v0, 0x7f090798

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_76

    const v0, 0x7f09079f

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_76

    .line 149
    new-instance v0, Lcom/keephealth/android/databinding/DialogMedalBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/DialogMedalBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 152
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogMedalBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogMedalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogMedalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogMedalBinding;
    .registers 5

    const v0, 0x7f0c00df

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogMedalBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogMedalBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogMedalBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogMedalBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
