.class public Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "_id"

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "audio_id"

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "track_id"

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "title"

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "artist"

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "order_date_local"

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "download_state"

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "track_type"

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const-string p2, "( track_type = 0) "

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->b()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->uri:Landroid/net/Uri;

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_DRM:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    const-string p2, "( track_type = 1) "

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->uri:Landroid/net/Uri;

    goto :goto_0

    .line 39
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    :goto_0
    const-string p2, "PurchasedTrackQueryArgs"

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PurchasedTrackQueryArgs selection : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "order_date_long DESC, _id ASC "

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
