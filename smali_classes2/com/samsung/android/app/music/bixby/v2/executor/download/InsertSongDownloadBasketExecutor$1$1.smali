.class Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "InsertSongDownloadBasketExecutor"

    const-string v1, "onComplete"

    .line 159
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    const-string v0, "Music_0_5"

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;ILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
