.class public Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MdrmContentUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 2

    .line 78
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, -0x26f8

    .line 83
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a:Ljava/lang/String;

    const-string v1, "syncForcibly : Drm sync forcibly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    .line 60
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 44
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$MilkDrm;->a(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const-string v0, ""

    .line 49
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a:Ljava/lang/String;

    const-string v0, "setUserInfo : KEY_MILK_DRM_SUBSCRIPTION_ORDERID set null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;Landroid/net/Uri;)Z
    .locals 7

    .line 92
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->b:[I

    .line 98
    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;[I)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 101
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parsingMdrmContent is fail. makeMdrmMetaContentValue return null - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz p2, :cond_1

    .line 107
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const-string p2, "source_id"

    .line 108
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string p2, "date_added"

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "DRM_CONTENT_KEY_TRACK_ID"

    .line 111
    invoke-virtual {v1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "DRM_CONTENT_KEY_EXPIRED_TIME"

    .line 112
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p1, "track_id"

    .line 113
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "validity"

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "DRM_CONTENT_KEY_ENCODED_LYRIC"

    .line 115
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p1, "DRM_CONTENT_KEY_ENCODED_ALBUMART"

    .line 116
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p1, "DRM_CONTENT_KEY_TRACK_ID"

    .line 117
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    .line 120
    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    .line 123
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsingMdrmContent : inserted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source_id="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "source_id"

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "date_modified"

    const-string v6, "date_modified"

    .line 131
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 133
    invoke-static {p0, v1, v2, p1, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    new-instance p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const-string v1, "track_id"

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "validity"

    .line 139
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 142
    invoke-static {p0, v2, v1, v5, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 145
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsingMdrmContent : trackid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   validity : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsingMdrmContent : update count "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 152
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 155
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    const-string v0, "DRM_CONTENT_KEY_EXPIRED_TIME"

    .line 156
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 157
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils$1;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils$1;->start()V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    const-string v0, "DRM_CONTENT_KEY_TRACK_ID"

    .line 170
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-object v0
.end method
