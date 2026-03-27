.class public final Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;
.super Ljava/lang/Object;
.source "DialogWheelviewsRadiusBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancle:Landroid/widget/TextView;

.field public final linContentZero:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final set:Landroid/widget/TextView;

.field public final tvTitle1:Landroid/widget/TextView;

.field public final tvTitle2:Landroid/widget/TextView;

.field public final wv1:Lcom/keephealth/android/views/wheel/NewWheelView2;

.field public final wv2:Lcom/keephealth/android/views/wheel/NewWheelView2;

.field public final wv3:Lcom/keephealth/android/views/wheel/NewWheelView2;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 10

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->rootView:Landroid/widget/LinearLayout;

    .line 52
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->cancle:Landroid/widget/TextView;

    .line 53
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->linContentZero:Landroid/widget/LinearLayout;

    .line 54
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->set:Landroid/widget/TextView;

    .line 55
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->tvTitle1:Landroid/widget/TextView;

    .line 56
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->tvTitle2:Landroid/widget/TextView;

    .line 57
    iput-object p7, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->wv1:Lcom/keephealth/android/views/wheel/NewWheelView2;

    .line 58
    iput-object p8, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->wv2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    .line 59
    iput-object p9, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->wv3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;
    .registers 13

    const v0, 0x7f0900d4

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6a

    const v0, 0x7f090334

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6a

    const v0, 0x7f090561

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_6a

    const v0, 0x7f090786

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_6a

    const v0, 0x7f090787

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_6a

    const v0, 0x7f0907ea

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/keephealth/android/views/wheel/NewWheelView2;

    if-eqz v9, :cond_6a

    const v0, 0x7f0907eb

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/keephealth/android/views/wheel/NewWheelView2;

    if-eqz v10, :cond_6a

    const v0, 0x7f0907ec

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/keephealth/android/views/wheel/NewWheelView2;

    if-eqz v11, :cond_6a

    .line 137
    new-instance v0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    return-object v0

    .line 140
    :cond_6a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;
    .registers 5

    const v0, 0x7f0c00f8

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogWheelviewsRadiusBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
