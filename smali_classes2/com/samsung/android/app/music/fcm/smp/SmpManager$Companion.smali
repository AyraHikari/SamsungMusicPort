.class public final Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/fcm/smp/SmpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;-><init>()V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/model/UserInfo;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DRM_MP3"

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "DRM"

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Streaming_MP3"

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "Streaming"

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "MP3"

    goto :goto_0

    :cond_4
    const-string p1, "Free"

    :goto_0
    return-object p1
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 158
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, ""

    .line 162
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 163
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    const-string v0, "df.parse(birth)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 165
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_2
    move-object p1, v1

    :goto_2
    return-object p1
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/SmpAppFilter;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SmpManager"

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppfilter key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", value = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/SmpAppFilter;->a(Landroid/content/Context;Ljava/util/Map;)V

    const-string p1, "SmpManager"

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppfilterMap data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SmpManager"

    const-string v0, "legal is not agreed, permission is not granted"

    .line 54
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "G1NKcnt2QA"

    .line 58
    new-instance v1, Lcom/samsung/android/sdk/smp/SmpInitOptions;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smp/SmpInitOptions;-><init>()V

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/fcm/smp/SmpExtensionKt;->a()Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpInitOptions;

    .line 60
    invoke-static {}, Lcom/samsung/android/app/music/fcm/smp/SmpExtensionKt;->b()Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "true"

    goto :goto_0

    :cond_1
    const-string v3, "false"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->a(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpInitOptions;

    .line 58
    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/Smp;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/Smp;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->isSignUpNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    move-object p2, v0

    check-cast p2, Ljava/util/Map;

    const-string v1, "p_user_type_e"

    const-string v2, "Device"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "p_email"

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userInfo.email"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    const-string v4, "p_birthday"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v3, "p_user_type_e"

    .line 141
    invoke-direct {v2, p2}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Lcom/samsung/android/app/music/model/UserInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_1
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/Smp;->a(Landroid/content/Context;Z)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p2

    const-string v0, "result"

    .line 95
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/SmpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    const-string v0, "p_ma_agree_date"

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SmpManager"

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMarketingAgreement failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/SmpResult;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/SmpResult;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "error_message"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Builder;

    const-string v1, "com.samsung.android.app.music.NOTICES"

    const-string v2, "com.samsung.android.app.music.MARKETING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Builder;->a()Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;

    move-result-object v0

    .line 74
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/SmpConfiguration;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;)V

    const p1, 0x7f02052e

    .line 75
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/SmpConfiguration;->a(I)V

    const-string p1, "SmpManager"

    const-string v0, "setSmpChannelInfo"

    .line 77
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    const-string v1, "p_my_music_mode"

    if-eqz p2, :cond_0

    const-string p2, "True"

    goto :goto_0

    :cond_0
    const-string p2, "False"

    :goto_0
    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    const-string v1, "p_discovery_lastused"

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/Smp;->a(Landroid/content/Context;)V

    return-void
.end method
