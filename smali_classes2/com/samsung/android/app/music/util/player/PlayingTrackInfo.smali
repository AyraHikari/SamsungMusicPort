.class public Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/model/OnlineTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/model/OnlineTrack;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 33
    iput-object p3, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->e:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->a:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PlayingTrackInfo"

    const-string v1, "isPreview. content is null!!"

    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "is_preview_song"

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/model/OnlineTrack;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->e:Ljava/util/List;

    return-object v0
.end method
