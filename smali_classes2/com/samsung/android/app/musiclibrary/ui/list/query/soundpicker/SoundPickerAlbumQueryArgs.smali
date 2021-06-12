.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    const-string v0, "content://media/external/audio/media/music_albums"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;->uri:Landroid/net/Uri;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "numsongs"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist_count"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "_id>0"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;->selection:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerAlbumQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
