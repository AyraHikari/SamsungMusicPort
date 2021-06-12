.class final Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/TrackModel;)Landroid/content/ContentValues;
    .locals 3

    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "track_id"

    .line 238
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rank_chg"

    .line 239
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getRankingChg()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "rank_badge"

    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getRankingBadge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album_art_url"

    .line 241
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 234
    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$4;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
