.class public Lcom/keephealth/android/util/image/BitmapEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BitmapEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/util/image/BitmapEditActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/image/BitmapEditActivity;)V
    .registers 3

    .line 18
    invoke-virtual {p1}, Lcom/keephealth/android/util/image/BitmapEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/util/image/BitmapEditActivity_ViewBinding;-><init>(Lcom/keephealth/android/util/image/BitmapEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/util/image/BitmapEditActivity;Landroid/view/View;)V
    .registers 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/keephealth/android/util/image/BitmapEditActivity_ViewBinding;->target:Lcom/keephealth/android/util/image/BitmapEditActivity;

    .line 25
    const-string v0, "field \'scalableImageView\'"

    const-class v1, Lcom/keephealth/android/util/image/CorpToView;

    const v2, 0x7f090541

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/image/CorpToView;

    iput-object p2, p1, Lcom/keephealth/android/util/image/BitmapEditActivity;->scalableImageView:Lcom/keephealth/android/util/image/CorpToView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/util/image/BitmapEditActivity_ViewBinding;->target:Lcom/keephealth/android/util/image/BitmapEditActivity;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/keephealth/android/util/image/BitmapEditActivity_ViewBinding;->target:Lcom/keephealth/android/util/image/BitmapEditActivity;

    .line 35
    iput-object v1, v0, Lcom/keephealth/android/util/image/BitmapEditActivity;->scalableImageView:Lcom/keephealth/android/util/image/CorpToView;

    return-void

    .line 32
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
