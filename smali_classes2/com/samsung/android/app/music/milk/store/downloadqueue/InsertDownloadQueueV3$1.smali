.class Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "InsertDownloadQueueV3"

    const-string v1, "onNext"

    .line 141
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    .line 149
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$InsertQueueFailException;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$InsertQueueFailException;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;->onError(Ljava/lang/Throwable;)V

    const-string p1, "InsertDownloadQueueV3"

    const-string v0, "there is no items to start downloading or activity is null"

    .line 146
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "InsertDownloadQueueV3"

    const-string v1, "onComplete"

    .line 127
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "InsertDownloadQueueV3"

    const-string v0, "onError"

    .line 133
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b022d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
