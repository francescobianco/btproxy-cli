.class public Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "UnbindDevicePairActivity.java"


# instance fields
.field tv_know:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09074f
    .end annotation
.end field

.field tv_name_1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090753
    .end annotation
.end field

.field tv_name_2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090754
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c003e

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 31
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_name_1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/keephealth/android/app/AppApplication;->scanDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->tv_name_2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/keephealth/android/app/AppApplication;->scanDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method onKnow()V
    .registers 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09074f
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->finish()V

    return-void
.end method
