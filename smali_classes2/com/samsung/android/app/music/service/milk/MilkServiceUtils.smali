.class public final Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I
    .locals 3

    const/4 p0, 0x1

    if-eqz p1, :cond_5

    const-string v0, "0"

    .line 298
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getIsAdult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const-string v0, "1"

    .line 301
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getAdultCertifyYn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "-1"

    .line 309
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getAdultCertifyYn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    .line 316
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 317
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v0

    goto :goto_2

    :cond_5
    const-string p1, "MilkServiceUtils"

    const-string v0, "getExplicitType : User info is null"

    .line 321
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string p1, "MilkServiceUtils"

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExplicitType : ExplicitType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "music"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/AES;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 93
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Z)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "com.samsung.radio.countrycode"

    const-string v1, "KR"

    .line 229
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const-string p1, "KR"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->j(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const-string p0, "MilkServiceUtils"

    const-string p1, "isAvailableServiceArea not supported country"

    .line 238
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "MilkServiceUtils"

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailableServiceArea country code "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {}, Lcom/samsung/auth/AuthManager;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/AES;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 101
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "modelName"

    .line 103
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 109
    :cond_0
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "com.samsung.radio.mixed.udid"

    const/4 v1, 0x0

    .line 113
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {p0}, Lcom/samsung/android/app/music/util/AES;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MilkServiceUtils"

    const-string v0, "getUniqueId It still returns the null"

    .line 123
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v1, "MilkServiceUtils"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUniqueId udid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.radio.mixed.udid"

    .line 128
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "key_spotify_unique_device_id"

    const/4 v1, 0x0

    .line 137
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    invoke-static {p0}, Lcom/samsung/android/app/music/util/AES;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MilkServiceUtils"

    const-string v0, "getUniqueIdForSpotify - getUniqueId It still returns the null"

    .line 143
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v1, "MilkServiceUtils"

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUniqueIdForSpotify - udid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_spotify_unique_device_id"

    .line 148
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.samsung.radio.shopid"

    const/4 v1, 0x0

    .line 157
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.samsung.radio.channelid"

    const/4 v1, 0x0

    .line 161
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    .line 165
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "mcc"

    .line 167
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc"

    .line 170
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b:Ljava/lang/String;

    .line 171
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 173
    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->b:Ljava/lang/String;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 3

    .line 205
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->l(Landroid/content/Context;)Z

    move-result v0

    .line 215
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_2

    const-string v0, "com.samsung.radio.countrystatus"

    const/16 v1, 0x7d1

    .line 217
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "com.samsung.radio.countrystatus"

    const/4 v1, 0x0

    .line 221
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "MilkServiceUtils"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCountryStatus : login status - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v1, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "status_code=?"

    const-string v1, "03"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    .line 435
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x0

    .line 437
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 431
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    .line 440
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v0

    :cond_3
    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NOLOGINUSR"

    :cond_0
    return-object p0
.end method

.method private static l(Landroid/content/Context;)Z
    .locals 0

    .line 267
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
