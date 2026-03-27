.class public Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LookWeatherInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

.field private view7f0900a8:Landroid/view/View;

.field private view7f0900b4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;Landroid/view/View;)V
    .registers 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    .line 33
    const-string v0, "field \'tv_content_1\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09072d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->tv_content_1:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'btnNext\' and method \'onOneClick\'"

    const v1, 0x7f0900a8

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    const-string v2, "field \'btnNext\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->btnNext:Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->view7f0900a8:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b4

    .line 43
    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->view7f0900b4:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    .line 60
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->tv_content_1:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;->btnNext:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->view7f0900a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->view7f0900a8:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->view7f0900b4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity_ViewBinding;->view7f0900b4:Landroid/view/View;

    return-void

    .line 57
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
