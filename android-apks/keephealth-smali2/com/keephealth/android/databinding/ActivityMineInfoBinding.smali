.class public final Lcom/keephealth/android/databinding/ActivityMineInfoBinding;
.super Ljava/lang/Object;
.source "ActivityMineInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAddMember:Landroid/widget/Button;

.field public final imgRightCountry:Landroid/widget/ImageView;

.field public final ivArrow:Landroid/widget/ImageView;

.field public final ivHeader:Landroid/widget/ImageView;

.field public final layoutHeard:Landroid/widget/RelativeLayout;

.field public final rlBirthDay:Landroid/widget/RelativeLayout;

.field public final rlCountry:Landroid/widget/RelativeLayout;

.field public final rlHeight:Landroid/widget/RelativeLayout;

.field public final rlSex:Landroid/widget/RelativeLayout;

.field public final rlUserName:Landroid/widget/RelativeLayout;

.field public final rlWeight:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvBirthday:Landroid/widget/TextView;

.field public final tvCountry:Landroid/widget/TextView;

.field public final tvHeight:Landroid/widget/TextView;

.field public final tvSex:Landroid/widget/TextView;

.field public final tvUserName2:Landroid/widget/TextView;

.field public final tvWeight:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 21

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->btnAddMember:Landroid/widget/Button;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->imgRightCountry:Landroid/widget/ImageView;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->ivArrow:Landroid/widget/ImageView;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->ivHeader:Landroid/widget/ImageView;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->layoutHeard:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rlBirthDay:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rlCountry:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rlHeight:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rlSex:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rlUserName:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rlWeight:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->tvBirthday:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->tvCountry:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->tvHeight:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->tvSex:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->tvUserName2:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->tvWeight:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityMineInfoBinding;
    .registers 23

    move-object/from16 v0, p0

    const v1, 0x7f090098

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_de

    const v1, 0x7f090237

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_de

    const v1, 0x7f0902d7

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_de

    const v1, 0x7f0902b0

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_de

    const v1, 0x7f090308

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_de

    const v1, 0x7f0904dd

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_de

    const v1, 0x7f0904e3

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_de

    const v1, 0x7f0904f0

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_de

    const v1, 0x7f090514

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_de

    const v1, 0x7f09051f

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_de

    const v1, 0x7f090524

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_de

    const v1, 0x7f090622

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_de

    const v1, 0x7f090639

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_de

    const v1, 0x7f09066d

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_de

    const v1, 0x7f0906be

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_de

    const v1, 0x7f09070b

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_de

    const v1, 0x7f090716

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_de

    .line 233
    new-instance v1, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v21}, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 237
    :cond_de
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityMineInfoBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityMineInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityMineInfoBinding;
    .registers 5

    const v0, 0x7f0c0069

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityMineInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityMineInfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
