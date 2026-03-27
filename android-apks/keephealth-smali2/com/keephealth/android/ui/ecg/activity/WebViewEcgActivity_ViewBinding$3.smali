.class Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WebViewEcgActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding$3;->this$0:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding$3;->val$target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 65
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity_ViewBinding$3;->val$target:Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;->btn_had_set()V

    return-void
.end method
