.class public final Lcom/keephealth/android/databinding/FragmentSportBinding;
.super Ljava/lang/Object;
.source "FragmentSportBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barBgTitle:Landroid/widget/RelativeLayout;

.field public final imgSport:Landroid/widget/ImageView;

.field public final imgStart:Landroid/widget/ImageView;

.field public final imgTarget:Landroid/widget/ImageView;

.field public final layoutTitle:Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;

.field public final mainTitle:Landroid/widget/RelativeLayout;

.field public final rlLayoutData:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final txtDis:Landroid/widget/TextView;

.field public final txtTip:Landroid/widget/TextView;

.field public final txtUnit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p2, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->barBgTitle:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p3, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->imgSport:Landroid/widget/ImageView;

    .line 61
    iput-object p4, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->imgStart:Landroid/widget/ImageView;

    .line 62
    iput-object p5, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->imgTarget:Landroid/widget/ImageView;

    .line 63
    iput-object p6, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->layoutTitle:Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;

    .line 64
    iput-object p7, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->mainTitle:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p8, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->rlLayoutData:Landroid/widget/RelativeLayout;

    .line 66
    iput-object p9, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->txtDis:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->txtTip:Landroid/widget/TextView;

    .line 68
    iput-object p11, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->txtUnit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentSportBinding;
    .registers 15

    const v0, 0x7f090081

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_83

    const v0, 0x7f090219

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_83

    const v0, 0x7f09021a

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_83

    const v0, 0x7f09021c

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_83

    const v0, 0x7f09031f

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 127
    invoke-static {v1}, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;

    move-result-object v8

    const v0, 0x7f0903e6

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_83

    const v0, 0x7f0904f6

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_83

    const v0, 0x7f090794

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_83

    const v0, 0x7f0907a0

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_83

    const v0, 0x7f0907a5

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_83

    .line 159
    new-instance v0, Lcom/keephealth/android/databinding/FragmentSportBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/keephealth/android/databinding/FragmentSportBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 162
    :cond_83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/FragmentSportBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/FragmentSportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentSportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentSportBinding;
    .registers 5

    const v0, 0x7f0c010e

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/FragmentSportBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/FragmentSportBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/FragmentSportBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/databinding/FragmentSportBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
