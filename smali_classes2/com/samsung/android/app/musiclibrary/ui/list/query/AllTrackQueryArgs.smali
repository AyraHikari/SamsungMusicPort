.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 15
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "title"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "is_secretbox"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "drm_type"

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "sampling_rate"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "bit_depth"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mime_type"

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v1, :cond_1

    .line 33
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;->projection:[Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "date_modified DESC"

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;->orderBy:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method
