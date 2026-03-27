.class public final Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;
.super Ljava/lang/Object;
.source "ActivityDeviceVibrateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imgVibrateRight:Landroid/widget/ImageView;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final relaVibrate:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvVibrate:Landroid/widget/TextView;

.field public final tvVibrateSportMode:Landroid/widget/TextView;

.field public final tvVibrateStatus:Landroid/widget/TextView;

.field public final viewVibrate:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 9

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->imgVibrateRight:Landroid/widget/ImageView;

    .line 53
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->relaVibrate:Landroid/widget/RelativeLayout;

    .line 55
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->tvVibrate:Landroid/widget/TextView;

    .line 56
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->tvVibrateSportMode:Landroid/widget/TextView;

    .line 57
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->tvVibrateStatus:Landroid/widget/TextView;

    .line 58
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->viewVibrate:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;
    .registers 12

    const v0, 0x7f09023f

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_5b

    const v0, 0x7f0903dc

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_5b

    const v0, 0x7f0904b6

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_5b

    const v0, 0x7f09078e

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5b

    const v0, 0x7f09078f

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_5b

    const v0, 0x7f090790

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_5b

    const v0, 0x7f0907ce

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5b

    .line 130
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0

    .line 133
    :cond_5b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;
    .registers 5

    const v0, 0x7f0c0040

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDeviceVibrateBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
