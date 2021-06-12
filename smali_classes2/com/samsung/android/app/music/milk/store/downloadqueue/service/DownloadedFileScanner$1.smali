.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;

.field final synthetic d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadedFileScanner | onMediaScannerConnected()"

    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "SV"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadedFileScanner | onScanCompleted() - path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$1;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, p1, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadedFileScanner$OnDownloadedFileScanListener;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
