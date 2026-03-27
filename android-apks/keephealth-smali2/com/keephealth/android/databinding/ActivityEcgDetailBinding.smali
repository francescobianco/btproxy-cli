.class public final Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;
.super Ljava/lang/Object;
.source "ActivityEcgDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appName:Landroid/widget/TextView;

.field public final ecgMeasureGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

.field public final layoutContent:Landroid/widget/RelativeLayout;

.field public final layoutUser:Landroid/widget/RelativeLayout;

.field public final mAllViews:Lcom/keephealth/android/views/ecg/MyEcgAllViews;

.field public final mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvAvgHr:Landroid/widget/TextView;

.field public final tvBrithday:Landroid/widget/TextView;

.field public final tvHeight:Landroid/widget/TextView;

.field public final tvInfoEcg:Landroid/widget/TextView;

.field public final tvInfoTitle:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvRecordData:Landroid/widget/TextView;

.field public final tvRecordTime:Landroid/widget/TextView;

.field public final tvSex:Landroid/widget/TextView;

.field public final tvTips:Landroid/widget/TextView;

.field public final tvWeight:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/keephealth/android/views/ecg/EcgGrid;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/ecg/MyEcgAllViews;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 21

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->appName:Landroid/widget/TextView;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->ecgMeasureGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->layoutContent:Landroid/widget/RelativeLayout;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->layoutUser:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->mAllViews:Lcom/keephealth/android/views/ecg/MyEcgAllViews;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvAvgHr:Landroid/widget/TextView;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvBrithday:Landroid/widget/TextView;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvHeight:Landroid/widget/TextView;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvInfoEcg:Landroid/widget/TextView;

    move-object v1, p12

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvInfoTitle:Landroid/widget/TextView;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvName:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvRecordData:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvRecordTime:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvSex:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvTips:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->tvWeight:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;
    .registers 23

    move-object/from16 v0, p0

    const v1, 0x7f090065

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_d3

    const v1, 0x7f09015b

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/ecg/EcgGrid;

    if-eqz v6, :cond_d3

    .line 143
    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const v1, 0x7f090321

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_d3

    const v1, 0x7f0903d7

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/keephealth/android/views/ecg/MyEcgAllViews;

    if-eqz v9, :cond_d3

    const v1, 0x7f0903da

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    if-eqz v10, :cond_d3

    const v1, 0x7f09061f

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_d3

    const v1, 0x7f09062f

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_d3

    const v1, 0x7f09066d

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_d3

    const v1, 0x7f090670

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_d3

    const v1, 0x7f090671

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_d3

    const v1, 0x7f09068d

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_d3

    const v1, 0x7f0906a8

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_d3

    const v1, 0x7f0906aa

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_d3

    const v1, 0x7f0906be

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_d3

    const v1, 0x7f0906f6

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_d3

    const v1, 0x7f090716

    .line 224
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_d3

    .line 229
    new-instance v0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v3 .. v21}, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/keephealth/android/views/ecg/EcgGrid;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/ecg/MyEcgAllViews;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 233
    :cond_d3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;
    .registers 5

    const v0, 0x7f0c004c

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityEcgDetailBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
