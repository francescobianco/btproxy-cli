.class public final Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;
.super Ljava/lang/Object;
.source "BaseMvvmTitleBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barBg:Landroid/widget/RelativeLayout;

.field public final baseRela:Landroid/widget/RelativeLayout;

.field public final baseRightText:Landroid/widget/Button;

.field public final baseTitleBack:Landroid/widget/ImageView;

.field public final baseTitleBg:Landroid/widget/RelativeLayout;

.field public final baseTitleName:Landroid/widget/TextView;

.field public final bgView:Landroid/view/View;

.field public final layoutTitle:Landroid/widget/RelativeLayout;

.field public final rightImg:Landroid/widget/ImageView;

.field public final rlTitleMap:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .registers 12

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p2, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->barBg:Landroid/widget/RelativeLayout;

    .line 61
    iput-object p3, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRela:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p4, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseRightText:Landroid/widget/Button;

    .line 63
    iput-object p5, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    .line 64
    iput-object p6, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBg:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p7, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    .line 66
    iput-object p8, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bgView:Landroid/view/View;

    .line 67
    iput-object p9, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p10, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    .line 69
    iput-object p11, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rlTitleMap:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;
    .registers 15

    const v0, 0x7f090080

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_74

    .line 105
    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    const v0, 0x7f090085

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_74

    const v0, 0x7f090086

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_74

    const v0, 0x7f090087

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_74

    const v0, 0x7f090089

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_74

    const v0, 0x7f09008d

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_74

    const v0, 0x7f09031f

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_74

    const v0, 0x7f0904d1

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_74

    const v0, 0x7f09052d

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_74

    .line 155
    new-instance p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v13}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    return-object p0

    .line 158
    :cond_74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;
    .registers 5

    const v0, 0x7f0c00a8

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
