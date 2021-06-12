.class public Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor<",
        "Lcom/samsung/android/app/music/model/base/AlbumModel;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "album_art"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "album_art_single"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "source_album_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;Z)V"
        }
    .end annotation

    const/16 v0, 0x190

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;-><init>(Ljava/util/List;ZI)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/base/AlbumModel;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/model/base/AlbumModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getArtistList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/model/base/AlbumModel;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/model/base/AlbumModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "album_art_single"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "source_album_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_2
    const-string p2, "album_art"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_3
    const-string p2, "album"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_4
    const-string p2, "_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_5
    const-string p2, "artist"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getImgList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a(Lcom/samsung/android/app/music/model/base/AlbumModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/AlbumModel;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x53fd20b9 -> :sswitch_5
        0x171ba -> :sswitch_4
        0x5897e6f -> :sswitch_3
        0xee35893 -> :sswitch_2
        0x11da608f -> :sswitch_1
        0x751eed74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    check-cast p1, Lcom/samsung/android/app/music/model/base/AlbumModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumModelCursor;->a(Lcom/samsung/android/app/music/model/base/AlbumModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
