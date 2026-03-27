.class public final Lcom/keephealth/android/databinding/ActivityWebViewBinding;
.super Ljava/lang/Object;
.source "ActivityWebViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Landroid/widget/ImageView;

.field public final btnAgree:Landroid/widget/Button;

.field public final btnCancal:Landroid/widget/Button;

.field public final llBottom:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvTips:Landroid/widget/TextView;

.field public final wvPrivacyPolicy:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/webkit/WebView;)V
    .registers 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->back:Landroid/widget/ImageView;

    .line 48
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->btnAgree:Landroid/widget/Button;

    .line 49
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->btnCancal:Landroid/widget/Button;

    .line 50
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->llBottom:Landroid/widget/LinearLayout;

    .line 51
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->tvTips:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->wvPrivacyPolicy:Landroid/webkit/WebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityWebViewBinding;
    .registers 11

    const v0, 0x7f09007d

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_52

    const v0, 0x7f09009a

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_52

    const v0, 0x7f09009e

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_52

    const v0, 0x7f09035e

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_52

    const v0, 0x7f0906f6

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_52

    const v0, 0x7f0907ed

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/webkit/WebView;

    if-eqz v9, :cond_52

    .line 118
    new-instance v0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/databinding/ActivityWebViewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/webkit/WebView;)V

    return-object v0

    .line 121
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityWebViewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityWebViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityWebViewBinding;
    .registers 5

    const v0, 0x7f0c009b

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityWebViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityWebViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
