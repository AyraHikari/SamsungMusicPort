.class Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lio/reactivex/Observable;
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

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->c:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

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

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 68
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3e8008fd

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    const v5, 0x6d4a41b8

    if-eq v4, v5, :cond_2

    const v5, 0x6d81735d

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "FIND_GENRE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "FIND_CHART"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "FIND_YEAR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "action not defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    const-string v1, "year"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute. yearId is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2018"

    .line 111
    :cond_5
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iput-object v0, v2, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i:Ljava/lang/String;

    const-string v0, "Music_21_2"

    const-string v3, "Music_21_1"

    goto/16 :goto_6

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    const-string v1, "genre"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute. genreId is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "S039"

    .line 100
    :cond_6
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iput-object v0, v2, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->h:Ljava/lang/String;

    const-string v0, "Music_10_1"

    const-string v3, "Music_0_5"

    goto :goto_6

    .line 79
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    const-string v4, "chart"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    const-string v3, "Realtime"

    .line 82
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

    .line 87
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 84
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 90
    :goto_5
    iput-object v3, v2, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->g:Ljava/lang/String;

    const-string v0, "Music_9_3"

    const-string v3, "Music_9_2"

    .line 121
    :goto_6
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->c:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;)V

    .line 122
    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->c:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    .line 130
    invoke-static {v4, v0, v3, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

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

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
