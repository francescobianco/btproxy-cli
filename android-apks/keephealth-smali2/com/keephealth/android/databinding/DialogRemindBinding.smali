.class public final Lcom/keephealth/android/databinding/DialogRemindBinding;
.super Ljava/lang/Object;
.source "DialogRemindBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogTitle:Landroid/widget/TextView;

.field public final line:Landroid/view/View;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCanle:Landroid/widget/TextView;

.field public final tvSure:Landroid/widget/TextView;

.field public final tvTips:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogRemindBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 41
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogRemindBinding;->dialogTitle:Landroid/widget/TextView;

    .line 42
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogRemindBinding;->line:Landroid/view/View;

    .line 43
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogRemindBinding;->tvCanle:Landroid/widget/TextView;

    .line 44
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogRemindBinding;->tvSure:Landroid/widget/TextView;

    .line 45
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogRemindBinding;->tvTips:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogRemindBinding;
    .registers 10

    const v0, 0x7f090135

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_43

    const v0, 0x7f090340

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_43

    const v0, 0x7f090632

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_43

    const v0, 0x7f0906e4

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_43

    const v0, 0x7f0906f6

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_43

    .line 105
    new-instance v0, Lcom/keephealth/android/databinding/DialogRemindBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/DialogRemindBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 108
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogRemindBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogRemindBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogRemindBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogRemindBinding;
    .registers 5

    const v0, 0x7f0c00e5

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogRemindBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogRemindBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogRemindBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogRemindBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
