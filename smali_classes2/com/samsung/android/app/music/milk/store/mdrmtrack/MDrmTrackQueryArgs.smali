.class public Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->a(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->a()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;->a()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->uri:Landroid/net/Uri;

    const-string p1, "validity DESC "

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->orderBy:Ljava/lang/String;

    const-string p1, "MDrmTrackQueryArgs"

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MDrmTrackQueryArgs selection : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ( validity<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "validity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">0 )"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    :goto_0
    const-string p1, "MDrmTrackQueryArgs"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MDrmTrackQueryArgs selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->a()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;->a()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->uri:Landroid/net/Uri;

    const-string p1, "validity DESC "

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method

.method private a()[Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "audio_id"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "track_id"

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "title"

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist"

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "_data"

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
