.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerArtistTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "_id"

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "track"

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "title"

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album_id"

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album"

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "artist"

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "duration"

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "is_secretbox"

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "0 AS is_secretbox"

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "sampling_rate"

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "bit_depth"

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mime_type"

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "year_name"

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerArtistTrackQueryArgs;->projection:[Ljava/lang/String;

    const-string p1, "title != \'\' AND is_music=1 AND artist_id=?"

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerArtistTrackQueryArgs;->selection:Ljava/lang/String;

    const-string p1, "album COLLATE LOCALIZED , track"

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerArtistTrackQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
