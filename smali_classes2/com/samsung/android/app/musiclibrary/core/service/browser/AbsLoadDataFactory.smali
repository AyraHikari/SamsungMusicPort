.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;
    .locals 3

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;-><init>()V

    const/4 v1, 0x0

    .line 24
    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->category:Ljava/lang/String;

    .line 25
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 26
    aget-object p0, p0, v2

    iput-object p0, v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadDataFactory$BrowseId;->id:Ljava/lang/String;

    :cond_0
    return-object v0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Abnormal media id for browsing!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract obtainBrowsableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
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
.end method

.method protected abstract obtainBrowserRootLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
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
.end method

.method protected abstract obtainPlayableLoadData(Landroid/content/Context;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
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
.end method
