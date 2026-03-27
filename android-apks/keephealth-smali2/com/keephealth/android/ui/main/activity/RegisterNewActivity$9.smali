.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;
.super Landroid/webkit/WebViewClient;
.source "RegisterNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showWebViewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

.field final synthetic val$mDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Landroid/app/Dialog;)V
    .registers 3

    .line 286
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;->val$mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceivedSslError$0(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 297
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method static synthetic lambda$onReceivedSslError$1(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 298
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 312
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;->val$mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 295
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    const-string p1, "SSL\u8ba4\u8bc1\u5931\u8d25\uff0c\u662f\u5426\u7ee7\u7eed\u8bbf\u95ee\uff1f"

    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$9$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 289
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
