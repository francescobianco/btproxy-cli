.class public Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;
.super Ljava/lang/Object;
.source "DeviceControllerDataHandler.java"


# instance fields
.field public deviceCallbackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private times:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->times:I

    return-void
.end method


# virtual methods
.method public addDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceCallbackList_size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 137
    const-string v0, "deviceCallbackList.add(callback)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method

.method public handlerData([B)V
    .registers 6

    const/4 v0, 0x1

    .line 147
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->times:I

    .line 148
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->camare()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 149
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 150
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->camare()V

    goto :goto_13

    .line 152
    :cond_23
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->enterCamare()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 153
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 154
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->enterCamare()V

    goto :goto_33

    .line 156
    :cond_43
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->exitCamare()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 157
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 158
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->exitCamare()V

    goto :goto_53

    .line 160
    :cond_63
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->musicControl()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 161
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 162
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->musicControl()V

    goto :goto_73

    .line 164
    :cond_83
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->preMusic()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 165
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 166
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->preMusic()V

    goto :goto_93

    .line 168
    :cond_a3
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->nextMusic()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 170
    const-string v1, "FF433"

    const-string v2, "nextMusic"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->nextMusic()V

    goto :goto_b3

    .line 173
    :cond_ca
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->exitMusic()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 174
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 175
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->exitMusic()V

    goto :goto_da

    .line 177
    :cond_ea
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->findPhone()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v1, "gge3d"

    if-eqz v0, :cond_111

    .line 178
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 179
    const-string v2, "deviceCallback.findPhone()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->findPhone()V

    goto :goto_fc

    .line 182
    :cond_111
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->startSOS()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v2, "\u8bbe\u5907\u4e0a\u4f20\u6307\u4ee4"

    if-eqz v0, :cond_138

    .line 183
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_123
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 184
    const-string v1, "\u4e0a\u62a5SOS"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->startSos()V

    goto :goto_123

    .line 187
    :cond_138
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endSOS()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v3, "\u7ed3\u675f\u4e0a\u62a5SOS"

    if-eqz v0, :cond_15d

    .line 188
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 189
    invoke-static {v2, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->endSos()V

    goto :goto_14a

    .line 192
    :cond_15d
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endSOS2()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 193
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 194
    const-string v1, "\u624b\u673a\u53d1\u9001\u6307\u4ee4"

    invoke-static {v1, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->endSos()V

    goto :goto_16d

    .line 197
    :cond_182
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endFindPhone()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 198
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_192
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 199
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->endFindPhone()V

    goto :goto_192

    .line 201
    :cond_1a2
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->answerRingingCall()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 203
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->answerRingingCall()V

    goto :goto_1b2

    .line 205
    :cond_1c2
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endRingingCall()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 207
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->endRingingCall()V

    goto :goto_1d2

    .line 209
    :cond_1e2
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->sos()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 210
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 211
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->sos()V

    goto :goto_1f2

    .line 213
    :cond_202
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->voiceAdd()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_222

    .line 214
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_212
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 215
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->addVol()V

    goto :goto_212

    .line 217
    :cond_222
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->voiceSub()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_247

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_232
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 219
    const-string v2, "deviceCallback.subVol()..."

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->subVol()V

    goto :goto_232

    .line 222
    :cond_247
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->intoSportModel()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_267

    .line 223
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_257
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 224
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->intoSportModel()V

    goto :goto_257

    .line 226
    :cond_267
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->quitSportModel()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_287

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_277
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;

    .line 228
    invoke-interface {v0}, Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;->quitSportModel()V

    goto :goto_277

    :cond_287
    return-void
.end method

.method public isDeviceControl([B)Z
    .registers 9

    const/4 v0, 0x0

    .line 29
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfc

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v1, v2, :cond_28

    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_28

    .line 30
    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v4, :cond_28

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v4, :cond_28

    .line 31
    aget-byte v1, p1, v3

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v4, :cond_23

    return v4

    :cond_23
    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_28

    return v4

    .line 40
    :cond_28
    new-array v1, v3, [B

    fill-array-data v1, :array_40

    .line 41
    array-length v2, p1

    if-ge v2, v3, :cond_31

    return v0

    :cond_31
    move v2, v0

    :goto_32
    if-ge v2, v3, :cond_3e

    .line 45
    aget-byte v5, v1, v2

    aget-byte v6, p1, v2

    if-eq v5, v6, :cond_3b

    return v0

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3e
    return v4

    nop

    :array_40
    .array-data 1
        -0x70t
        0x8t
        0x0t
    .end array-data
.end method

.method public isDeviceControlSport([B)Z
    .registers 8

    .line 53
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->intoSportModel()[B

    move-result-object v0

    .line 54
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_a

    return v3

    :cond_a
    move v1, v3

    .line 57
    :goto_b
    array-length v2, v0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_40

    .line 58
    aget-byte v2, v0, v1

    aget-byte v5, p1, v1

    if-eq v2, v5, :cond_3d

    array-length v2, v0

    sub-int/2addr v2, v4

    if-eq v1, v2, :cond_3d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_33

    if-eq v5, v4, :cond_3d

    const/4 v2, 0x3

    if-eq v5, v2, :cond_3d

    const/16 v2, 0x1f

    if-eq v5, v2, :cond_3d

    const/16 v2, 0xc

    if-eq v5, v2, :cond_3d

    const/16 v2, 0x67

    if-eq v5, v2, :cond_3d

    const/16 v2, 0x19

    if-ne v5, v2, :cond_32

    goto :goto_3d

    :cond_32
    return v3

    :cond_33
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3c

    if-eq v5, v4, :cond_3d

    const/4 v2, 0x2

    if-ne v5, v2, :cond_3c

    goto :goto_3d

    :cond_3c
    return v3

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_40
    return v4
.end method

.method public isDeviceGetGps([B)Z
    .registers 8

    .line 108
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->intoSportModel()[B

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDeviceGetGps: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u539f\u59cb"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_30

    return v3

    :cond_30
    move v1, v3

    .line 113
    :goto_31
    array-length v2, v0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_54

    .line 114
    aget-byte v2, v0, v1

    aget-byte v5, p1, v1

    if-eq v2, v5, :cond_51

    array-length v2, v0

    sub-int/2addr v2, v4

    if-eq v1, v2, :cond_51

    const/4 v2, 0x4

    if-ne v1, v2, :cond_49

    if-eq v5, v4, :cond_51

    const/4 v2, 0x3

    if-ne v5, v2, :cond_48

    goto :goto_51

    :cond_48
    return v3

    :cond_49
    const/4 v2, 0x5

    if-ne v1, v2, :cond_50

    const/4 v2, 0x2

    if-ne v5, v2, :cond_50

    goto :goto_51

    :cond_50
    return v3

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_54
    return v4
.end method

.method public isDeviceQuitSport([B)Z
    .registers 8

    .line 81
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->quitSportModel()[B

    move-result-object v0

    .line 82
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_a

    return v3

    :cond_a
    move v1, v3

    .line 85
    :goto_b
    array-length v2, v0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_40

    .line 86
    aget-byte v2, v0, v1

    aget-byte v5, p1, v1

    if-eq v2, v5, :cond_3d

    array-length v2, v0

    sub-int/2addr v2, v4

    if-eq v1, v2, :cond_3d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_33

    if-eq v5, v4, :cond_3d

    const/4 v2, 0x3

    if-eq v5, v2, :cond_3d

    const/16 v2, 0x1f

    if-eq v5, v2, :cond_3d

    const/16 v2, 0xc

    if-eq v5, v2, :cond_3d

    const/16 v2, 0x67

    if-eq v5, v2, :cond_3d

    const/16 v2, 0x19

    if-ne v5, v2, :cond_32

    goto :goto_3d

    :cond_32
    return v3

    :cond_33
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3c

    if-eq v5, v4, :cond_3d

    const/4 v2, 0x2

    if-ne v5, v2, :cond_3c

    goto :goto_3d

    :cond_3c
    return v3

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_40
    return v4
.end method

.method public removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceCallbackList.remove:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/DeviceControllerDataHandler;->deviceCallbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
