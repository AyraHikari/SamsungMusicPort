.class public final Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const v0, 0x10001

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;->uri:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "number_of_tracks"

    const-string v4, "album_id"

    const-string v5, "cp_attrs"

    const-string v6, "sort_by"

    .line 16
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;->projection:[Ljava/lang/String;

    return-void
.end method
