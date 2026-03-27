.class Lcom/keephealth/android/util/image/ClipImageView$2;
.super Ljava/lang/Object;
.source "ClipImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/ClipImageView;->postResetImageMatrix()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/image/ClipImageView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/ClipImageView;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageView$2;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageView$2;->this$0:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageView;->resetImageMatrix()V

    return-void
.end method
