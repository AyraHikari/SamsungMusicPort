.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

.field final synthetic d:J

.field final synthetic e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;J)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iput-wide p5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;

    .line 230
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "SV"

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueue_DownloadableDrmImpl | onComplete() - Scan consumeTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->d:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 240
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result p1

    const-string v1, "SV"

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadableDrmImpl |  parsingMdrmContent : drm song parsing fail["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x67

    if-eq p1, v1, :cond_2

    const/16 v1, -0x65

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->b:Landroid/os/Handler;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 261
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object v1

    .line 260
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->b:Landroid/os/Handler;

    const/16 v1, 0x2710

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 247
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object v1

    .line 246
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 252
    :cond_1
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->b:Landroid/os/Handler;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 256
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object v1

    .line 255
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->a:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "SV"

    const-string v1, "DownloadQueue_DownloadableDrmImpl | onComplete() - Fail to delete file on user storage."

    .line 265
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl$3;->e:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableDrmImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/provider/sync/MdrmContentUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x192
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
