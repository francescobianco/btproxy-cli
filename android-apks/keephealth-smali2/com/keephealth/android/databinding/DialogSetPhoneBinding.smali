.class public final Lcom/keephealth/android/databinding/DialogSetPhoneBinding;
.super Ljava/lang/Object;
.source "DialogSetPhoneBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogTitle:Landroid/widget/TextView;

.field public final line:Landroid/view/View;

.field public final line2:Landroid/view/View;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCanle:Landroid/widget/TextView;

.field public final tvSure:Landroid/widget/TextView;

.field public final tvTips:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->dialogTitle:Landroid/widget/TextView;

    .line 45
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->line:Landroid/view/View;

    .line 46
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->line2:Landroid/view/View;

    .line 47
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->tvCanle:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->tvSure:Landroid/widget/TextView;

    .line 49
    iput-object p7, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->tvTips:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogSetPhoneBinding;
    .registers 11

    const v0, 0x7f090135

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_4c

    const v0, 0x7f090340

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4c

    const v0, 0x7f090342

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4c

    const v0, 0x7f090632

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_4c

    const v0, 0x7f0906e4

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_4c

    const v0, 0x7f0906f6

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_4c

    .line 115
    new-instance v0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 118
    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogSetPhoneBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogSetPhoneBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogSetPhoneBinding;
    .registers 5

    const v0, 0x7f0c00ec

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogSetPhoneBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogSetPhoneBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
