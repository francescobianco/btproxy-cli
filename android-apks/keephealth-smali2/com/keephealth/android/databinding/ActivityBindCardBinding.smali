.class public final Lcom/keephealth/android/databinding/ActivityBindCardBinding;
.super Ljava/lang/Object;
.source "ActivityBindCardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBindCard:Landroid/widget/Button;

.field public final ivAdd:Landroid/widget/ImageView;

.field public final ivQrCode:Landroid/widget/ImageView;

.field public final rlQrCode:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tv1:Landroid/widget/TextView;

.field public final tv2:Landroid/widget/TextView;

.field public final tv3:Landroid/widget/TextView;

.field public final tv4:Landroid/widget/TextView;

.field public final tv5:Landroid/widget/TextView;

.field public final tv6:Landroid/widget/TextView;

.field public final tv7:Landroid/widget/TextView;

.field public final tv8:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->btnBindCard:Landroid/widget/Button;

    .line 71
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->ivAdd:Landroid/widget/ImageView;

    .line 72
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->ivQrCode:Landroid/widget/ImageView;

    .line 73
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->rlQrCode:Landroid/widget/RelativeLayout;

    .line 74
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 75
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv1:Landroid/widget/TextView;

    .line 76
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv2:Landroid/widget/TextView;

    .line 77
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv3:Landroid/widget/TextView;

    .line 78
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv4:Landroid/widget/TextView;

    .line 79
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv5:Landroid/widget/TextView;

    .line 80
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv6:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv7:Landroid/widget/TextView;

    .line 82
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->tv8:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityBindCardBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f09009b

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_ab

    const v1, 0x7f09029c

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_ab

    const v1, 0x7f0902c6

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_ab

    const v1, 0x7f090504

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_ab

    const v1, 0x7f0905f6

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 141
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v9

    const v1, 0x7f09060e

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_ab

    const v1, 0x7f09060f

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_ab

    const v1, 0x7f090610

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_ab

    const v1, 0x7f090611

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_ab

    const v1, 0x7f090612

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_ab

    const v1, 0x7f090613

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_ab

    const v1, 0x7f090614

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_ab

    const v1, 0x7f090615

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_ab

    .line 191
    new-instance v1, Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ActivityBindCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 194
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityBindCardBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityBindCardBinding;
    .registers 5

    const v0, 0x7f0c0023

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityBindCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityBindCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
