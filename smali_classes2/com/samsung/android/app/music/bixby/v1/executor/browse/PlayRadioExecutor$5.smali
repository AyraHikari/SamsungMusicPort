.class Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$5;->b:Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$5;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$5;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/PlayRadioExecutor$5;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method
