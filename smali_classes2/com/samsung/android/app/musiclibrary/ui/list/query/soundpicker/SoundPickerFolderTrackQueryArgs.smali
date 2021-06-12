.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "_id"

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "_display_name"

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "artist"

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album_id"

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "is_secretbox"

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "0 AS is_secretbox"

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "sampling_rate"

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "bit_depth"

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mime_type"

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v0, :cond_2

    .line 32
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    const-string p2, "title != \'\'"

    goto :goto_1

    :cond_3
    const-string p2, "title != \'\' AND is_music=1"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bucket_id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;->selection:Ljava/lang/String;

    .line 39
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderTrackQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
