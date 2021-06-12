.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PlayRecommendExecutor"

    const-string v1, "execute() - UserInfo is updated."

    .line 93
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Landroid/content/Context;)Landroid/content/Context;

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "PlayRecommendExecutor"

    const-string v0, "execute() - Need Samsung Account"

    .line 102
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    const-string v2, "Music_26_1"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    :goto_0
    return-void
.end method
