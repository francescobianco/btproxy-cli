.class public final Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;
.super Ljava/lang/Object;
.source "ActivityDevicePairUnbindBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imgBack:Landroid/widget/ImageView;

.field public final imgBack2:Landroid/widget/ImageView;

.field public final layoutMain:Landroid/widget/ScrollView;

.field public final relaBlueConnectStatus:Landroid/widget/RelativeLayout;

.field public final relaBlueConnectStatus2:Landroid/widget/RelativeLayout;

.field public final relaBlueName:Landroid/widget/RelativeLayout;

.field public final relaBlueName2:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tvKnow:Landroid/widget/TextView;

.field public final tvName1:Landroid/widget/TextView;

.field public final tvName2:Landroid/widget/TextView;

.field public final tvNameBlue:Landroid/widget/TextView;

.field public final tvNameBlue2:Landroid/widget/TextView;

.field public final tvOtherDevice:Landroid/widget/TextView;

.field public final tvOtherDevice2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 16

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->rootView:Landroid/widget/ScrollView;

    .line 74
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->imgBack:Landroid/widget/ImageView;

    .line 75
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->imgBack2:Landroid/widget/ImageView;

    .line 76
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->layoutMain:Landroid/widget/ScrollView;

    .line 77
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->relaBlueConnectStatus:Landroid/widget/RelativeLayout;

    .line 78
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->relaBlueConnectStatus2:Landroid/widget/RelativeLayout;

    .line 79
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->relaBlueName:Landroid/widget/RelativeLayout;

    .line 80
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->relaBlueName2:Landroid/widget/RelativeLayout;

    .line 81
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->tvKnow:Landroid/widget/TextView;

    .line 82
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->tvName1:Landroid/widget/TextView;

    .line 83
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->tvName2:Landroid/widget/TextView;

    .line 84
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->tvNameBlue:Landroid/widget/TextView;

    .line 85
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->tvNameBlue2:Landroid/widget/TextView;

    .line 86
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->tvOtherDevice:Landroid/widget/TextView;

    .line 87
    iput-object p15, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->tvOtherDevice2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;
    .registers 20

    move-object/from16 v0, p0

    const v1, 0x7f090220

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_ac

    const v1, 0x7f090221

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_ac

    .line 129
    move-object v7, v0

    check-cast v7, Landroid/widget/ScrollView;

    const v1, 0x7f0904ac

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_ac

    const v1, 0x7f0904ad

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_ac

    const v1, 0x7f0904ae

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_ac

    const v1, 0x7f0904af

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_ac

    const v1, 0x7f09074f

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_ac

    const v1, 0x7f090753

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_ac

    const v1, 0x7f090754

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_ac

    const v1, 0x7f090755

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_ac

    const v1, 0x7f090756

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_ac

    const v1, 0x7f090763

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_ac

    const v1, 0x7f090764

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_ac

    .line 197
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v3 .. v18}, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 201
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;
    .registers 5

    const v0, 0x7f0c003e

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDevicePairUnbindBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
