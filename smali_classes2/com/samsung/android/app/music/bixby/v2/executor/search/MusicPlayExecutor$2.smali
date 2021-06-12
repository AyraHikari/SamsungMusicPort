.class Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;


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

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;)V
    .locals 2

    const-string v0, "MusicPlay"

    const-string v1, "onPlayBehave complete."

    .line 194
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a()Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Ljava/util/List;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
