.class public final Lcom/keephealth/android/databinding/ItemSportHealthBinding;
.super Ljava/lang/Object;
.source "ItemSportHealthBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final arrow:Landroid/widget/ImageView;

.field public final imBluthTag:Landroid/widget/ImageView;

.field public final imgDistanceLayout:Landroid/widget/RelativeLayout;

.field public final ivHeart:Landroid/widget/ImageView;

.field public final ivSportType:Landroid/widget/ImageView;

.field public final layoutDis:Landroid/widget/LinearLayout;

.field public final layoutHeart:Landroid/widget/LinearLayout;

.field public final layoutLeft:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvAvHeartRate:Landroid/widget/TextView;

.field public final tvCal:Landroid/widget/TextView;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvDistance:Landroid/widget/TextView;

.field public final tvDistanceUnit:Landroid/widget/TextView;

.field public final tvDuration:Landroid/widget/TextView;

.field public final tvSportType:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 19

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 76
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 77
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->arrow:Landroid/widget/ImageView;

    move-object v1, p3

    .line 78
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->imBluthTag:Landroid/widget/ImageView;

    move-object v1, p4

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->imgDistanceLayout:Landroid/widget/RelativeLayout;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->ivHeart:Landroid/widget/ImageView;

    move-object v1, p6

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->ivSportType:Landroid/widget/ImageView;

    move-object v1, p7

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->layoutDis:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->layoutHeart:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->layoutLeft:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->tvAvHeartRate:Landroid/widget/TextView;

    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->tvCal:Landroid/widget/TextView;

    move-object v1, p12

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->tvDate:Landroid/widget/TextView;

    move-object v1, p13

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->tvDistance:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->tvDistanceUnit:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->tvDuration:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->tvSportType:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemSportHealthBinding;
    .registers 21

    move-object/from16 v0, p0

    const v1, 0x7f090069

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_c4

    const v1, 0x7f0901f8

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_c4

    const v1, 0x7f09022e

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_c4

    const v1, 0x7f0902b3

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_c4

    const v1, 0x7f0902d0

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_c4

    const v1, 0x7f090303

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_c4

    const v1, 0x7f090309

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_c4

    const v1, 0x7f090324

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_c4

    const v1, 0x7f09061b

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_c4

    const v1, 0x7f090630

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_c4

    const v1, 0x7f090640

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_c4

    const v1, 0x7f090653

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_c4

    const v1, 0x7f090654

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_c4

    const v1, 0x7f090658

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_c4

    const v1, 0x7f0906d8

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_c4

    .line 211
    new-instance v1, Lcom/keephealth/android/databinding/ItemSportHealthBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v19}, Lcom/keephealth/android/databinding/ItemSportHealthBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 215
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemSportHealthBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemSportHealthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemSportHealthBinding;
    .registers 5

    const v0, 0x7f0c0134

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemSportHealthBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemSportHealthBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
