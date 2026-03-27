.class public final Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;
.super Ljava/lang/Object;
.source "ActivityDetailBloodPress2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barLine:Landroid/widget/ImageView;

.field public final imgIndexDian:Landroid/widget/ImageView;

.field public final imgIndexDian1:Landroid/widget/ImageView;

.field public final imgIndexDian2:Landroid/widget/ImageView;

.field public final llInput:Landroid/widget/LinearLayout;

.field public final llLenger:Landroid/widget/LinearLayout;

.field public final mBarChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final rlAvg:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final showData:Landroid/widget/LinearLayout;

.field public final tvAllData:Landroid/widget/TextView;

.field public final tvAvg:Landroid/widget/TextView;

.field public final tvInput:Landroid/widget/TextView;

.field public final tvNewValue:Landroid/widget/TextView;

.field public final tvTagAvg:Landroid/widget/TextView;

.field public final tvTagNew:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 21

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->barLine:Landroid/widget/ImageView;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->imgIndexDian:Landroid/widget/ImageView;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->imgIndexDian1:Landroid/widget/ImageView;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->imgIndexDian2:Landroid/widget/ImageView;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->llInput:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->llLenger:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->mBarChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->rlAvg:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->showData:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvAllData:Landroid/widget/TextView;

    move-object v1, p12

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvAvg:Landroid/widget/TextView;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvInput:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvNewValue:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvTagAvg:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvTagNew:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvTime:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->tvValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;
    .registers 23

    move-object/from16 v0, p0

    const v1, 0x7f09007f

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_de

    const v1, 0x7f090231

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_de

    const v1, 0x7f090232

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_de

    const v1, 0x7f090233

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_de

    const v1, 0x7f090379

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_de

    const v1, 0x7f090382

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_de

    const v1, 0x7f0903d8

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v11, :cond_de

    const v1, 0x7f0904db

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_de

    const v1, 0x7f09056a

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_de

    const v1, 0x7f090619

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_de

    const v1, 0x7f09061d

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_de

    const v1, 0x7f090672

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_de

    const v1, 0x7f09068f

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_de

    const v1, 0x7f0906e7

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_de

    const v1, 0x7f0906e8

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_de

    const v1, 0x7f0906f2

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_de

    const v1, 0x7f09070c

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_de

    .line 233
    new-instance v1, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v21}, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;
    .registers 5

    const v0, 0x7f0c0036

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailBloodPress2Binding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
