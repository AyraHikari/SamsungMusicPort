.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadData"
.end annotation


# instance fields
.field public final args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

.field public final context:Landroid/content/Context;

.field final folderType:I

.field public final mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

.field public final result:Landroid/service/media/MediaBrowserService$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    .line 94
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 95
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->folderType:I

    .line 96
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    .line 97
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            "Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    .line 104
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->folderType:I

    .line 106
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    .line 107
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->mediaItem:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;

    return-void
.end method
