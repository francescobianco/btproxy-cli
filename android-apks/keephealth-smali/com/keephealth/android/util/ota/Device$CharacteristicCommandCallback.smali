.class final Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/keephealth/android/util/ota/Command$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CharacteristicCommandCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ota/Device;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ota/Device;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ota/Device;Lcom/keephealth/android/util/ota/Device$1;)V
    .registers 3

    .line 362
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;-><init>(Lcom/keephealth/android/util/ota/Device;)V

    return-void
.end method


# virtual methods
.method public error(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public success(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V
    .registers 5

    .line 366
    sget-object p1, Lcom/keephealth/android/util/ota/Device$1;->$SwitchMap$com$keephealth$android$util$ota$Command$CommandType:[I

    iget-object v0, p2, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ota/Command$CommandType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_68

    goto :goto_67

    .line 389
    :pswitch_e
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 390
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/keephealth/android/util/ota/Device$GattOperationCallback;->onDisableNotify()V

    goto :goto_67

    .line 384
    :pswitch_20
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 385
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/keephealth/android/util/ota/Device$GattOperationCallback;->onEnableNotify()V

    goto :goto_67

    .line 379
    :pswitch_32
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/keephealth/android/util/ota/Device$GattOperationCallback;->onWrite(Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V

    goto :goto_67

    .line 373
    :pswitch_44
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mDescriptorCallback:Lcom/keephealth/android/util/ota/Device$DescriptorCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$300(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$DescriptorCallback;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 374
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mDescriptorCallback:Lcom/keephealth/android/util/ota/Device$DescriptorCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$300(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$DescriptorCallback;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/keephealth/android/util/ota/Device$DescriptorCallback;->onDescriptorRead(Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V

    goto :goto_67

    .line 368
    :pswitch_56
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 369
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$CharacteristicCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # getter for: Lcom/keephealth/android/util/ota/Device;->mGattOperationCallback:Lcom/keephealth/android/util/ota/Device$GattOperationCallback;
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$200(Lcom/keephealth/android/util/ota/Device;)Lcom/keephealth/android/util/ota/Device$GattOperationCallback;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/keephealth/android/util/ota/Device$GattOperationCallback;->onRead(Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V

    :cond_67
    :goto_67
    return-void

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_56
        :pswitch_44
        :pswitch_32
        :pswitch_32
        :pswitch_20
        :pswitch_e
    .end packed-switch
.end method

.method public timeout(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
