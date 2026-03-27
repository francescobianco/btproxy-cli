.class public final Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;
.super Ljava/lang/Object;
.source "ActivityFamilyDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ilBlood:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilHeart:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilOxygen:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilSleep:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilSport:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilStep:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilTemp:Lcom/keephealth/android/views/ItemLableValue;

.field public final ivHeader:Landroid/widget/ImageView;

.field public final ivNextDate:Landroid/widget/ImageView;

.field public final ivPreDate:Landroid/widget/ImageView;

.field public final ivSelectedDate:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->rootView:Landroid/widget/LinearLayout;

    .line 71
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ilBlood:Lcom/keephealth/android/views/ItemLableValue;

    .line 72
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ilHeart:Lcom/keephealth/android/views/ItemLableValue;

    .line 73
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ilOxygen:Lcom/keephealth/android/views/ItemLableValue;

    .line 74
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ilSleep:Lcom/keephealth/android/views/ItemLableValue;

    .line 75
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ilSport:Lcom/keephealth/android/views/ItemLableValue;

    .line 76
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ilStep:Lcom/keephealth/android/views/ItemLableValue;

    .line 77
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ilTemp:Lcom/keephealth/android/views/ItemLableValue;

    .line 78
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ivHeader:Landroid/widget/ImageView;

    .line 79
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ivNextDate:Landroid/widget/ImageView;

    .line 80
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ivPreDate:Landroid/widget/ImageView;

    .line 81
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->ivSelectedDate:Landroid/widget/ImageView;

    .line 82
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->tvDate:Landroid/widget/TextView;

    .line 83
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->tvName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f0901c9

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v5, :cond_aa

    const v1, 0x7f0901dc

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v6, :cond_aa

    const v1, 0x7f0901e5

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v7, :cond_aa

    const v1, 0x7f0901e8

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v8, :cond_aa

    const v1, 0x7f0901e9

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v9, :cond_aa

    const v1, 0x7f0901ec

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v10, :cond_aa

    const v1, 0x7f0901ef

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v11, :cond_aa

    const v1, 0x7f0902b0

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_aa

    const v1, 0x7f0902bd

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_aa

    const v1, 0x7f0902c5

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_aa

    const v1, 0x7f0902cd

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_aa

    const v1, 0x7f090640

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_aa

    const v1, 0x7f09068d

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_aa

    .line 191
    new-instance v1, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;-><init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 195
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;
    .registers 5

    const v0, 0x7f0c0051

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityFamilyDetailBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
