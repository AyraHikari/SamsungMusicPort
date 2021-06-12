.class Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$2;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$2;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v1, "Music_0_5"

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

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

    .line 137
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
