.class Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 8

    .line 137
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v3, v0

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    .line 140
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to get lyrics - id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v2

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->b(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    move-result-object v6

    .line 142
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v7

    .line 141
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->c(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v0, -0x1

    const-string v1, "Music_15_6"

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 145
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->d(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    :goto_0
    return-void
.end method
