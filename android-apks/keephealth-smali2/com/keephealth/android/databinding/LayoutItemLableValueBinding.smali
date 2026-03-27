.class public final Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;
.super Ljava/lang/Object;
.source "LayoutItemLableValueBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivRoad:Landroid/widget/ImageView;

.field public final lable:Landroid/widget/TextView;

.field public final layoutBase:Landroid/widget/RelativeLayout;

.field public final leftDrawable:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final value:Lcom/keephealth/android/views/ValueStateTextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/keephealth/android/views/ValueStateTextView;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p2, p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->ivRoad:Landroid/widget/ImageView;

    .line 44
    iput-object p3, p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->lable:Landroid/widget/TextView;

    .line 45
    iput-object p4, p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->layoutBase:Landroid/widget/RelativeLayout;

    .line 46
    iput-object p5, p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->leftDrawable:Landroid/widget/ImageView;

    .line 47
    iput-object p6, p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->value:Lcom/keephealth/android/views/ValueStateTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;
    .registers 10

    const v0, 0x7f0902c7

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_3b

    const v0, 0x7f0902f6

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3b

    .line 89
    move-object v6, p0

    check-cast v6, Landroid/widget/RelativeLayout;

    const v0, 0x7f09032b

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_3b

    const v0, 0x7f0907b0

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v8, :cond_3b

    .line 103
    new-instance p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/keephealth/android/views/ValueStateTextView;)V

    return-object p0

    .line 106
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;
    .registers 5

    const v0, 0x7f0c0147

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/databinding/LayoutItemLableValueBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
