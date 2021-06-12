.class Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 87
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const-string v1, "PlayThisArtist"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceMetaReceived - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 96
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;J)J

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    .line 99
    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0b0429

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    invoke-direct {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;-><init>()V

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 106
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const/4 p1, 0x1

    .line 107
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Z)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearcherFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    .line 109
    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "PlayThisArtist"

    const-string p2, "artist name is empty or unknown"

    .line 100
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V

    return-void

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    const-wide/32 v2, 0x80002

    cmp-long p2, v0, v2

    if-nez p2, :cond_4

    .line 111
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    .line 112
    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtistId()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Artist;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayThisArtist"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play this artist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
