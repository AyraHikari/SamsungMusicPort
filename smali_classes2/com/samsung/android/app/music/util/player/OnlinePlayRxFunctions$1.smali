.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyPlayUtils;->a(Ljava/lang/Throwable;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method
