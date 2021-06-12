.class public Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor<",
        "Lcom/samsung/android/app/music/model/base/PlayListModel;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "album_art"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "source_playlist_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;Z)V"
        }
    .end annotation

    const/16 v0, 0x190

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;-><init>(Ljava/util/List;ZI)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/model/base/PlayListModel;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/base/PlayListModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x171ba

    if-eq p2, v0, :cond_3

    const v0, 0x337a8b

    if-eq p2, v0, :cond_2

    const v0, 0xee35893

    if-eq p2, v0, :cond_1

    const v0, 0x35313c84

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "source_playlist_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x3

    goto :goto_1

    :cond_1
    const-string p2, "album_art"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    const-string p2, "name"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const-string p2, "_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getImageList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;->a(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 10
    check-cast p1, Lcom/samsung/android/app/music/model/base/PlayListModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/PlaylistModelCursor;->a(Lcom/samsung/android/app/music/model/base/PlayListModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
