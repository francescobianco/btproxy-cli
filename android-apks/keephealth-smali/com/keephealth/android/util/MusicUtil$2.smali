.class Lcom/keephealth/android/util/MusicUtil$2;
.super Ljava/lang/Object;
.source "MusicUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/MusicUtil;->setNotConnectedNoticeSwitchState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/MusicUtil;

.field final synthetic val$isSwitchOn:Z


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/MusicUtil;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/keephealth/android/util/MusicUtil$2;->this$0:Lcom/keephealth/android/util/MusicUtil;

    iput-boolean p2, p0, Lcom/keephealth/android/util/MusicUtil$2;->val$isSwitchOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/util/MusicUtil$2;->this$0:Lcom/keephealth/android/util/MusicUtil;

    # getter for: Lcom/keephealth/android/util/MusicUtil;->customToggleButton:Lcom/keephealth/android/views/CustomToggleButton;
    invoke-static {v0}, Lcom/keephealth/android/util/MusicUtil;->access$600(Lcom/keephealth/android/util/MusicUtil;)Lcom/keephealth/android/views/CustomToggleButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/util/MusicUtil$2;->val$isSwitchOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    return-void
.end method
