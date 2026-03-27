.class public Lcom/keephealth/android/util/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static final KEY_VERSION_EMUI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_VERSION_MIUI:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_VERSION_OPPO:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final KEY_VERSION_SMARTISAN:Ljava/lang/String; = "ro.smartisan.version"

.field private static final KEY_VERSION_VIVO:Ljava/lang/String; = "ro.vivo.os.version"

.field public static final ROM_EMUI:Ljava/lang/String; = "EMUI"

.field public static final ROM_FLYME:Ljava/lang/String; = "FLYME"

.field public static final ROM_MIUI:Ljava/lang/String; = "MIUI"

.field public static final ROM_OPPO:Ljava/lang/String; = "OPPO"

.field public static final ROM_QIKU:Ljava/lang/String; = "QIKU"

.field public static final ROM_SAMSUNG:Ljava/lang/String; = "SAMSUNG"

.field public static final ROM_SMARTISAN:Ljava/lang/String; = "SMARTISAN"

.field public static final ROM_VIVO:Ljava/lang/String; = "VIVO"

.field private static final TAG:Ljava/lang/String; = "Rom"

.field private static sName:Ljava/lang/String;

.field private static sVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)Z
    .registers 3

    .line 145
    sget-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 149
    :cond_9
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 150
    const-string v0, "MIUI"

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    goto :goto_87

    .line 151
    :cond_1c
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 152
    const-string v0, "EMUI"

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    goto :goto_87

    .line 153
    :cond_2f
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 154
    const-string v0, "OPPO"

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    goto :goto_87

    .line 155
    :cond_42
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 156
    const-string v0, "VIVO"

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    goto :goto_87

    .line 157
    :cond_55
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 158
    const-string v0, "SMARTISAN"

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    goto :goto_87

    .line 160
    :cond_68
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 162
    sput-object v1, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    goto :goto_87

    .line 164
    :cond_7b
    const-string v0, "unknown"

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    .line 165
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    .line 168
    :goto_87
    sget-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getName()Ljava/lang/String;
    .registers 1

    .line 125
    sget-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 126
    const-string v0, ""

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    .line 128
    :cond_9
    sget-object v0, Lcom/keephealth/android/util/RomUtils;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "Unable to read prop "

    const-string v1, "getprop "

    const/4 v2, 0x0

    .line 175
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 176
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v3, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2a} :catch_3e
    .catchall {:try_start_5 .. :try_end_2a} :catchall_3c

    .line 177
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_3a
    .catchall {:try_start_2a .. :try_end_31} :catchall_5d

    .line 185
    :try_start_31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_39
    return-object v1

    :catch_3a
    move-exception v1

    goto :goto_40

    :catchall_3c
    move-exception p0

    goto :goto_5f

    :catch_3e
    move-exception v1

    move-object v3, v2

    .line 180
    :goto_40
    :try_start_40
    const-string v4, "Rom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_5d

    if-eqz v3, :cond_5c

    .line 185
    :try_start_54
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5c
    :goto_5c
    return-object v2

    :catchall_5d
    move-exception p0

    move-object v2, v3

    :goto_5f
    if-eqz v2, :cond_69

    .line 185
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    :cond_69
    :goto_69
    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 132
    sget-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 133
    const-string v0, ""

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    .line 135
    :cond_9
    sget-object v0, Lcom/keephealth/android/util/RomUtils;->sVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static is360()Z
    .registers 1

    .line 112
    const-string v0, "QIKU"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "360"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static isEmui()Z
    .registers 1

    .line 38
    const-string v0, "EMUI"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFlyme()Z
    .registers 1

    .line 103
    const-string v0, "FLYME"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiui()Z
    .registers 1

    .line 47
    const-string v0, "MIUI"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .registers 1

    .line 74
    const-string v0, "OPPO"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRealme()Z
    .registers 3

    .line 83
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 84
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 86
    const-string v2, "Realme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 88
    const-string v0, "RM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "RMX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public static isSamSung()Z
    .registers 1

    .line 56
    const-string v0, "SAMSUNG"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmartisan()Z
    .registers 1

    .line 121
    const-string v0, "SMARTISAN"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVivo()Z
    .registers 1

    .line 65
    const-string v0, "VIVO"

    invoke-static {v0}, Lcom/keephealth/android/util/RomUtils;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
