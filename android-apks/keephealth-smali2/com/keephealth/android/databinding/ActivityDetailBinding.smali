.class public final Lcom/keephealth/android/databinding/ActivityDetailBinding;
.super Ljava/lang/Object;
.source "ActivityDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barBg:Landroid/widget/RelativeLayout;

.field public final detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvData1:Landroid/widget/TextView;

.field public final tvData2:Landroid/widget/TextView;

.field public final tvData2Title:Landroid/widget/TextView;

.field public final tvTotalData:Landroid/widget/TextView;

.field public final tvTotalTitle:Landroid/widget/TextView;

.field public final tvUnit1:Landroid/widget/TextView;

.field public final tvUnit2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/DetailSportChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->rootView:Landroid/widget/LinearLayout;

    .line 56
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->barBg:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->detailSportChart:Lcom/keephealth/android/views/DetailSportChart;

    .line 58
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->tvData1:Landroid/widget/TextView;

    .line 59
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->tvData2:Landroid/widget/TextView;

    .line 60
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->tvData2Title:Landroid/widget/TextView;

    .line 61
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->tvTotalData:Landroid/widget/TextView;

    .line 62
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->tvTotalTitle:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->tvUnit1:Landroid/widget/TextView;

    .line 64
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->tvUnit2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBinding;
    .registers 14

    const v0, 0x7f09007e

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_76

    const v0, 0x7f09012f

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/DetailSportChart;

    if-eqz v5, :cond_76

    const v0, 0x7f09063d

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_76

    const v0, 0x7f09063e

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_76

    const v0, 0x7f09063f

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_76

    const v0, 0x7f090700

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_76

    const v0, 0x7f090702

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_76

    const v0, 0x7f090705

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_76

    const v0, 0x7f090706

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_76

    .line 148
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDetailBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/ActivityDetailBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/DetailSportChart;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 151
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDetailBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDetailBinding;
    .registers 5

    const v0, 0x7f0c0031

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDetailBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDetailBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDetailBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
