.class final Lcom/keephealth/android/util/ota/Peripheral$CommandContext;
.super Ljava/lang/Object;
.source "Peripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommandContext"
.end annotation


# instance fields
.field public callback:Lcom/keephealth/android/util/ota/Command$Callback;

.field public command:Lcom/keephealth/android/util/ota/Command;

.field final synthetic this$0:Lcom/keephealth/android/util/ota/Peripheral;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)V
    .registers 4

    .line 945
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p2, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/ota/Command$Callback;

    .line 947
    iput-object p3, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 951
    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    .line 952
    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/ota/Command$Callback;

    return-void
.end method
