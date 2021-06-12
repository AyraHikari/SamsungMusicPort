.class Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebViewDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/AboutPolicyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewDownloader"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebViewDownloader;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 250
    iget-object p5, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$WebViewDownloader;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/Context;

    if-nez p5, :cond_0

    .line 252
    invoke-static {}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDownloadStart() context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_0
    :try_start_0
    new-instance p6, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p6, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 257
    invoke-virtual {p6, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string v0, "User-Agent"

    .line 258
    invoke-virtual {p6, v0, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string p2, "Downloading file"

    .line 259
    invoke-virtual {p6, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 261
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\""

    const-string p4, ""

    .line 262
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p6, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 265
    invoke-static {}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Content : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", File name : "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p6}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p2, 0x1

    .line 267
    invoke-virtual {p6, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 269
    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p6, p2, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string p1, "download"

    .line 273
    invoke-virtual {p5, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 274
    invoke-virtual {p1, p6}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-static {}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onDownloadStart() error"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
