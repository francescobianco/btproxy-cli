.class public final Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;
.super Ljava/lang/Object;
.source "RefreshLoadNoDateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llLoadNoDate:Landroid/widget/LinearLayout;

.field public final moduleBaseEmptyText:Landroid/widget/TextView;

.field public final moduleBaseEmptyTextLitter:Landroid/widget/TextView;

.field public final moduleBaseIdEmptyImg:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->llLoadNoDate:Landroid/widget/LinearLayout;

    .line 40
    iput-object p3, p0, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->moduleBaseEmptyText:Landroid/widget/TextView;

    .line 41
    iput-object p4, p0, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->moduleBaseEmptyTextLitter:Landroid/widget/TextView;

    .line 42
    iput-object p5, p0, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->moduleBaseIdEmptyImg:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;
    .registers 7

    .line 72
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    const v0, 0x7f09040d

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2f

    const v0, 0x7f09040e

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2f

    const v0, 0x7f09040f

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_2f

    .line 92
    new-instance p0, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object p0

    .line 95
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;
    .registers 5

    const v0, 0x7f0c0191

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/databinding/RefreshLoadNoDateBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
