.class Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "MusicPlay"

    const-string v1, "MilkService onUserInfoChanged()"

    .line 305
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v1, "trialPlay"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v1, "transientTime"

    if-eqz p1, :cond_2

    const/16 p1, 0x32

    goto :goto_2

    :cond_2
    const/16 p1, 0x96

    .line 309
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 308
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
