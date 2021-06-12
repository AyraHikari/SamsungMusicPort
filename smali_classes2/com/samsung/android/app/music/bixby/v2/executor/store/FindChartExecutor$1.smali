.class Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 0

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$1;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
