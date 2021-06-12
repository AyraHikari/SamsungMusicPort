.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->writeArtwork(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $use:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $waitCallback:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->$use:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->$waitCallback:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 2

    .line 52
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeArtwork onPublishArtwork "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->access$getSocket$p(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p3, 0x0

    check-cast p3, Ljava/lang/Throwable;

    :try_start_0
    move-object p4, p1

    check-cast p4, Ljava/io/OutputStream;

    .line 54
    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeSuccessHeader(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_0

    .line 55
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->$waitCallback:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->$waitCallback:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 60
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    const-string p3, "writeArtwork count down finished"

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->$use:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object p3, p2

    .line 53
    :try_start_1
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 3

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeArtwork onStartBackgroundRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;Ljava/lang/String;)V

    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1

    .line 47
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeArtwork onStillUsedArtwork "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;->$use:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p1
.end method
