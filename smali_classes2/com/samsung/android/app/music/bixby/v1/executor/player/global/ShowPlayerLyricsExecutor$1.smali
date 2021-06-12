.class Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 1

    .line 61
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$Utils;->isEmpty(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 63
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->a()Ljava/lang/String;

    move-result-object p2

    const-string p4, "onLyricLoadFinished - Lyric is empty."

    invoke-static {p2, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Lyrics"

    const-string p4, "Exist"

    const-string v0, "no"

    .line 64
    invoke-virtual {p1, p2, p4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->a()Ljava/lang/String;

    move-result-object p2

    const-string p4, "onLyricLoadFinished"

    invoke-static {p2, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    .line 69
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_1

    const-string p2, "SucceedShowLyrics"

    const-string p4, "Valid"

    const-string v0, "yes"

    .line 70
    invoke-virtual {p1, p2, p4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "Lyrics"

    const-string p4, "Exist"

    const-string v0, "yes"

    .line 73
    invoke-virtual {p1, p2, p4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p2

    new-instance p4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {p4, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p2, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method
