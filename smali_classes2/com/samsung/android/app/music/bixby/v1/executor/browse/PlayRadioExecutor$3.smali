.class Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;->b:Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;
    .locals 3

    .line 102
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "Subscription"

    const-string v1, "Valid"

    const-string v2, "yes"

    .line 103
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    :goto_0
    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$3;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    move-result-object p1

    return-object p1
.end method
