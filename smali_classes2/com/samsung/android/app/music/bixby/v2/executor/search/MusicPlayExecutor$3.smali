.class Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    const-string v0, "MusicPlay"

    const-string v1, "onServiceMetaReceived"

    .line 205
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p1, "MusicPlay"

    const-string p2, "Queue is empty."

    .line 207
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    const-string p2, "Music_1_1"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MusicPlay"

    const-string p2, "MusicMetadata is empty."

    .line 214
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    const-string p2, "Music_1_1"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "MusicPlay"

    const-string p2, "it\'s advertisement. can\'t play song."

    .line 220
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    const-string p2, "Music_1_1"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_2
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->seek(J)J

    .line 225
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 226
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    const-string v0, "Music_1_2"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->f(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V

    :goto_0
    return-void
.end method
