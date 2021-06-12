.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

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

.field private static final PATH_DIVIDER:Ljava/lang/String; = "/"

.field private static final SUB_TAG:Ljava/lang/String; = "ResultAsyncTask: "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->doInBackground([Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    .line 44
    aget-object p1, p1, v0

    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->getPreDefinedBrowsableList(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    invoke-virtual {v1, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    const-string v0, "SMUSIC-SV-MediaBrowser"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultAsyncTask: Finished load item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-SV-MediaBrowser"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultAsyncTask: Error during load data in background. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 56
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    if-eqz v0, :cond_2

    .line 57
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->sendEmptyResult(Landroid/service/media/MediaBrowserService$Result;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final fromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method protected abstract getListInBackground(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end method

.method protected getPreDefinedBrowsableList(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
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

    .line 66
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SMUSIC-SV-MediaBrowser"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultAsyncTask: Error during load data in background and already sent! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
