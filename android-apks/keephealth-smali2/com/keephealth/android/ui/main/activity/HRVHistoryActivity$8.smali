.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$8;
.super Landroid/text/style/ClickableSpan;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V
    .registers 2

    .line 484
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    .line 492
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 493
    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 494
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
