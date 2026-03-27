.class public Lcom/keephealth/android/sevice/PhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FF4534"


# instance fields
.field private aa:I

.field private callHandler:Landroid/os/Handler;

.field callRun:Ljava/lang/Runnable;

.field private contactName:Ljava/lang/String;

.field private isRemind:Z

.field mIncomingNumber:Ljava/lang/String;

.field private msgTypeMsg:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->msgTypeMsg:I

    .line 34
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->isRemind:Z

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->callHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/keephealth/android/sevice/PhoneReceiver$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/PhoneReceiver$1;-><init>(Lcom/keephealth/android/sevice/PhoneReceiver;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->callRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/sevice/PhoneReceiver;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->isRemind:Z

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/sevice/PhoneReceiver;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/sevice/PhoneReceiver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/sevice/PhoneReceiver;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/sevice/PhoneReceiver;I)I
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I

    return p1
.end method

.method public static getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 191
    :cond_9
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v3

    .line 192
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isPermissions:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 193
    const-string v4, "android.permission.READ_CONTACTS"

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 194
    new-array v6, v2, [Ljava/lang/String;

    aput-object v4, v6, v3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 199
    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v9, v3

    const-string v3, "number"

    aput-object v3, v9, v2

    .line 201
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 203
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 204
    invoke-static {v6}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_6a

    return-object v1

    .line 208
    :cond_6a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 211
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 210
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v1, p1

    .line 214
    :cond_7c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\u83b7\u53d6\u624b\u673a\u7684\u522b\u540d:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FF453ff4"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-object v1
.end method

.method private sendData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppApplication.isRunningEcg...:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF4534"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_1b

    return-void

    .line 154
    :cond_1b
    iput-object p2, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->mIncomingNumber:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->callHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->callRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intent.getAction():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF45fd4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_196

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_196

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v0, :cond_26

    goto/16 :goto_196

    .line 43
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "FF4534"

    if-eqz v0, :cond_64

    .line 45
    const-string p1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/PhoneReceiver;->getResultData()Ljava/lang/String;

    move-result-object p2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "call OUT 1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "call OUT 2:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    .line 50
    :cond_64
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 52
    const-string v0, "phone"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    const-string v4, "incoming_number"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->mIncomingNumber:Ljava/lang/String;

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "call IN 1:"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "call IN 2:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->mIncomingNumber:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p2, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->mIncomingNumber:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/keephealth/android/sevice/PhoneReceiver;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const-string p2, "FF33f2"

    if-eqz p1, :cond_181

    const/4 v0, 0x1

    if-eq p1, v0, :cond_db

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c4

    goto/16 :goto_196

    .line 133
    :cond_c4
    const-string p1, "**********************\u76d1\u6d4b\u5230\u63a5\u542c\u7535\u8bdd!!!!************"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string p1, "\u63a5\u542c_phone:"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->answerRingingCallToDevice()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    goto/16 :goto_196

    .line 63
    :cond_db
    const-string p1, "**********************\u76d1\u6d4b\u5230\u7535\u8bdd\u547c\u5165!!!!*****"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u76d1\u6d4b\u5230\u7535\u8bdd\u547c\u5165:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    iget p2, p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  contactName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->isRemind:Z

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "BluetoothLe.getDefault().telephony:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    iget p2, p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  aa:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FF45fd5"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I

    if-ne p1, v0, :cond_16a

    .line 69
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-nez p1, :cond_16a

    .line 70
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isPhoneReceivePhone:Z

    .line 71
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isAssReceivePhone:Z

    if-nez p1, :cond_16a

    .line 72
    iget-object p1, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->mIncomingNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->contactName:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/keephealth/android/sevice/PhoneReceiver;->sendData(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u76d1\u6d4b\u5230\u7535\u8bdd\u547c\u5165----PhoneReceive------:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    iget v2, v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/keephealth/android/sevice/PhoneReceiver;->aa:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_16a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-eqz p1, :cond_17a

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-ne p1, v0, :cond_196

    .line 79
    :cond_17a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    goto :goto_196

    .line 138
    :cond_181
    const-string p1, "**********************\u76d1\u6d4b\u5230\u6302\u65ad\u7535\u8bdd!!!!*******************"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string p1, "\u6302\u65ad_phone:"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endRingingCallToDevice()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :cond_196
    :goto_196
    return-void
.end method
