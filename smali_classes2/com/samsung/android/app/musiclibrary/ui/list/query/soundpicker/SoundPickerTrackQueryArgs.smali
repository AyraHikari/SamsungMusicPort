.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 15
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;->projection:[Ljava/lang/String;

    const-string v1, "title != \'\' AND is_music=1"

    .line 17
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;->selection:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 23
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " COLLATE LOCALIZED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerTrackQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
