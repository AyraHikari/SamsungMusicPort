.class public Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;


# static fields
.field private static final a:Ljava/lang/String; = "DeepLinkUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 56
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->getSchemeType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 64
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 79
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MAIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a:Ljava/lang/String;

    const-string v1, "launchMainActivity - Broadcast received, but uri is null."

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    const-class p1, Lcom/samsung/android/app/music/ActivityLauncher;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 87
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchMainActivity - Broadcast received, but cannot run in background : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .line 96
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->isActivated()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 101
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p0

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadio - dataCenter activated : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const-string v0, "music_service_pref"

    const/4 v2, 0x4

    .line 107
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "queue_type"

    .line 109
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 111
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadio - dataCenter not activated : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static b(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->getHostType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "@"

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v2, 0x0

    .line 134
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is local? : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static c(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ACTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->getActionType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object p0

    return-object p0
.end method
