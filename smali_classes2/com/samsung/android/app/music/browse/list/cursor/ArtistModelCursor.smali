.class public Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor<",
        "Lcom/samsung/android/app/music/model/base/ArtistModel;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "artist_url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "source_artist_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "section"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;-><init>(Ljava/util/List;Z)V

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->c(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 2
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_1
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_2
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    return v1

    :pswitch_3
    const p1, 0x7f0b0235

    return p1

    :pswitch_4
    const p1, 0x7f0b0234

    return p1

    :pswitch_5
    const p1, 0x7f0b0233

    return p1

    :pswitch_data_0
    .packed-switch 0x601
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;)V"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/ArtistModel;

    .line 52
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getSection()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->b(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 54
    new-instance v1, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;-><init>(ILcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$1;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 58
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 62
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/model/base/ArtistModel;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/base/ArtistModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "section"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "source_artist_id"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "artist_url"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "artist"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p3, -0x1

    :goto_1
    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;

    iget p1, p1, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_4
    instance-of p3, p1, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor$RelatedArtist;

    if-eqz p3, :cond_1

    rsub-int p1, p2, -0x3ec

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->a(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x53fd20b9 -> :sswitch_4
        0x171ba -> :sswitch_3
        0x2590d877 -> :sswitch_2
        0x3cccb5ef -> :sswitch_1
        0x756f7ee5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 13
    check-cast p1, Lcom/samsung/android/app/music/model/base/ArtistModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/ArtistModelCursor;->a(Lcom/samsung/android/app/music/model/base/ArtistModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
