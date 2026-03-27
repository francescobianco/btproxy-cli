.class public final Lcom/keephealth/android/databinding/DialogInputUsernameBinding;
.super Ljava/lang/Object;
.source "DialogInputUsernameBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogTitle:Landroid/widget/TextView;

.field public final etInput:Landroid/widget/EditText;

.field public final line:Landroid/view/View;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCanle:Landroid/widget/TextView;

.field public final tvSure:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->dialogTitle:Landroid/widget/TextView;

    .line 43
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->etInput:Landroid/widget/EditText;

    .line 44
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->line:Landroid/view/View;

    .line 45
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->tvCanle:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->tvSure:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogInputUsernameBinding;
    .registers 10

    const v0, 0x7f090135

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_43

    const v0, 0x7f09016c

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_43

    const v0, 0x7f090340

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_43

    const v0, 0x7f090632

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_43

    const v0, 0x7f0906e4

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_43

    .line 106
    new-instance v0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 109
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogInputUsernameBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogInputUsernameBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogInputUsernameBinding;
    .registers 5

    const v0, 0x7f0c00dc

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogInputUsernameBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogInputUsernameBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
