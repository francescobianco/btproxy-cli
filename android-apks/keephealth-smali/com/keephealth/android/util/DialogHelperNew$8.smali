.class Lcom/keephealth/android/util/DialogHelperNew$8;
.super Landroid/webkit/WebViewClient;
.source "DialogHelperNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/DialogHelperNew;->showWebViewDialog(ILandroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .line 2242
    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$8;->val$mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceivedSslError$0(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2253
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method static synthetic lambda$onReceivedSslError$1(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2254
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 2268
    iget-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$8;->val$mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 2251
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2252
    const-string p1, "SSL\u8ba4\u8bc1\u5931\u8d25\uff0c\u662f\u5426\u7ee7\u7eed\u8bbf\u95ee\uff1f"

    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2253
    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$8$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/keephealth/android/util/DialogHelperNew$8$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/SslErrorHandler;)V

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p3, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2254
    new-instance p1, Lcom/keephealth/android/util/DialogHelperNew$8$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/keephealth/android/util/DialogHelperNew$8$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/SslErrorHandler;)V

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2255
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2256
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 2245
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
