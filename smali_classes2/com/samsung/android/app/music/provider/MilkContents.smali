.class public Lcom/samsung/android/app/music/provider/MilkContents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MilkContents$HiddenTrack;,
        Lcom/samsung/android/app/music/provider/MilkContents$LatestUpdateDate;,
        Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;,
        Lcom/samsung/android/app/music/provider/MilkContents$OnlineChartTracks;,
        Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;,
        Lcom/samsung/android/app/music/provider/MilkContents$Artists;,
        Lcom/samsung/android/app/music/provider/MilkContents$Albums;,
        Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;,
        Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;,
        Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;,
        Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;,
        Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;,
        Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;,
        Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;,
        Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;,
        Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;,
        Lcom/samsung/android/app/music/provider/MilkContents$Playlists;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/MilkContents;->b(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 6

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "notifyPath"

    .line 33
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/net/Uri;

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.sec.android.app.music/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static varargs b(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 46
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 47
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "notifyPath"

    .line 48
    invoke-virtual {p0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
