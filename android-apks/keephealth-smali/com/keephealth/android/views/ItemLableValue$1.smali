.class Lcom/keephealth/android/views/ItemLableValue$1;
.super Ljava/lang/Object;
.source "ItemLableValue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/ItemLableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/ItemLableValue;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/ItemLableValue;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/keephealth/android/views/ItemLableValue$1;->this$0:Lcom/keephealth/android/views/ItemLableValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onClick : targetActivty = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue$1;->this$0:Lcom/keephealth/android/views/ItemLableValue;

    # getter for: Lcom/keephealth/android/views/ItemLableValue;->targetActivty:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/views/ItemLableValue;->access$000(Lcom/keephealth/android/views/ItemLableValue;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue$1;->this$0:Lcom/keephealth/android/views/ItemLableValue;

    # getter for: Lcom/keephealth/android/views/ItemLableValue;->targetActivty:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/views/ItemLableValue;->access$000(Lcom/keephealth/android/views/ItemLableValue;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/keephealth/android/views/ItemLableValue$1;->this$0:Lcom/keephealth/android/views/ItemLableValue;

    iget-object p1, p1, Lcom/keephealth/android/views/ItemLableValue;->valueView:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/ValueStateTextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 174
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue$1;->this$0:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ItemLableValue;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/ItemLableValue$1;->this$0:Lcom/keephealth/android/views/ItemLableValue;

    # getter for: Lcom/keephealth/android/views/ItemLableValue;->targetActivty:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/views/ItemLableValue;->access$000(Lcom/keephealth/android/views/ItemLableValue;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/views/ItemLableValue$1;->this$0:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0}, Lcom/keephealth/android/views/ItemLableValue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_47
    return-void
.end method
