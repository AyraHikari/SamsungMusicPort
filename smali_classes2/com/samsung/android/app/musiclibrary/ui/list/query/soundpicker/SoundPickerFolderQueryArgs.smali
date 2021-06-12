.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    if-eqz p2, :cond_0

    .line 22
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->c:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string p2, "content://media/external/audio/media/music_folders"

    .line 24
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;->uri:Landroid/net/Uri;

    .line 27
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "_id"

    .line 28
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "bucket_id"

    .line 29
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, " CASE WHEN bucket_id=? THEN ?      WHEN bucket_id=? THEN ?      ELSE bucket_display_name END AS bucket_display_name"

    .line 30
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "_data"

    .line 31
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album_id"

    .line 32
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "is_secretbox"

    .line 34
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "0 AS is_secretbox"

    .line 36
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    if-eqz v0, :cond_2

    .line 39
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;->projection:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;->selection:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " COLLATE LOCALIZED "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerFolderQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    .line 49
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->internal_storage_kt:I

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 51
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    sget p0, Lcom/samsung/android/app/musiclibrary/R$string;->sd_card:I

    .line 52
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v1, v0

    return-object v1
.end method
