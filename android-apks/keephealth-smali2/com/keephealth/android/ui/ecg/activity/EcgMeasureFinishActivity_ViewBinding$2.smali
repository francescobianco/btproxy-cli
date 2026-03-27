.class Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EcgMeasureFinishActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$2;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->toShare()V

    return-void
.end method
