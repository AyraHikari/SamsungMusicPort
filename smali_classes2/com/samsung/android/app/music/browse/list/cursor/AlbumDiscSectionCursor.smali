.class public Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;-><init>(Ljava/util/List;Z)V

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;->c(Ljava/util/List;)V

    return-void
.end method

.method private static a(II)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)V"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;->d(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, -0x1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 53
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getDiskNo()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getDiskNo()I

    move-result v1

    .line 55
    new-instance v3, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;-><init>(ILcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private d(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)I"
        }
    .end annotation

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 70
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getDiskNo()I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getDiskNo()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/model/base/TrackModel;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/samsung/android/app/music/model/base/TrackModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    instance-of v0, p1, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;

    if-eqz v0, :cond_3

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;

    const/4 v1, -0x1

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x171ba

    if-eq v2, v3, :cond_1

    const v3, 0x639f00ab

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "disc_no"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "_id"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 41
    :pswitch_0
    iget p1, v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_1
    iget p1, v0, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor$Disc;->a:I

    rsub-int p1, p1, -0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/BrowseTrackCursor;->a(Lcom/samsung/android/app/music/model/base/TrackModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/cursor/AlbumDiscSectionCursor;->a(Lcom/samsung/android/app/music/model/base/TrackModel;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
