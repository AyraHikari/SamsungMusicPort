.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayTpoExecutor$1;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
