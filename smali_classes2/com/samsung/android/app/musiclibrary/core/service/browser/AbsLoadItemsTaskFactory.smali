.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaBrowser"

.field private static final SUB_TAG:Ljava/lang/String; = "ResultAsyncTask: "


# instance fields
.field private final mLoadDataFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->mLoadDataFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;

    return-void
.end method


# virtual methods
.method protected final obtainBrowsableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->mLoadDataFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->obtainBrowsableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object p1

    return-object p1
.end method

.method protected final obtainBrowserRootLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->mLoadDataFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->obtainBrowserRootLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object p1

    return-object p1
.end method

.method protected final obtainPlayableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->mLoadDataFactory:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;->obtainPlayableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public abstract runBrowsableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract runBrowsableRootResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract runPlayableResultTask(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected final sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTaskFactory;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SMUSIC-SV-MediaBrowser"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultAsyncTask: Error during load data in background and already sent! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
