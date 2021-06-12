.class Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6

    .line 145
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceMetaReceived()"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v0, -0x1

    const-string v1, "Music_7_2"

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    .line 150
    :cond_0
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 152
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    const-string p2, "trackData"

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->f(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;)V

    .line 157
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    const-string p2, "transientTime"

    const/16 v0, 0x96

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)[J

    move-result-object p1

    if-eqz p1, :cond_3

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)[J

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x65

    const/16 v3, -0x64

    const/4 v4, -0x1

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 194
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->d(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;)I

    .line 198
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
