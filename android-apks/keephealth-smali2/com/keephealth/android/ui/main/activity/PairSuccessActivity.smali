.class public Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "PairSuccessActivity.java"


# instance fields
.field btnNext:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a9
    .end annotation
.end field

.field tv_content_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09072d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c006e

    return v0
.end method

.method protected initView()V
    .registers 3

    .line 42
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;->titleBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;->tv_content_1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a9
        }
    .end annotation

    const p1, 0x7f0900a9

    .line 50
    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_36

    .line 52
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    const-class p1, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    const-string p1, "LookWeatherInfoActivity"

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 55
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v0, "class"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "classStr"

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;->finish()V

    :cond_36
    return-void
.end method
