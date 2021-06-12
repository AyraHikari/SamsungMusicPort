.class Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 70
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3a96710d

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    const v5, -0x3a5f3f68

    if-eq v4, v5, :cond_2

    const v5, 0x37f49668

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "PLAY_YEAR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "PLAY_GENRE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "PLAY_CHART"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "action not defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    const-string v1, "year"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "PlayChartExecutor"

    const-string v1, "execute. genreId is null!!"

    .line 110
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2018"

    .line 113
    :cond_5
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iput-object v0, v2, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i:Ljava/lang/String;

    const-string v0, "Music_5_3"

    const-string v3, "Music_5_2"

    goto :goto_6

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    const-string v1, "genre"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "PlayChartExecutor"

    const-string v1, "execute. genreId is null!!"

    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "S039"

    .line 102
    :cond_6
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    iput-object v0, v2, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->h:Ljava/lang/String;

    const-string v0, "Music_4_3"

    const-string v3, "Music_4_2"

    goto :goto_6

    .line 81
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    const-string v4, "chart"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    const-string v3, "Realtime"

    .line 84
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x65cb935f

    if-eq v4, v5, :cond_9

    const v5, 0x3ebedf9

    if-eq v4, v5, :cond_8

    goto :goto_3

    :cond_8
    const-string v4, "Daily"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    const-string v4, "Weekly"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v1, 0x1

    :cond_a
    :goto_3
    packed-switch v1, :pswitch_data_1

    :goto_4
    move-object v1, v0

    goto :goto_5

    .line 89
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 86
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 92
    :goto_5
    iput-object v3, v2, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->g:Ljava/lang/String;

    const-string v0, "Music_3_2"

    const-string v3, "Music_3_1"

    .line 122
    :goto_6
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 132
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->c:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;->b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;

    invoke-direct {v4, p0, v0, v3, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)V

    .line 133
    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
