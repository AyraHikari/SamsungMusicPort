.class Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;


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

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 0

    .line 155
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$Utils;->isEmpty(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLyricLoadFinished() - Lyric is empty."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->c(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 p3, -0x1

    const-string p4, "Music_15_3"

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 158
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->c(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 p3, 0x0

    const-string p4, "Music_0_0"

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 161
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 163
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->d(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
