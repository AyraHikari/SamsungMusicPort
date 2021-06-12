.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/search/fancy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;->uri:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "mime_type"

    const-string v3, "artist"

    const-string v4, "album_id"

    const-string v5, "album"

    const-string v6, "title"

    const-string v7, "data1"

    const-string v8, "data2"

    .line 17
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;->selection:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string p1, "album COLLATE LOCALIZED , album_id, track"

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
