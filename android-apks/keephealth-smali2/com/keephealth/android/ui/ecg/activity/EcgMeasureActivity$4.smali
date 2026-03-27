.class Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$4;
.super Ljava/lang/Object;
.source "EcgMeasureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$4;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$4;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutStart:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$4;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutFaild:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity$4;->this$0:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;->layoutMeasureing:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
