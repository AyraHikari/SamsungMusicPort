.class Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaySongByDataExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
