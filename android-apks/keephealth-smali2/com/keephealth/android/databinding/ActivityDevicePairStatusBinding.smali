.class public final Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;
.super Ljava/lang/Object;
.source "ActivityDevicePairStatusBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imgBack:Landroid/widget/ImageView;

.field public final imgBack2:Landroid/widget/ImageView;

.field public final imgConnectStatus:Landroid/widget/ImageView;

.field public final layoutMain:Landroid/widget/ScrollView;

.field public final relaBlueConnectStatus:Landroid/widget/RelativeLayout;

.field public final relaBlueConnectStatus2:Landroid/widget/RelativeLayout;

.field public final relaBlueName:Landroid/widget/RelativeLayout;

.field public final relaBlueName2:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tvConnect:Landroid/widget/TextView;

.field public final tvKnow:Landroid/widget/TextView;

.field public final tvName1:Landroid/widget/TextView;

.field public final tvName2:Landroid/widget/TextView;

.field public final tvNameBlue:Landroid/widget/TextView;

.field public final tvNameBlue2:Landroid/widget/TextView;

.field public final tvOtherDevice:Landroid/widget/TextView;

.field public final tvOtherDevice2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 20

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->rootView:Landroid/widget/ScrollView;

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->imgBack:Landroid/widget/ImageView;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->imgBack2:Landroid/widget/ImageView;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->imgConnectStatus:Landroid/widget/ImageView;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->layoutMain:Landroid/widget/ScrollView;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->relaBlueConnectStatus:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->relaBlueConnectStatus2:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->relaBlueName:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->relaBlueName2:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvConnect:Landroid/widget/TextView;

    move-object v1, p11

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvKnow:Landroid/widget/TextView;

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvName1:Landroid/widget/TextView;

    move-object v1, p13

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvName2:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvNameBlue:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvNameBlue2:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvOtherDevice:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->tvOtherDevice2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;
    .registers 22

    move-object/from16 v0, p0

    const v1, 0x7f090220

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_c6

    const v1, 0x7f090221

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_c6

    const v1, 0x7f090228

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_c6

    .line 144
    move-object v8, v0

    check-cast v8, Landroid/widget/ScrollView;

    const v1, 0x7f0904ac

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_c6

    const v1, 0x7f0904ad

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_c6

    const v1, 0x7f0904ae

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_c6

    const v1, 0x7f0904af

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_c6

    const v1, 0x7f090634

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_c6

    const v1, 0x7f09074f

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_c6

    const v1, 0x7f090753

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_c6

    const v1, 0x7f090754

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_c6

    const v1, 0x7f090755

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_c6

    const v1, 0x7f090756

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_c6

    const v1, 0x7f090763

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_c6

    const v1, 0x7f090764

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_c6

    .line 218
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;

    move-object v3, v0

    move-object v4, v8

    invoke-direct/range {v3 .. v20}, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 223
    :cond_c6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;
    .registers 5

    const v0, 0x7f0c003d

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDevicePairStatusBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
