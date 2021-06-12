.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ArtistCardViewQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 8
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ArtistCardViewQueryArgs;->uri:Landroid/net/Uri;

    const-string p1, "_id AS artist_id"

    const-string v0, "artist"

    const-string v1, "album_id"

    const-string v2, "dummy"

    .line 10
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ArtistCardViewQueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "_id>0"

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ArtistCardViewQueryArgs;->selection:Ljava/lang/String;

    const-string p1, "recently_added DESC"

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/ArtistCardViewQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
