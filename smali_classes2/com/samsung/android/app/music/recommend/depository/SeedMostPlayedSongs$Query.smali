.class Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs$Query;
.super Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Query"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const-wide/16 v0, -0xc

    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/util/ListUtils;->b(Landroid/content/Context;J)I

    move-result v0

    const/4 v1, -0x1

    .line 103
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs$Query;->uri:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/MusicContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs$Query;->uri:Landroid/net/Uri;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object p2, p0, Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs$Query;->projection:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p2, "album"

    .line 110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "album"

    .line 111
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedMostPlayedSongs$Query;->projection:[Ljava/lang/String;

    return-void
.end method
