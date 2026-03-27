.class public Lcom/keephealth/android/app/ActivityName;
.super Ljava/lang/Object;
.source "ActivityName.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityClassName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43c

    .line 108
    const-string v0, "MainActivityNew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    const-class p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    return-object p0

    .line 110
    :cond_11
    const-string v0, "LoginNewActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 111
    const-class p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    return-object p0

    .line 112
    :cond_1c
    const-string v0, "MainMenuSetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 113
    const-class p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;

    return-object p0

    .line 114
    :cond_27
    const-string v0, "PersonUnitActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 115
    const-class p0, Lcom/keephealth/android/ui/mine/activity/PersonUnitActivity;

    return-object p0

    .line 116
    :cond_32
    const-string v0, "FamilyActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 117
    const-class p0, Lcom/keephealth/android/ui/mine/activity/FamilyActivity;

    return-object p0

    .line 118
    :cond_3d
    const-string v0, "PersonInfoActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 119
    const-class p0, Lcom/keephealth/android/ui/mine/activity/PersonInfoActivity;

    return-object p0

    .line 120
    :cond_48
    const-string v0, "MedalActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 121
    const-class p0, Lcom/keephealth/android/ui/mine/activity/MedalActivity;

    return-object p0

    .line 122
    :cond_53
    const-string v0, "MedalDetailActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 123
    const-class p0, Lcom/keephealth/android/ui/mine/activity/MedalDetailActivity;

    return-object p0

    .line 124
    :cond_5e
    const-string v0, "AddMemberActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 125
    const-class p0, Lcom/keephealth/android/ui/mine/activity/AddMemberActivity;

    return-object p0

    .line 126
    :cond_69
    const-string v0, "UpdatePasswordActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 127
    const-class p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    return-object p0

    .line 128
    :cond_74
    const-string v0, "ScanDeviceActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 129
    const-class p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    return-object p0

    .line 130
    :cond_7f
    const-string v0, "NoticeActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 131
    const-class p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    return-object p0

    .line 132
    :cond_8a
    const-string v0, "AudioBluetoothActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 133
    const-class p0, Lcom/keephealth/android/ui/device/activity/AudioBluetoothActivity;

    return-object p0

    .line 134
    :cond_95
    const-string v0, "SportModeActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 135
    const-class p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    return-object p0

    .line 136
    :cond_a0
    const-string v0, "DisturbActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 137
    const-class p0, Lcom/keephealth/android/ui/device/activity/DisturbActivity;

    return-object p0

    .line 138
    :cond_ab
    const-string v0, "DialCenterActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 139
    const-class p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    return-object p0

    .line 140
    :cond_b6
    const-string v0, "DialCenterBActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 141
    const-class p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    return-object p0

    .line 142
    :cond_c1
    const-string v0, "RecommendDetailActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 143
    const-class p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    return-object p0

    .line 144
    :cond_cc
    const-string v0, "DownLoadHistoryActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 145
    const-class p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    return-object p0

    .line 146
    :cond_d7
    const-string v0, "HealthMonitoringActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 147
    const-class p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    return-object p0

    .line 148
    :cond_e2
    const-string v0, "HealthReminderActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 149
    const-class p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    return-object p0

    .line 150
    :cond_ed
    const-string v0, "MoreSetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 151
    const-class p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    return-object p0

    .line 152
    :cond_f8
    const-string v0, "WeightDetailActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 153
    const-class p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    return-object p0

    .line 154
    :cond_103
    const-string v0, "WeightRecordActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 155
    const-class p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;

    return-object p0

    .line 156
    :cond_10e
    const-string v0, "ScanQrCodeActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 157
    const-class p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeActivity;

    return-object p0

    .line 158
    :cond_119
    const-string v0, "ScanResultActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 159
    const-class p0, Lcom/keephealth/android/ui/main/activity/ScanResultActivity;

    return-object p0

    .line 160
    :cond_124
    const-string v0, "FamilyDetailActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 161
    const-class p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    return-object p0

    .line 162
    :cond_12f
    const-string v0, "FamilyPermissonActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 163
    const-class p0, Lcom/keephealth/android/ui/main/activity/FamilyPermissonActivity;

    return-object p0

    .line 164
    :cond_13a
    const-string v0, "WristScreenActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 165
    const-class p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    return-object p0

    .line 166
    :cond_145
    const-string v0, "DetailBloodOxygenActivity2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 167
    const-class p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity2;

    return-object p0

    .line 168
    :cond_150
    const-string v0, "DrinkWaterHistoryActivity2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 169
    const-class p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    return-object p0

    .line 170
    :cond_15b
    const-string v0, "DeviceSetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 171
    const-class p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;

    return-object p0

    .line 172
    :cond_166
    const-string v0, "HeartRateRegionActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 173
    const-class p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

    return-object p0

    .line 174
    :cond_171
    const-string v0, "AlarmListActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 175
    const-class p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;

    return-object p0

    .line 176
    :cond_17c
    const-string v0, "AlarmAddActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 177
    const-class p0, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    return-object p0

    .line 178
    :cond_187
    const-string v0, "CameraActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 179
    const-class p0, Lcom/keephealth/android/ui/device/activity/CameraActivity;

    return-object p0

    .line 180
    :cond_192
    const-string v0, "TempHistoryActivity2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 181
    const-class p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity2;

    return-object p0

    .line 182
    :cond_19d
    const-string v0, "DetailBloodPressActivity2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 183
    const-class p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    return-object p0

    .line 184
    :cond_1a8
    const-string v0, "RemindSportSetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 185
    const-class p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

    return-object p0

    .line 186
    :cond_1b3
    const-string v0, "RemindSportSetNewActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1be

    .line 187
    const-class p0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    return-object p0

    .line 188
    :cond_1be
    const-string v0, "DialCenterEditActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 189
    const-class p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    return-object p0

    .line 190
    :cond_1c9
    const-string v0, "DrinkWaterAddActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 191
    const-class p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterAddActivity;

    return-object p0

    .line 192
    :cond_1d4
    const-string v0, "DrinkWaterGoalActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 193
    const-class p0, Lcom/keephealth/android/ui/device/activity/DrinkWaterGoalActivity;

    return-object p0

    .line 194
    :cond_1df
    const-string v0, "LoveSelectActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 195
    const-class p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;

    return-object p0

    .line 196
    :cond_1ea
    const-string v0, "PreMenstrualSetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 197
    const-class p0, Lcom/keephealth/android/ui/device/activity/PreMenstrualSetActivity;

    return-object p0

    .line 198
    :cond_1f5
    const-string v0, "SymptomSelectActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 199
    const-class p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;

    return-object p0

    .line 200
    :cond_200
    const-string v0, "FirmwareUpdateActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 201
    const-class p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateActivity;

    return-object p0

    .line 202
    :cond_20b
    const-string v0, "FirmwareUpdateOtaActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_216

    .line 203
    const-class p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    return-object p0

    .line 204
    :cond_216
    const-string v0, "WomenHealthActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 205
    const-class p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    return-object p0

    .line 206
    :cond_221
    const-string v0, "BitmapEditActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 207
    const-class p0, Lcom/keephealth/android/util/image/BitmapEditActivity;

    return-object p0

    .line 208
    :cond_22c
    const-string v0, "GoalSetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_237

    .line 209
    const-class p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    return-object p0

    .line 210
    :cond_237
    const-string v0, "MusicControlActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 211
    const-class p0, Lcom/keephealth/android/ui/device/activity/MusicControlActivity;

    return-object p0

    .line 212
    :cond_242
    const-string v0, "SportRecordActivityNew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 213
    const-class p0, Lcom/keephealth/android/ui/sport/activity/SportRecordActivityNew;

    return-object p0

    .line 214
    :cond_24d
    const-string v0, "DetailSleepActivity2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_258

    .line 215
    const-class p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    return-object p0

    .line 216
    :cond_258
    const-string v0, "RegisterActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_263

    .line 217
    const-class p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    return-object p0

    .line 218
    :cond_263
    const-string v0, "ChooseCountryOrRegionActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26e

    .line 219
    const-class p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    return-object p0

    .line 220
    :cond_26e
    const-string v0, "RegisterNewActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_279

    .line 221
    const-class p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    return-object p0

    .line 222
    :cond_279
    const-string v0, "RegisterFirstActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_284

    .line 223
    const-class p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    return-object p0

    .line 224
    :cond_284
    const-string v0, "VerificationEmailActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28f

    .line 225
    const-class p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    return-object p0

    .line 226
    :cond_28f
    const-string v0, "NotificationActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 227
    const-class p0, Lcom/keephealth/android/ui/device/activity/NotificationActivity;

    return-object p0

    .line 228
    :cond_29a
    const-string v0, "DetailActivity2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 229
    const-class p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    return-object p0

    .line 230
    :cond_2a5
    const-string v0, "DetailHeartRateActivity2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 231
    const-class p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity2;

    return-object p0

    .line 232
    :cond_2b0
    const-string v0, "MineInfoActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 233
    const-class p0, Lcom/keephealth/android/ui/mine/activity/MineInfoActivity;

    return-object p0

    .line 234
    :cond_2bb
    const-string v0, "SystemSetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 235
    const-class p0, Lcom/keephealth/android/ui/mine/activity/SystemSetActivity;

    return-object p0

    .line 236
    :cond_2c6
    const-string v0, "FeedbackActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d1

    .line 237
    const-class p0, Lcom/keephealth/android/ui/mine/activity/FeedbackActivity;

    return-object p0

    .line 238
    :cond_2d1
    const-string v0, "UnitActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 239
    const-class p0, Lcom/keephealth/android/ui/mine/activity/UnitActivity;

    return-object p0

    .line 240
    :cond_2dc
    const-string v0, "AboutActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    .line 241
    const-class p0, Lcom/keephealth/android/ui/mine/activity/AboutActivity;

    return-object p0

    .line 242
    :cond_2e7
    const-string v0, "AccoutActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    .line 243
    const-class p0, Lcom/keephealth/android/ui/mine/activity/AccoutActivity;

    return-object p0

    .line 244
    :cond_2f2
    const-string v0, "GoogleFitActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2fd

    .line 245
    const-class p0, Lcom/keephealth/android/ui/mine/activity/GoogleFitActivity;

    return-object p0

    .line 246
    :cond_2fd
    const-string v0, "SosEditActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_308

    .line 247
    const-class p0, Lcom/keephealth/android/ui/mine/activity/SosEditActivity;

    return-object p0

    .line 248
    :cond_308
    const-string v0, "SelectWeekDayActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_313

    .line 249
    const-class p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;

    return-object p0

    .line 250
    :cond_313
    const-string v0, "SelectRemindActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31e

    .line 251
    const-class p0, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;

    return-object p0

    .line 252
    :cond_31e
    const-string v0, "BloodPressureCalibration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_329

    .line 253
    const-class p0, Lcom/keephealth/android/ui/device/activity/BloodPressureCalibration;

    return-object p0

    .line 254
    :cond_329
    const-string v0, "TimeSystemActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_334

    .line 255
    const-class p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;

    return-object p0

    .line 256
    :cond_334
    const-string v0, "DeviceLanguageActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33f

    .line 257
    const-class p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;

    return-object p0

    .line 258
    :cond_33f
    const-string v0, "SportDetailActivityNew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34a

    .line 259
    const-class p0, Lcom/keephealth/android/ui/sport/activity/SportDetailActivityNew;

    return-object p0

    .line 260
    :cond_34a
    const-string v0, "SportOutActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_355

    .line 261
    const-class p0, Lcom/keephealth/android/ui/sport/activity/SportOutActivity;

    return-object p0

    .line 262
    :cond_355
    const-string v0, "SportTargetActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_360

    .line 263
    const-class p0, Lcom/keephealth/android/ui/sport/activity/SportTargetActivity;

    return-object p0

    .line 264
    :cond_360
    const-string v0, "SportActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36b

    .line 265
    const-class p0, Lcom/keephealth/android/ui/sport/activity/SportActivity;

    return-object p0

    .line 266
    :cond_36b
    const-string v0, "EcgMeasureActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_376

    .line 267
    const-class p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureActivity;

    return-object p0

    .line 268
    :cond_376
    const-string v0, "WebViewEcgActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_381

    .line 269
    const-class p0, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    return-object p0

    .line 270
    :cond_381
    const-string v0, "EcgMeasureFinishActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38c

    .line 271
    const-class p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    return-object p0

    .line 272
    :cond_38c
    const-string v0, "EcgRecordActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_397

    .line 273
    const-class p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;

    return-object p0

    .line 274
    :cond_397
    const-string v0, "EcgDataDetailActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a2

    .line 275
    const-class p0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;

    return-object p0

    .line 276
    :cond_3a2
    const-string v0, "SetPhoneWenActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    .line 277
    const-class p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    return-object p0

    .line 278
    :cond_3ad
    const-string v0, "ClipImageActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 279
    const-class p0, Lcom/keephealth/android/util/image/ClipImageActivity;

    return-object p0

    .line 280
    :cond_3b8
    const-string v0, "PairSuccessActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c3

    .line 281
    const-class p0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    return-object p0

    .line 282
    :cond_3c3
    const-string v0, "LookWeatherInfoActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3ce

    .line 283
    const-class p0, Lcom/keephealth/android/ui/main/activity/LookWeatherInfoActivity;

    return-object p0

    .line 284
    :cond_3ce
    const-string v0, "ReceivePhoneInfoActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d9

    .line 285
    const-class p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    return-object p0

    .line 286
    :cond_3d9
    const-string v0, "CropActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e4

    .line 287
    const-class p0, Lcom/keephealth/android/views/gallery/CropActivity;

    return-object p0

    .line 288
    :cond_3e4
    const-string v0, "ImageGalleryActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3ef

    .line 289
    const-class p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    return-object p0

    .line 290
    :cond_3ef
    const-string v0, "ImagePickerActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    .line 291
    const-class p0, Lcom/keephealth/android/views/gallery/ImagePickerActivity;

    return-object p0

    .line 292
    :cond_3fa
    const-string v0, "DetailStreeCoseActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_405

    .line 293
    const-class p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    return-object p0

    .line 294
    :cond_405
    const-string v0, "CardQrCodeActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_410

    .line 295
    const-class p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

    return-object p0

    .line 296
    :cond_410
    const-string v0, "CardActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41b

    .line 297
    const-class p0, Lcom/keephealth/android/ui/device/activity/CardActivity;

    return-object p0

    .line 298
    :cond_41b
    const-string v0, "BindCardActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_426

    .line 299
    const-class p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    return-object p0

    .line 300
    :cond_426
    const-string v0, "DrinkWaterTargetAndNoticeActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_431

    .line 301
    const-class p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    return-object p0

    .line 302
    :cond_431
    const-string v0, "DrinkWaterHistoryActivityNew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_43c

    .line 303
    const-class p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivityNew;

    return-object p0

    .line 307
    :cond_43c
    const-class p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    return-object p0
.end method
