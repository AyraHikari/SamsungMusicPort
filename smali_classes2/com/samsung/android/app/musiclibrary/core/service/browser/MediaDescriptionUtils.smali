.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils$MediaBrowseExtra;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaDescription;
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;
    .locals 1

    .line 25
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p2}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.music.browse.bt_folder_type_hint"

    .line 64
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaSessionMeta(JLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/media/MediaMetadata;
    .locals 3

    .line 31
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-gez p0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "android.media.metadata.TITLE"

    .line 38
    invoke-virtual {v0, p0, p3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p0, "android.media.metadata.ALBUM"

    .line 39
    invoke-virtual {v0, p0, p4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p0, "android.media.metadata.ARTIST"

    .line 40
    invoke-virtual {v0, p0, p5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p0, "android.media.metadata.ALBUM_ARTIST"

    .line 41
    invoke-virtual {v0, p0, p5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p0, "android.media.metadata.GENRE"

    .line 42
    invoke-virtual {v0, p0, p6}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string p0, "android.media.metadata.DURATION"

    .line 43
    invoke-virtual {v0, p0, p7, p8}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 44
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x17

    if-lt p0, p1, :cond_1

    const-string p0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    .line 45
    invoke-virtual {v0, p0, p9, p10}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string p0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    .line 46
    invoke-virtual {v0, p0, p11, p12}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    goto :goto_0

    :cond_1
    const-string p0, "android.media.metadata.DISC_NUMBER"

    .line 52
    invoke-virtual {v0, p0, p9, p10}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string p0, "android.media.metadata.TRACK_NUMBER"

    const-wide/16 p3, 0x1

    add-long/2addr p11, p3

    .line 55
    invoke-virtual {v0, p0, p11, p12}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    :goto_0
    const-string p0, "android.media.metadata.ALBUM_ART"

    .line 57
    invoke-virtual {v0, p0, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method
