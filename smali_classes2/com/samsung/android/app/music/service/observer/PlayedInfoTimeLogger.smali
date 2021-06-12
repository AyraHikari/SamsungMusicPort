.class public final Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;
.super Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;,
        Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;,
        Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

.field private final c:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

.field private final d:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 41
    new-instance p1, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;-><init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    .line 43
    new-instance p1, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$RecentlyPlayed;-><init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    .line 45
    new-instance p1, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$MostPlayed;-><init>(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->d:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p0
.end method

.method private a(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 3

    .line 94
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, v0, p4, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Landroid/content/Context;JLandroid/content/ContentValues;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 2

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x20004

    if-eq v0, v1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "com.samsung.android.app.music.core.state.QUEUE_COMPLETED"

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a(Landroid/content/Context;J)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a()V

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0xbb8

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    const-wide/16 v0, 0x7530

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->d:Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    :cond_2
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->b:Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/PlayedInfoTimeLogger$Trigger;->a(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method
