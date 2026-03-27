.class public final Lcom/keephealth/android/databinding/DialogScanFailedBinding;
.super Ljava/lang/Object;
.source "DialogScanFailedBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvSure:Landroid/widget/TextView;

.field public final tvTips1:Landroid/widget/TextView;

.field public final tvTips2:Landroid/widget/TextView;

.field public final tvTips3:Landroid/widget/TextView;

.field public final tvTips4:Landroid/widget/TextView;

.field public final tvTips5:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewLine:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 10

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 51
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->tvSure:Landroid/widget/TextView;

    .line 52
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->tvTips1:Landroid/widget/TextView;

    .line 53
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->tvTips2:Landroid/widget/TextView;

    .line 54
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->tvTips3:Landroid/widget/TextView;

    .line 55
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->tvTips4:Landroid/widget/TextView;

    .line 56
    iput-object p7, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->tvTips5:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->tvTitle:Landroid/widget/TextView;

    .line 58
    iput-object p9, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->viewLine:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogScanFailedBinding;
    .registers 13

    const v0, 0x7f0906e4

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_67

    const v0, 0x7f0906f7

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_67

    const v0, 0x7f0906f8

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_67

    const v0, 0x7f0906f9

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_67

    const v0, 0x7f0906fa

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_67

    const v0, 0x7f0906fb

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_67

    const v0, 0x7f0906fc

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_67

    const v0, 0x7f0907ba

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_67

    .line 136
    new-instance v0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/keephealth/android/databinding/DialogScanFailedBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0

    .line 139
    :cond_67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogScanFailedBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogScanFailedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogScanFailedBinding;
    .registers 5

    const v0, 0x7f0c00e9

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogScanFailedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogScanFailedBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
