.class public final Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 14
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;->uri:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "album"

    const-string v3, "artist"

    const-string v4, "music_album_artist"

    const-string v5, "numsongs"

    const-string v6, "artist_count"

    .line 15
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;->projection:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 21
    sget-boolean p2, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz p2, :cond_0

    .line 22
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "projection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;->projection:[Ljava/lang/String;

    :cond_0
    const-string p2, "_id >0"

    .line 24
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;->selection:Ljava/lang/String;

    const/4 p2, 0x0

    .line 25
    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  COLLATE LOCALIZED "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  COLLATE LOCALIZED , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "year_name DESC, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x2

    :cond_0
    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>(IZ)V

    return-void
.end method
