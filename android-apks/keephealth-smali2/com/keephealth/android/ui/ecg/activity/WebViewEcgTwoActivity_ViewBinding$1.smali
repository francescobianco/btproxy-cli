.class Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WebViewEcgTwoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 45
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgTwoActivity;->showDialog()V

    return-void
.end method
