.class public final Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a()V

    return-void
.end method
