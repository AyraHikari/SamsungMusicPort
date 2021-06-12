.class Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist$Query;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Query"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    const/4 p1, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist$Query;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist$Query;->uri:Landroid/net/Uri;

    return-void
.end method
