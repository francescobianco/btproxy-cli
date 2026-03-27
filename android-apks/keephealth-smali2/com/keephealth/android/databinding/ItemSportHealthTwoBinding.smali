.class public final Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;
.super Ljava/lang/Object;
.source "ItemSportHealthTwoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final arrow:Landroid/widget/ImageView;

.field public final imBluthTag:Landroid/widget/ImageView;

.field public final imageCal:Landroid/widget/ImageView;

.field public final imageTime:Landroid/widget/ImageView;

.field public final ivHeart:Landroid/widget/ImageView;

.field public final ivSportType:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvAvHeartRate:Landroid/widget/TextView;

.field public final tvCal:Landroid/widget/TextView;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvDistance:Landroid/widget/TextView;

.field public final tvDistanceUnit:Landroid/widget/TextView;

.field public final tvDuration:Landroid/widget/TextView;

.field public final tvSportType:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->arrow:Landroid/widget/ImageView;

    .line 70
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->imBluthTag:Landroid/widget/ImageView;

    .line 71
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->imageCal:Landroid/widget/ImageView;

    .line 72
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->imageTime:Landroid/widget/ImageView;

    .line 73
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->ivHeart:Landroid/widget/ImageView;

    .line 74
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->ivSportType:Landroid/widget/ImageView;

    .line 75
    iput-object p8, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->tvAvHeartRate:Landroid/widget/TextView;

    .line 76
    iput-object p9, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->tvCal:Landroid/widget/TextView;

    .line 77
    iput-object p10, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->tvDate:Landroid/widget/TextView;

    .line 78
    iput-object p11, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->tvDistance:Landroid/widget/TextView;

    .line 79
    iput-object p12, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->tvDistanceUnit:Landroid/widget/TextView;

    .line 80
    iput-object p13, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->tvDuration:Landroid/widget/TextView;

    .line 81
    iput-object p14, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->tvSportType:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f090069

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_aa

    const v1, 0x7f0901f8

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_aa

    const v1, 0x7f0901fb

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_aa

    const v1, 0x7f0901fc

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_aa

    const v1, 0x7f0902b3

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_aa

    const v1, 0x7f0902d0

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_aa

    const v1, 0x7f09061b

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_aa

    const v1, 0x7f090630

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_aa

    const v1, 0x7f090640

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_aa

    const v1, 0x7f090653

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_aa

    const v1, 0x7f090654

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_aa

    const v1, 0x7f090658

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_aa

    const v1, 0x7f0906d8

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_aa

    .line 189
    new-instance v1, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 193
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;
    .registers 5

    const v0, 0x7f0c0135

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemSportHealthTwoBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
