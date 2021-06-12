.class Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)V

    return-void

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)V

    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InsertSongDownloadBasketExecutor"

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute() - sourceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;)Lio/reactivex/Observable;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;)V

    invoke-static {p2, p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;)V

    .line 151
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 156
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
