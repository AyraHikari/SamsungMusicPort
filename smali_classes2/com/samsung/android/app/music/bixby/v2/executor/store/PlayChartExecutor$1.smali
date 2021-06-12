.class Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

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

    .line 142
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$1;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
