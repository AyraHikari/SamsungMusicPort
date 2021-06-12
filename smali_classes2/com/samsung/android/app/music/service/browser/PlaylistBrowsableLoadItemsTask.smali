.class Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableLoadItemsTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->fromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;

    move-result-object p1

    .line 42
    new-instance p2, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    return-object p2
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v0, v3

    const-string v7, "name"

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-object v6, p0

    .line 29
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 8
        -0xe
        -0xc
        -0xd
        -0xb
    .end array-data
.end method


# virtual methods
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

    .line 20
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/browser/PlaylistBrowsableLoadItemsTask;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
