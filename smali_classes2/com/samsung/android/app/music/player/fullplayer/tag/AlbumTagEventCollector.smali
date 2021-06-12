.class final Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AlbumTagEventCollector"


# instance fields
.field private final b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

.field private final c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

.field private final d:Landroid/os/Handler$Callback;

.field private final e:Landroid/os/Handler;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:Landroid/net/Uri;

.field private l:Landroid/net/Uri;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->d:Landroid/os/Handler$Callback;

    .line 75
    new-instance v0, Landroid/os/Handler;

    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->d:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 97
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->j:J

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_0

    const-string p3, ""

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    const-string p3, " | "

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2
    return-object p3
.end method

.method private a(I)V
    .locals 1

    .line 240
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->m:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->m:I

    return-void
.end method

.method private a(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->j:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iput-object p3, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->c:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 221
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    if-nez p1, :cond_2

    .line 222
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f:Z

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->j:J

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object p2, p2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 224
    invoke-static {p2}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object p2

    .line 223
    invoke-interface {p1, v0, v1, p3, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->h:Z

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x4

    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(I)V

    const-string p1, "SMUSIC-AlbumTagUpdater"

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$Utils;->isEmpty(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "Empty "

    goto :goto_1

    :cond_3
    const-string p3, ""

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Lyrics is collected ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->d()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iput-object p1, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 169
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 173
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->h:Z

    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(I)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->k:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->k:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->l:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 180
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(I)V

    :cond_2
    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Metadata is collected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iput-object p1, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 191
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    if-nez v0, :cond_1

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->h:Z

    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 204
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(I)V

    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Content data is collected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f()V

    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 244
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->m:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()V
    .locals 3

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->i:J

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    .line 140
    iput v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->m:I

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->h:Z

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onBeginCollected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;->a()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    if-eqz v0, :cond_1

    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - onEndCollected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->h:Z

    .line 159
    :cond_1
    :goto_0
    iput v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->m:I

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Collecting time takes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    .line 252
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b(I)Z

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xd

    .line 254
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b(I)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 4

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->d()V

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e:Landroid/os/Handler;

    .line 264
    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "META"

    const/4 v2, 0x1

    .line 314
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "ALBUM_SIZE"

    const/16 v2, 0x8

    .line 315
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "CONTENT_DATA"

    const/4 v2, 0x2

    .line 316
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "Lyrics"

    const/4 v2, 0x4

    .line 317
    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - start() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f:Z

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->h:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - reset() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->f:Z

    const-wide/16 v1, -0x1

    .line 128
    iput-wide v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->j:J

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->l:Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->k:Landroid/net/Uri;

    .line 130
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->m:I

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6

    .line 271
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    .line 272
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    .line 277
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v4

    long-to-int v4, v4

    .line 280
    invoke-static {v4}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->k:Landroid/net/Uri;

    .line 282
    iput-wide v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->j:J

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iput-object v1, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->c:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->c()V

    .line 286
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 287
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v5

    move v1, v4

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->g:Z

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
