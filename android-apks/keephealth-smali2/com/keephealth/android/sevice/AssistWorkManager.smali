.class public Lcom/keephealth/android/sevice/AssistWorkManager;
.super Ljava/lang/Object;
.source "AssistWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final NOTICE_ID:I = 0x3e9


# instance fields
.field private CHANNEL_ONE_ID:Ljava/lang/String;

.field private SMS_INBOX:Landroid/net/Uri;

.field private SMS_URI:Landroid/net/Uri;

.field TAG:Ljava/lang/String;

.field private aa:I

.field private callHandler:Landroid/os/Handler;

.field callRun:Ljava/lang/Runnable;

.field private contactName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dd:I

.field private exitTime:J

.field private handler:Landroid/os/Handler;

.field private hasFirstReigsterPhone:Z

.field private isCommingPhone:Z

.field private isPairSuccess:Z

.field private isRemind:Z

.field private isRingOrVibrate:Z

.field lastDate:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVib:Landroid/os/Vibrator;

.field private notification:Landroid/app/Notification;

.field private phoneNumber:Ljava/lang/String;

.field private phonePermissions:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private tpm:Landroid/telephony/TelephonyManager;

.field vibrateAndMediaRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 8

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isCommingPhone:Z

    .line 75
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z

    .line 80
    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->SMS_URI:Landroid/net/Uri;

    .line 85
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->SMS_INBOX:Landroid/net/Uri;

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isRingOrVibrate:Z

    const-wide/16 v2, 0x0

    .line 95
    iput-wide v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->exitTime:J

    .line 97
    new-instance v2, Lcom/keephealth/android/sevice/AssistWorkManager$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/sevice/AssistWorkManager$1;-><init>(Lcom/keephealth/android/sevice/AssistWorkManager;)V

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v2, Lcom/keephealth/android/sevice/AssistWorkManager$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/sevice/AssistWorkManager$2;-><init>(Lcom/keephealth/android/sevice/AssistWorkManager;)V

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 337
    const-string v2, "com.hearth.notification.assist"

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->CHANNEL_ONE_ID:Ljava/lang/String;

    .line 339
    iput-boolean v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phonePermissions:Z

    .line 432
    new-instance v2, Lcom/keephealth/android/sevice/AssistWorkManager$4;

    invoke-direct {v2, p0}, Lcom/keephealth/android/sevice/AssistWorkManager$4;-><init>(Lcom/keephealth/android/sevice/AssistWorkManager;)V

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->callRun:Ljava/lang/Runnable;

    const-wide/16 v2, -0x1

    .line 450
    iput-wide v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->lastDate:J

    .line 451
    const-string v2, "PHONECALL"

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->TAG:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->handler:Landroid/os/Handler;

    .line 149
    iput-object p3, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;

    .line 150
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    .line 151
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    new-instance p3, Lcom/keephealth/android/sevice/AssistWorkManager$3;

    const/4 v2, 0x2

    invoke-direct {p3, p0, v2, p1}, Lcom/keephealth/android/sevice/AssistWorkManager$3;-><init>(Lcom/keephealth/android/sevice/AssistWorkManager;ILandroid/content/Context;)V

    invoke-virtual {p2, v2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->addDeviceCallback(ILcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    .line 285
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string p3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string p3, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt p3, v3, :cond_75

    .line 291
    iget-object p3, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_7a

    .line 293
    :cond_75
    iget-object p3, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    :goto_7a
    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_83

    move v0, v1

    :cond_83
    iput-boolean v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phonePermissions:Z

    .line 297
    const-string p2, "android.permission.READ_SMS"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 298
    iget-boolean p2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phonePermissions:Z

    if-nez p2, :cond_aa

    .line 299
    const-string p2, "phone"

    .line 300
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->tpm:Landroid/telephony/TelephonyManager;

    .line 302
    :try_start_98
    new-instance p1, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;-><init>(Lcom/keephealth/android/sevice/AssistWorkManager;Lcom/keephealth/android/sevice/AssistWorkManager$1;)V

    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_98 .. :try_end_a0} :catch_a0

    .line 307
    :catch_a0
    invoke-direct {p0}, Lcom/keephealth/android/sevice/AssistWorkManager;->registerPhoneListener()V

    .line 308
    const-string p1, "FF45fd4"

    const-string p2, "\u6ce8\u518c\u7535\u8bdd\u76d1\u542c"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/sevice/AssistWorkManager;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isRingOrVibrate:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isRingOrVibrate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/sevice/AssistWorkManager;)J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->exitTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/sevice/AssistWorkManager;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I

    return p0
.end method

.method static synthetic access$1102(Lcom/keephealth/android/sevice/AssistWorkManager;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I

    return p1
.end method

.method static synthetic access$1108(Lcom/keephealth/android/sevice/AssistWorkManager;)I
    .registers 3

    .line 68
    iget v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I

    return v0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/content/Context;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/sevice/AssistWorkManager;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->hasFirstReigsterPhone:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->hasFirstReigsterPhone:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/keephealth/android/sevice/AssistWorkManager;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isCommingPhone:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isCommingPhone:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/sevice/AssistWorkManager;->sendData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/sevice/AssistWorkManager;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isPairSuccess:Z

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isPairSuccess:Z

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/sevice/AssistWorkManager;Z)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->playRingtone(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/sevice/AssistWorkManager;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z

    return p0
.end method

.method static synthetic access$802(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z

    return p1
.end method

.method static synthetic access$900(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;

    return-object p1
.end method

.method public static getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 779
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

    .line 780
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isPermissions:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 781
    const-string v4, "android.permission.READ_CONTACTS"

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 782
    new-array v6, v2, [Ljava/lang/String;

    aput-object v4, v6, v3

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 787
    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v9, v3

    const-string v3, "number"

    aput-object v3, v9, v2

    .line 789
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 791
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 789
    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 792
    invoke-static {v6}, Lcom/keephealth/android/util/PermissionUtil;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    const-string v2, "\u83b7\u53d6\u624b\u673a\u7684\u522b\u540d:"

    if-eqz p1, :cond_90

    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_6c

    return-object v1

    .line 796
    :cond_6c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 799
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 798
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 800
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v1, p1

    .line 802
    :cond_7e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FF453ff4"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hfgfr3f2"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getSystemDefultRingtoneUri()Landroid/net/Uri;
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private playRingtone(Z)V
    .registers 9

    .line 346
    const-string v0, "gge3d"

    .line 0
    const-string v1, "uri:"

    .line 346
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_16

    .line 348
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 351
    :cond_16
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;

    if-nez v2, :cond_28

    if-eqz p1, :cond_28

    .line 352
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;

    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 357
    :try_start_2a
    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_4e

    :catch_31
    move-exception v4

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 361
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    move v4, v3

    :goto_4e
    if-eqz v4, :cond_68

    .line 364
    const-string v4, "mMediaPlayer.stop()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 366
    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 367
    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 368
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_68
    const-wide/16 v4, 0x0

    .line 371
    :try_start_6a
    invoke-direct {p0}, Lcom/keephealth/android/sevice/AssistWorkManager;->getSystemDefultRingtoneUri()Landroid/net/Uri;

    move-result-object v2

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v6, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 375
    iget-boolean v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->isPairSuccess:Z

    if-nez v1, :cond_93

    .line 376
    const-string v1, "\u6ca1\u6709\u914d\u5bf9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 378
    :cond_93
    const-string v1, "\u5df2\u7ecf\u914d\u5bf9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 382
    :goto_9e
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 383
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->exitTime:J

    .line 386
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 388
    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_bb} :catch_bc

    goto :goto_e4

    :catch_bc
    move-exception v1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "e:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->exitTime:J

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 395
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->vibrateAndMediaRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_e4
    if-eqz p1, :cond_f1

    .line 398
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_f2

    invoke-virtual {p1, v0, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_f1
    return-void

    :array_f2
    .array-data 8
        0x1f4
        0x7d0
    .end array-data
.end method

.method private registerPhoneListener()V
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->tpm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private sendData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 423
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

    .line 424
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_1b

    return-void

    .line 427
    :cond_1b
    iput-object p2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;

    .line 428
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;

    .line 429
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->callRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendMessage()V
    .registers 14

    .line 455
    const-string v0, "sendMessage"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 456
    const-string v0, "hfgfr3f2"

    const-string v1, "sendMessage..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-eqz v0, :cond_11

    return-void

    .line 465
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x6

    .line 467
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "body"

    aput-object v7, v3, v0

    const/4 v8, 0x1

    const-string v9, "address"

    aput-object v9, v3, v8

    const-string v2, "person"

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const-string v5, "read"

    aput-object v5, v3, v2

    const/4 v2, 0x4

    const-string v10, "date"

    aput-object v10, v3, v2

    const/4 v2, 0x5

    const-string v5, "_id"

    aput-object v5, v3, v2

    .line 470
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    const-string v5, "android.permission.READ_SMS"

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_43

    return-void

    .line 474
    :cond_43
    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->SMS_INBOX:Landroid/net/Uri;

    new-array v5, v4, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v5, v0

    const-string v4, "1"

    aput-object v4, v5, v8

    const-string v6, "date desc limit 1"

    const-string v4, "read=? and type=?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_5a

    return-void

    .line 479
    :cond_5a
    const-string v2, "138"

    const-wide/16 v3, 0x0

    const-string v5, "0438"

    .line 481
    :goto_60
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const-string v11, "date:"

    if-eqz v6, :cond_b8

    .line 482
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "lastDate:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->lastDate:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "body:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    move v0, v8

    goto :goto_60

    .line 494
    :cond_b8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_c3

    .line 496
    const-string v0, "\u6ca1\u6709\u672a\u8bfb\u77ed\u4fe1....."

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 499
    :cond_c3
    iget-wide v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->lastDate:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_ca

    return-void

    .line 502
    :cond_ca
    iput-wide v3, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->lastDate:J

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 505
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 506
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currDate:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 507
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ddd:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    move-object v0, v2

    .line 512
    :cond_117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "phoneNumber:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/keephealth/android/sevice/AssistWorkManager$5;

    invoke-direct {v3, p0, v0, v5}, Lcom/keephealth/android/sevice/AssistWorkManager$5;-><init>(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 548
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {v8}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessageType(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    return-void
.end method

.method private unregisterPhoneListener()V
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->tpm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_c
    return-void
.end method
