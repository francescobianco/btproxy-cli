.class public Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NoticeOldActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

.field private view7f09079c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;Landroid/view/View;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    .line 32
    const-string v0, "field \'itNoNotice\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090274

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 33
    const-string v0, "field \'itMessage\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090270

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 34
    const-string v0, "field \'itCall\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090252

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 35
    const-string v0, "field \'itQQ\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090277

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 36
    const-string v0, "field \'itFacebook\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09025f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 37
    const-string v0, "field \'itWeChat\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09028c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 38
    const-string v0, "field \'itLinked\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09026b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 39
    const-string v0, "field \'itSkype\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09027d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 40
    const-string v0, "field \'itInstagram\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090263

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 41
    const-string v0, "field \'itTwitter\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090287

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 42
    const-string v0, "field \'itLine\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09026a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 43
    const-string v0, "field \'itWhatsApp\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09028e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 44
    const-string v0, "field \'itVK\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090288

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 45
    const-string v0, "field \'itMessenger\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090271

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 46
    const-string v0, "field \'itEmial\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f09025e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 47
    const-string v0, "field \'llMessage\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09038b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessage:Landroid/widget/LinearLayout;

    .line 48
    const-string v0, "field \'llCall\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090360

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llCall:Landroid/widget/LinearLayout;

    .line 49
    const-string v0, "field \'llEmail\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090370

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llEmail:Landroid/widget/LinearLayout;

    .line 50
    const-string v0, "field \'llQQ\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090397

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llQQ:Landroid/widget/LinearLayout;

    .line 51
    const-string v0, "field \'llFacebook\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090371

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llFacebook:Landroid/widget/LinearLayout;

    .line 52
    const-string v0, "field \'llWeChat\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWeChat:Landroid/widget/LinearLayout;

    .line 53
    const-string v0, "field \'llTwitter\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTwitter:Landroid/widget/LinearLayout;

    .line 54
    const-string v0, "field \'llWhatsApp\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903b8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWhatsApp:Landroid/widget/LinearLayout;

    .line 55
    const-string v0, "field \'llInstagram\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09037a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llInstagram:Landroid/widget/LinearLayout;

    .line 56
    const-string v0, "field \'llLinked\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090384

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLinked:Landroid/widget/LinearLayout;

    .line 57
    const-string v0, "field \'llMessenger\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09038c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessenger:Landroid/widget/LinearLayout;

    .line 58
    const-string v0, "field \'llSkype\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09039e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llSkype:Landroid/widget/LinearLayout;

    .line 59
    const-string v0, "field \'llLine\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090383

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLine:Landroid/widget/LinearLayout;

    .line 60
    const-string v0, "field \'llVK\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llVK:Landroid/widget/LinearLayout;

    .line 61
    const-string v0, "field \'itOther\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090275

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 62
    const-string v0, "field \'llOther\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090394

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llOther:Landroid/widget/LinearLayout;

    .line 63
    const-string v0, "field \'llKakao\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09037d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llKakao:Landroid/widget/LinearLayout;

    .line 64
    const-string v0, "field \'itKakao\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090266

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 65
    const-string v0, "field \'llViber\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llViber:Landroid/widget/LinearLayout;

    .line 66
    const-string v0, "field \'itViber\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090289

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 67
    const-string v0, "field \'llTelegram\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903a8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTelegram:Landroid/widget/LinearLayout;

    .line 68
    const-string v0, "field \'itTelegram\'"

    const-class v1, Lcom/keephealth/android/views/ItemToggleLayout;

    const v2, 0x7f090282

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemToggleLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 69
    const-string v0, "field \'btnNext\'"

    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0900a8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->btnNext:Landroid/widget/Button;

    const v0, 0x7f09079c

    .line 70
    const-string v1, "method \'toSetNoti\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;->view7f09079c:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    if-eqz v0, :cond_5b

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    .line 87
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itNoNotice:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 88
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessage:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 89
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itCall:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 90
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itQQ:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 91
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itFacebook:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 92
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWeChat:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 93
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLinked:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 94
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itSkype:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 95
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itInstagram:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 96
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTwitter:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 97
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itLine:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 98
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itWhatsApp:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 99
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itVK:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 100
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itMessenger:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 101
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itEmial:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 102
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessage:Landroid/widget/LinearLayout;

    .line 103
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llCall:Landroid/widget/LinearLayout;

    .line 104
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llEmail:Landroid/widget/LinearLayout;

    .line 105
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llQQ:Landroid/widget/LinearLayout;

    .line 106
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llFacebook:Landroid/widget/LinearLayout;

    .line 107
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWeChat:Landroid/widget/LinearLayout;

    .line 108
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTwitter:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llWhatsApp:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llInstagram:Landroid/widget/LinearLayout;

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLinked:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llMessenger:Landroid/widget/LinearLayout;

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llSkype:Landroid/widget/LinearLayout;

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llLine:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llVK:Landroid/widget/LinearLayout;

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itOther:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llOther:Landroid/widget/LinearLayout;

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llKakao:Landroid/widget/LinearLayout;

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itKakao:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llViber:Landroid/widget/LinearLayout;

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itViber:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->llTelegram:Landroid/widget/LinearLayout;

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->itTelegram:Lcom/keephealth/android/views/ItemToggleLayout;

    .line 124
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->btnNext:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;->view7f09079c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity_ViewBinding;->view7f09079c:Landroid/view/View;

    return-void

    .line 84
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
