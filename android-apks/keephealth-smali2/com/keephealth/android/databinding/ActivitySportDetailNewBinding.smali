.class public final Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;
.super Ljava/lang/Object;
.source "ActivitySportDetailNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barBg:Landroid/widget/RelativeLayout;

.field public final heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

.field public final horizontalbar:Lcom/keephealth/android/views/HorizontalBarView;

.field public final imgHr:Landroid/widget/ImageView;

.field public final imgSpeed:Landroid/widget/ImageView;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivMore:Landroid/widget/ImageView;

.field public final layoutBase:Landroid/widget/RelativeLayout;

.field public final layoutHr:Landroid/widget/RelativeLayout;

.field public final layoutSpeed:Landroid/widget/RelativeLayout;

.field public final mMapView:Lcom/google/android/gms/maps/MapView;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mapviewGroud:Lcom/keephealth/android/views/MapViewGroud;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final scrollView:Landroidx/core/widget/NestedScrollView;

.field public final title:Landroid/widget/TextView;

.field public final tvDate:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/HeartRateChart;Lcom/keephealth/android/views/HorizontalBarView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/google/android/gms/maps/MapView;Landroidx/recyclerview/widget/RecyclerView;Lcom/keephealth/android/views/MapViewGroud;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 20

    move-object v0, p0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->barBg:Landroid/widget/RelativeLayout;

    move-object v1, p3

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->heartRateChart:Lcom/keephealth/android/views/HeartRateChart;

    move-object v1, p4

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->horizontalbar:Lcom/keephealth/android/views/HorizontalBarView;

    move-object v1, p5

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->imgHr:Landroid/widget/ImageView;

    move-object v1, p6

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->imgSpeed:Landroid/widget/ImageView;

    move-object v1, p7

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->ivBack:Landroid/widget/ImageView;

    move-object v1, p8

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->ivMore:Landroid/widget/ImageView;

    move-object v1, p9

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->layoutBase:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->layoutHr:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->layoutSpeed:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->mMapView:Lcom/google/android/gms/maps/MapView;

    move-object v1, p13

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p14

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->mapviewGroud:Lcom/keephealth/android/views/MapViewGroud;

    move-object/from16 v1, p15

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    move-object/from16 v1, p16

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->title:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->tvDate:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;
    .registers 22

    move-object/from16 v0, p0

    const v1, 0x7f090080

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_d1

    const v1, 0x7f0901af

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/HeartRateChart;

    if-eqz v6, :cond_d1

    const v1, 0x7f0901b7

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/keephealth/android/views/HorizontalBarView;

    if-eqz v7, :cond_d1

    const v1, 0x7f090209

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_d1

    const v1, 0x7f090218

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_d1

    const v1, 0x7f09029f

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_d1

    const v1, 0x7f0902b7

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_d1

    const v1, 0x7f0902fd

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_d1

    const v1, 0x7f09030a

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_d1

    const v1, 0x7f09031c

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_d1

    const v1, 0x7f0903d9

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/maps/MapView;

    if-eqz v15, :cond_d1

    const v1, 0x7f0903dc

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v16, :cond_d1

    const v1, 0x7f0903eb

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/keephealth/android/views/MapViewGroud;

    if-eqz v17, :cond_d1

    const v1, 0x7f090546

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/core/widget/NestedScrollView;

    if-eqz v18, :cond_d1

    const v1, 0x7f0905f0

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_d1

    const v1, 0x7f090640

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_d1

    .line 228
    new-instance v1, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/HeartRateChart;Lcom/keephealth/android/views/HorizontalBarView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/google/android/gms/maps/MapView;Landroidx/recyclerview/widget/RecyclerView;Lcom/keephealth/android/views/MapViewGroud;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 232
    :cond_d1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;
    .registers 5

    const v0, 0x7f0c0086

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 121
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivitySportDetailNewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
