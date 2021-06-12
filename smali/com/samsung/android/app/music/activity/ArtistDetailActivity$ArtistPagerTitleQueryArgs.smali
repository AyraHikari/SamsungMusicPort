.class final Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistPagerTitleQueryArgs"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 285
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->uri:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "number_of_albums"

    const-string v2, "number_of_tracks"

    .line 286
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "_id =?"

    .line 291
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->selection:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 295
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object p1, v0

    .line 292
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;->selectionArgs:[Ljava/lang/String;

    return-void
.end method
