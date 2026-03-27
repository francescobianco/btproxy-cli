.class public Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WebViewEcgTwoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;

.field private view7f0900c4:Landroid/view/View;

.field private view7f0900c5:Landroid/view/View;

.field private view7f09031a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V
    .registers 3

    .line 30
    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;Landroid/view/View;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;

    .line 38
    const-string v0, "field \'mWebView\'"

    const-class v1, Landroid/webkit/WebView;

    const v2, 0x7f0903e5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mWebView:Landroid/webkit/WebView;

    .line 39
    const-string v0, "field \'layoutPhotoManufacturers\' and method \'showDialog\'"

    const v1, 0x7f09031a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    const-string v2, "field \'layoutPhotoManufacturers\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->layoutPhotoManufacturers:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f09031a:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-string v0, "field \'tvBrandName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09062b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    .line 49
    const-string v0, "field \'lin_botton_set\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09032f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->lin_botton_set:Landroid/widget/LinearLayout;

    .line 50
    const-string v0, "field \'btn_go_set\' and method \'btn_go_set\'"

    const v1, 0x7f0900c4

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    const-string v2, "field \'btn_go_set\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->btn_go_set:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f0900c4:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-string v0, "field \'btn_had_set\' and method \'btn_had_set\'"

    const v1, 0x7f0900c5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 60
    const-string v0, "field \'btn_had_set\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->btn_had_set:Landroid/widget/Button;

    .line 61
    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f0900c5:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;

    .line 77
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->mWebView:Landroid/webkit/WebView;

    .line 78
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->layoutPhotoManufacturers:Landroid/widget/RelativeLayout;

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->tvBrandName:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->lin_botton_set:Landroid/widget/LinearLayout;

    .line 81
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->btn_go_set:Landroid/widget/Button;

    .line 82
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->btn_had_set:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f09031a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f09031a:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f0900c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f0900c4:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f0900c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;->view7f0900c5:Landroid/view/View;

    return-void

    .line 74
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
