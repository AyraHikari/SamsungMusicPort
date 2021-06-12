.class public final Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "PlayerControlExecutor"

.field private static final b:Z


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private e:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private f:Ljava/lang/String;

.field private g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

.field private final l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->h:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->i:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->j:Z

    .line 237
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->k:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 271
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;
    .locals 7

    .line 124
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Store"

    .line 131
    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string p1, "image_url_big"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnail_id=?"

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    iget-object v6, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    aput-object v6, v5, p1

    const/4 v6, 0x0

    .line 133
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 137
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "image_url_big"

    .line 138
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 132
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 141
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_3
    const-string p1, "Local"

    .line 143
    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    .line 144
    iget-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    .line 148
    :cond_4
    :goto_3
    iget-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5b5cca11

    if-eq v0, v1, :cond_2

    const v1, 0x24ff13

    if-eq v0, v1, :cond_1

    const v1, 0x261653

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "Next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "Restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string p1, "Music_18_2"

    return-object p1

    :pswitch_0
    const-string p1, "Music_18_8"

    return-object p1

    :pswitch_1
    const-string p1, "Music_18_6"

    return-object p1

    :pswitch_2
    const-string p1, "Music_18_4"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 154
    iget-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_0
    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->h:Z

    .line 158
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->i:Z

    .line 159
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->j:Z

    .line 160
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->f:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    .line 164
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    :cond_1
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Music_18_4"

    .line 183
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c()V

    .line 187
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    return-void
.end method

.method private a(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->j:Z

    .line 94
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-direct {v0, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p2, "actionType"

    const-string v2, "Play"

    .line 95
    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "searchType"

    const-string v2, "Music"

    .line 96
    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "resultCount"

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "disablePlayControl"

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 100
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object p1

    const-string p2, "trackData"

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 104
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/16 p2, 0x96

    if-eqz p1, :cond_5

    .line 105
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "is_preview_song"

    .line 107
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 108
    :goto_1
    sget-boolean p1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b:Z

    if-eqz p1, :cond_3

    .line 109
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sendResponse isTrialPlay: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "trialPlay"

    .line 111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "transientTime"

    if-eqz v1, :cond_4

    const/16 p2, 0x32

    .line 113
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 112
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_2

    :cond_5
    const-string p1, "trialPlay"

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "transientTime"

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    :goto_2
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->i:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Music_18_6"

    .line 192
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c()V

    .line 196
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->h:Z

    return p0
.end method

.method private c()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->h:Z

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 200
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Music_18_8"

    .line 202
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 228
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->seek(J)J

    .line 229
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Music_18_7"

    .line 230
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c()V

    .line 233
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c:Landroid/content/Context;

    const-string v0, "control"

    .line 79
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->f:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 82
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->k:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
