.class Lcom/samsung/android/app/music/service/drm/MilkDrmController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/text/DateFormat;

.field private c:LMarkany/MILK/DRM/DRMManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->a:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->e:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->d:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->d:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->a:Landroid/content/Context;

    const-string p2, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->d:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->a:Landroid/content/Context;

    invoke-static {p1}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, LMarkany/MILK/DRM/DRMManager;->setDeviceKey(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, LMarkany/MILK/DRM/DRMManager;->setUserId(Ljava/lang/String;)V

    .line 50
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyyMMddhhmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->b:Ljava/text/DateFormat;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_0

    .line 165
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LMarkany/MILK/DRM/DRMManager;->openMDrm(Ljava/lang/String;Z)Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 176
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->e()I

    move-result v1

    if-lez v1, :cond_1

    .line 178
    new-array v0, v1, [B

    .line 179
    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->a([B)I

    .line 180
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v1, p1}, LMarkany/MILK/DRM/DRMManager;->closeMDrm(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)J
    .locals 4

    .line 189
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "MDRM-MilkDrmController"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidPeriod : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getPlayingUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "file_path"

    .line 146
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->a:Landroid/net/Uri;

    const-string v2, "close_session"

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLyrics()[B

    move-result-object p1

    return-object p1
.end method

.method public isServerAlive()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v0}, LMarkany/MILK/DRM/DRMManager;->isServerRunning()Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    const/16 v1, -0x2710

    if-nez v0, :cond_0

    const-string p1, "MDRM-MilkDrmController"

    const-string p2, "Open failed : mDrmManager is null"

    .line 85
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MDRM-MilkDrmController"

    const-string p2, "Open failed : filePath is empty"

    .line 90
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 91
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "MDRM-MilkDrmController"

    const-string p2, "Open failed : orderId is empty"

    .line 95
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x190

    .line 96
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "UTF-8"

    .line 99
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x190

    if-le v0, v2, :cond_3

    const-string p1, "MDRM-MilkDrmController"

    const-string p2, "Open failed : API_MAX_PATH error"

    .line 101
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x270f

    .line 102
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "MDRM-MilkDrmController"

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const-string v3, "SESSION"

    goto :goto_0

    :cond_4
    const-string v3, "FILE"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDRM-MilkDrmController"

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Order ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Device Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "file_path"

    .line 109
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_playing"

    .line 110
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    iget-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->a:Landroid/net/Uri;

    const-string v3, "ensure_license"

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p2, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "result_code"

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "track_id"

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "playing_uri"

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v0, "end_date"

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c(Ljava/lang/String;)J

    move-result-wide v8

    .line 125
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "MDRM-MilkDrmController"

    const-string p2, "CustomMeta is invalid"

    .line 126
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    return-object p1

    .line 130
    :cond_5
    new-instance p2, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;

    const/4 v3, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/app/music/service/drm/MilkDrmContent;-><init>(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JI)V

    const-string p1, "MDRM-MilkDrmController"

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_6
    const-string p2, "MDRM-MilkDrmController"

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v10}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    return-object p1
.end method

.method public restartServer()V
    .locals 3

    const-string v0, "MDRM-MilkDrmController"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartServer, current server state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v2}, LMarkany/MILK/DRM/DRMManager;->getDrmServerState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v0}, LMarkany/MILK/DRM/DRMManager;->restartServer()V

    return-void
.end method

.method public startServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "MDRM-MilkDrmController"

    const-string p2, "startServer"

    .line 55
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {p1}, LMarkany/MILK/DRM/DRMManager;->isDBOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {p1}, LMarkany/MILK/DRM/DRMManager;->runServer()Z

    goto :goto_0

    :cond_0
    const-string p1, "MDRM-MilkDrmController"

    const-string p2, "startServer : DRMManager DB is not opened"

    .line 60
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopServer()V
    .locals 2

    const-string v0, "MDRM-MilkDrmController"

    const-string v1, "stopServer"

    .line 66
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmController;->c:LMarkany/MILK/DRM/DRMManager;

    invoke-virtual {v0}, LMarkany/MILK/DRM/DRMManager;->delete()V

    return-void
.end method
