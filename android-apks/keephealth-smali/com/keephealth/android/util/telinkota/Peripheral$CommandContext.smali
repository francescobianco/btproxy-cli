.class final Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;
.super Ljava/lang/Object;
.source "Peripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/telinkota/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommandContext"
.end annotation


# instance fields
.field public callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

.field public command:Lcom/keephealth/android/util/telinkota/Command;

.field final synthetic this$0:Lcom/keephealth/android/util/telinkota/Peripheral;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command$Callback;Lcom/keephealth/android/util/telinkota/Command;)V
    .registers 4

    .line 1083
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p2, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

    .line 1085
    iput-object p3, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 1089
    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    .line 1090
    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

    return-void
.end method
