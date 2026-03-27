.class public Lcom/keephealth/android/ui/device/activity/MusicControlActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MusicControlActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;)V
    .registers 3

    .line 21
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/MusicControlActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/MusicControlActivity;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;

    .line 28
    const-string v0, "field \'mMusicControl\'"

    const-class v1, Lcom/keephealth/android/views/CustomToggleButton;

    const v2, 0x7f090436

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/CustomToggleButton;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    .line 29
    const-string v0, "field \'mSelectPlayTv\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09055d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mSelectPlayTv:Landroid/widget/TextView;

    .line 30
    const-string v0, "field \'mMusicPlayLv\'"

    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f090435

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/MusicControlActivity;

    .line 40
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicControl:Lcom/keephealth/android/views/CustomToggleButton;

    .line 41
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mSelectPlayTv:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;->mMusicPlayLv:Landroid/widget/ListView;

    return-void

    .line 37
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
