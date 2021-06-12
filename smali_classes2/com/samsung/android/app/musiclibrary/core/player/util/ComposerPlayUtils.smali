.class public final Lcom/samsung/android/app/musiclibrary/core/player/util/ComposerPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSongList(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 7

    .line 31
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const-string p1, "_id"

    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 34
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerTrackQueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    .line 35
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 38
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/ComposerPlayUtils;->playInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static playInternal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/ComposerPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 22
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method
