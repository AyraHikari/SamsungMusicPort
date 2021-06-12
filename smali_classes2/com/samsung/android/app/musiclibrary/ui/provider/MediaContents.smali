.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$OnlineSyncInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$MostPlayedRank;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$PlaylistServerResponseInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtistColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$ArtistColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AudioColumns;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x18ed7

    if-ge v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "raw_sql/main/"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "audio/media/raw_sql/"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/audio/media/raw_sql/"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b:Landroid/net/Uri;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 65
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b:Landroid/net/Uri;

    goto :goto_0

    .line 62
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a:Landroid/net/Uri;

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "notifyChange"

    const-string v1, "disable"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "limit"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "groupBy"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(cp_attrs & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/net/Uri;)Z
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "disable"

    const-string v1, "notifyChange"

    .line 138
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/net/Uri;)I
    .locals 1

    const-string v0, "param_cp_attrs"

    .line 156
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 188
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "delete_before_insert"

    const-string v1, "delete"

    .line 189
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_0

    const-string v0, "delete_where"

    .line 191
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " folder_hide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 164
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "syncFlow"

    const-string v1, "no_action"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/net/Uri;)Z
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "no_action"

    const-string v1, "syncFlow"

    .line 168
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->c(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "limit"

    .line 197
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "pre_insert"

    const-string v1, "pre_insert"

    .line 203
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
