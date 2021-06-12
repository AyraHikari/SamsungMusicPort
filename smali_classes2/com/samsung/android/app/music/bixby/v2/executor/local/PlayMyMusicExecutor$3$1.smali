.class Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 161
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 162
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)I

    move-result v0

    const v2, 0x80002

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object v2, v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v2

    const-string v3, "trialPlay"

    .line 165
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 164
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object v2, v2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v2

    const-string v3, "transientTime"

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto :goto_1

    :cond_1
    const/16 v0, 0x96

    .line 167
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 166
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->b()V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 172
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)I

    move-result p1

    const v0, 0x80001

    if-ne p1, v0, :cond_2

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v2, "Music_0_11"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_2

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)[J

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x65

    const/16 v3, -0x64

    const/4 v4, -0x1

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 182
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->d(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;)I

    :goto_2
    return-void
.end method
