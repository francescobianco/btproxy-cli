.class public final Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;
.super Ljava/lang/Object;
.source "ActivityEcgFinishBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ecgMeasureGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

.field public final ecgMeasureHeartView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;

.field public final ivEcgRate:Landroid/widget/ImageView;

.field public final layoutChart:Landroid/widget/RelativeLayout;

.field public final layoutDesc:Landroid/widget/RelativeLayout;

.field public final mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public final mSeekBar:Landroid/widget/SeekBar;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final toWebview:Landroid/widget/ImageView;

.field public final tvAvgHr:Landroid/widget/TextView;

.field public final tvCheckTime:Landroid/widget/TextView;

.field public final tvDesc:Landroid/widget/TextView;

.field public final tvShare:Landroid/widget/TextView;

.field public final tvSpeed:Landroid/widget/TextView;

.field public final tvStateTitle:Landroid/widget/TextView;

.field public final tvZengyi:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/ecg/EcgGrid;Lcom/keephealth/android/views/ecg/MyEcgScrollView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/SeekBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 19

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->ecgMeasureGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->ecgMeasureHeartView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->ivEcgRate:Landroid/widget/ImageView;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->layoutChart:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->layoutDesc:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p8

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->mSeekBar:Landroid/widget/SeekBar;

    move-object v1, p9

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->toWebview:Landroid/widget/ImageView;

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->tvAvgHr:Landroid/widget/TextView;

    move-object v1, p11

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->tvCheckTime:Landroid/widget/TextView;

    move-object v1, p12

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->tvDesc:Landroid/widget/TextView;

    move-object v1, p13

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->tvShare:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->tvSpeed:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->tvStateTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->tvZengyi:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;
    .registers 21

    move-object/from16 v0, p0

    const v1, 0x7f09015b

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/keephealth/android/views/ecg/EcgGrid;

    if-eqz v5, :cond_c4

    const v1, 0x7f09015c

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    if-eqz v6, :cond_c4

    const v1, 0x7f0902ac

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_c4

    const v1, 0x7f0902fe

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_c4

    const v1, 0x7f090302

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_c4

    const v1, 0x7f0903da

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    if-eqz v10, :cond_c4

    const v1, 0x7f0903e3

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/SeekBar;

    if-eqz v11, :cond_c4

    const v1, 0x7f0905f8

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_c4

    const v1, 0x7f09061f

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_c4

    const v1, 0x7f090633

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_c4

    const v1, 0x7f09064f

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_c4

    const v1, 0x7f0906bf

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_c4

    const v1, 0x7f0906d4

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_c4

    const v1, 0x7f0906e1

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_c4

    const v1, 0x7f09071c

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_c4

    .line 214
    new-instance v1, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v19}, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/ecg/EcgGrid;Lcom/keephealth/android/views/ecg/MyEcgScrollView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroidx/core/widget/NestedScrollView;Landroid/widget/SeekBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 218
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;
    .registers 5

    const v0, 0x7f0c004d

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 113
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityEcgFinishBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
