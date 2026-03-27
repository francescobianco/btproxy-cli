.class public final Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;
.super Ljava/lang/Object;
.source "LayoutDetailTitle2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/RelativeLayout;

.field public final ivSet:Landroid/widget/ImageView;

.field public final rlTitle:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/google/android/material/tabs/TabLayout;)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->ivBack:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p3, p0, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->ivSet:Landroid/widget/ImageView;

    .line 41
    iput-object p4, p0, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->rlTitle:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p5, p0, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;
    .registers 9

    const v0, 0x7f09029f

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_3a

    const v0, 0x7f0902ce

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3a

    const v0, 0x7f09051a

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_3a

    const v0, 0x7f0905ac

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v7, :cond_3a

    .line 96
    new-instance v0, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/google/android/material/tabs/TabLayout;)V

    return-object v0

    .line 99
    :cond_3a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;
    .registers 5

    const v0, 0x7f0c0146

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/databinding/LayoutDetailTitle2Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
