.class public final Lcom/keephealth/android/databinding/ItemInviterBinding;
.super Ljava/lang/Object;
.source "ItemInviterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final inviterAvatar:Landroid/widget/ImageView;

.field public final inviterName:Landroid/widget/TextView;

.field public final inviterNo:Landroid/widget/ImageView;

.field public final inviterTip:Landroid/widget/TextView;

.field public final inviterYes:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final viewLine:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->inviterAvatar:Landroid/widget/ImageView;

    .line 46
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->inviterName:Landroid/widget/TextView;

    .line 47
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->inviterNo:Landroid/widget/ImageView;

    .line 48
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->inviterTip:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->inviterYes:Landroid/widget/ImageView;

    .line 50
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->viewLine:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemInviterBinding;
    .registers 11

    const v0, 0x7f090245

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_4f

    const v0, 0x7f090246

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4f

    const v0, 0x7f090247

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_4f

    const v0, 0x7f090248

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_4f

    const v0, 0x7f090249

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_4f

    const v0, 0x7f0907ba

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4f

    .line 116
    new-instance v0, Lcom/keephealth/android/databinding/ItemInviterBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/databinding/ItemInviterBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-object v0

    .line 119
    :cond_4f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemInviterBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemInviterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemInviterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemInviterBinding;
    .registers 5

    const v0, 0x7f0c0121

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemInviterBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemInviterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemInviterBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemInviterBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
