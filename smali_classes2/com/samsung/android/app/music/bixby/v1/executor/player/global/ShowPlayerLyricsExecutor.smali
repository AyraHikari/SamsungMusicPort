.class public final Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "ShowPlayerLyricsExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private final e:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->e:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->c:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->c:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 8
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SHOW_LYRICS"

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 46
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/MediaDataUtils;->b()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v3, v0

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to get lyrics - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->e:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    .line 51
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
