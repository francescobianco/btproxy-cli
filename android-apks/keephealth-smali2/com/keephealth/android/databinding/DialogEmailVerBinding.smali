.class public final Lcom/keephealth/android/databinding/DialogEmailVerBinding;
.super Ljava/lang/Object;
.source "DialogEmailVerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogTitle:Landroid/widget/TextView;

.field public final linTips:Landroid/widget/LinearLayout;

.field public final line:Landroid/view/View;

.field public final llPhone4:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCanle:Landroid/widget/TextView;

.field public final tvSure:Landroid/widget/TextView;

.field public final tvTips:Landroid/widget/TextView;

.field public final tvTips2:Landroid/widget/TextView;

.field public final tvTips3:Landroid/widget/TextView;

.field public final tvTips4:Landroid/widget/TextView;

.field public final tvTips5:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->dialogTitle:Landroid/widget/TextView;

    .line 63
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->linTips:Landroid/widget/LinearLayout;

    .line 64
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->line:Landroid/view/View;

    .line 65
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->llPhone4:Landroid/widget/LinearLayout;

    .line 66
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->tvCanle:Landroid/widget/TextView;

    .line 67
    iput-object p7, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->tvSure:Landroid/widget/TextView;

    .line 68
    iput-object p8, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->tvTips:Landroid/widget/TextView;

    .line 69
    iput-object p9, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->tvTips2:Landroid/widget/TextView;

    .line 70
    iput-object p10, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->tvTips3:Landroid/widget/TextView;

    .line 71
    iput-object p11, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->tvTips4:Landroid/widget/TextView;

    .line 72
    iput-object p12, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->tvTips5:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogEmailVerBinding;
    .registers 16

    const v0, 0x7f090135

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_8b

    const v0, 0x7f09033e

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8b

    const v0, 0x7f090340

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8b

    const v0, 0x7f090395

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_8b

    const v0, 0x7f090632

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_8b

    const v0, 0x7f0906e4

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_8b

    const v0, 0x7f0906f6

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_8b

    const v0, 0x7f0906f8

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_8b

    const v0, 0x7f0906f9

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8b

    const v0, 0x7f0906fa

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8b

    const v0, 0x7f0906fb

    .line 163
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_8b

    .line 168
    new-instance v0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/DialogEmailVerBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 171
    :cond_8b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogEmailVerBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogEmailVerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogEmailVerBinding;
    .registers 5

    const v0, 0x7f0c00cf

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogEmailVerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogEmailVerBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
