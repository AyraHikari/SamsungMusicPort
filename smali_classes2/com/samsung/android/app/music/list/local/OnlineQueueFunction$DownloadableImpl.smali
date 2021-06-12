.class Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/OnlineQueueFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadableImpl"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->a:Landroid/support/v4/app/Fragment;

    .line 266
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->b:Landroid/content/Context;

    .line 267
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;[Ljava/lang/String;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->a:Landroid/support/v4/app/Fragment;

    .line 284
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "@"

    .line 290
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 289
    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "SMUSIC-QueueFunction"

    const-string v0, "downloadInternal but Fragment is null or there is no value for executing."

    .line 285
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public v()V
    .locals 4

    .line 272
    new-instance v0, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl$1;-><init>(Lcom/samsung/android/app/music/list/local/OnlineQueueFunction$DownloadableImpl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;-><init>(Landroid/content/Context;[JLcom/samsung/android/app/music/util/task/SourceIdGetterTask$SourceIdResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 278
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/util/task/SourceIdGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
