.class public final Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;
.super Ljava/lang/Object;
.source "DialogGaodeNaviBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancle:Landroid/widget/TextView;

.field public final dialogWheelTopRl:Landroid/widget/RelativeLayout;

.field public final linTop:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final set:Landroid/widget/TextView;

.field public final tvCalories:Landroid/widget/TextView;

.field public final tvDistance:Landroid/widget/TextView;

.field public final tvStep:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 9

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->cancle:Landroid/widget/TextView;

    .line 49
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->dialogWheelTopRl:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->linTop:Landroid/widget/LinearLayout;

    .line 51
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->set:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->tvCalories:Landroid/widget/TextView;

    .line 53
    iput-object p7, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->tvDistance:Landroid/widget/TextView;

    .line 54
    iput-object p8, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->tvStep:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;
    .registers 12

    const v0, 0x7f0900d4

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5e

    const v0, 0x7f09013e

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_5e

    const v0, 0x7f09033f

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5e

    const v0, 0x7f090561

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5e

    const v0, 0x7f090725

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_5e

    const v0, 0x7f090735

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_5e

    const v0, 0x7f090779

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_5e

    .line 126
    new-instance v0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 129
    :cond_5e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;
    .registers 5

    const v0, 0x7f0c00d4

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogGaodeNaviBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
