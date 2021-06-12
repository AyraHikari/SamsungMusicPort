.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$TextKey;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$LongKey;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$BitmapKey;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;
    }
.end annotation


# static fields
.field private static final BITMAP_KEY:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

.field private static final DEBUG:Z = false

.field public static final EMPTY_MEDIA_ID:Ljava/lang/String; = "empty song"

.field private static final Empty$delegate:Lkotlin/Lazy;

.field private static final EmptyMediaMetadata$delegate:Lkotlin/Lazy;

.field public static final INVALID_ID:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-MusicMeta"

.field private static final LONG_KEY:[Ljava/lang/String;

.field private static final MAJOR_META:[Ljava/lang/String;

.field public static final METADATA_KEY_ALBUM_ID:Ljava/lang/String; = "com.samsung.android.app.music.metadata.ALBUM_ID"

.field public static final METADATA_KEY_ARTIST_ID:Ljava/lang/String; = "com.samsung.android.app.music.metadata.ARTIST_ID"

.field public static final METADATA_KEY_ATTRIBUTE:Ljava/lang/String; = "com.samsung.android.app.music.metadata.ATTRIBUTE"

.field public static final METADATA_KEY_CHANNEL_ID:Ljava/lang/String; = "com.samsung.android.app.music.metadata.CHANNEL_ID"

.field public static final METADATA_KEY_CP_ATTRS:Ljava/lang/String; = "com.samsung.android.app.music.metadata.CP_ATTRS"

.field public static final METADATA_KEY_EXTRA_MUSIC_METADATA:Ljava/lang/String; = "com.google.android.music.mediasession.music_metadata"

.field public static final METADATA_KEY_EXTRA_MUSIC_METADATA_OTHERS:Ljava/lang/String; = "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

.field public static final METADATA_KEY_PLAYING_URI:Ljava/lang/String; = "com.samsung.android.app.music.metadata.PLAYING_URI"

.field public static final METADATA_KEY_PLAY_DIRECTION:Ljava/lang/String; = "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

.field public static final METADATA_KEY_QUEUE_POSITION:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

.field public static final METADATA_KEY_QUEUE_SIZE:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

.field public static final METADATA_KEY_SOUND_QUALITY_DATA:Ljava/lang/String; = "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

.field public static final METADATA_KEY_SOURCE_ID:Ljava/lang/String; = "com.samsung.android.app.music.metadata.SOURCE_ID"

.field private static final TEXT_KEY:[Ljava/lang/String;


# instance fields
.field private final metadata:Landroid/media/MediaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    .line 371
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$Empty$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Empty$delegate:Lkotlin/Lazy;

    const-string v1, "android.media.metadata.TITLE"

    const-string v2, "android.media.metadata.ARTIST"

    const-string v3, "android.media.metadata.ALBUM"

    const-string v4, "android.media.metadata.GENRE"

    const-string v5, "android.media.metadata.ALBUM_ARTIST"

    const-string v6, "android.media.metadata.MEDIA_ID"

    const-string v7, "com.samsung.android.app.music.metadata.SOURCE_ID"

    const-string v8, "com.samsung.android.app.music.metadata.PLAYING_URI"

    const-string v9, "android.media.metadata.COMPILATION"

    const-string v10, "com.samsung.android.app.music.metadata.CHANNEL_ID"

    .line 453
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:[Ljava/lang/String;

    const-string v1, "android.media.metadata.DURATION"

    const-string v2, "com.samsung.android.app.music.metadata.ALBUM_ID"

    const-string v3, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    const-string v5, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    const-string v6, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    const-string v7, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    const-string v8, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    .line 465
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:[Ljava/lang/String;

    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 475
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->BITMAP_KEY:[Ljava/lang/String;

    const-string v1, "android.media.metadata.TITLE"

    const-string v2, "android.media.metadata.ARTIST"

    const-string v3, "android.media.metadata.ALBUM"

    const-string v4, "android.media.metadata.GENRE"

    const-string v5, "android.media.metadata.ALBUM_ARTIST"

    const-string v6, "android.media.metadata.COMPILATION"

    const-string v7, "com.samsung.android.app.music.metadata.CHANNEL_ID"

    const-string v8, "android.media.metadata.DURATION"

    const-string v9, "com.samsung.android.app.music.metadata.ALBUM_ID"

    const-string v10, "com.samsung.android.app.music.metadata.CP_ATTRS"

    const-string v11, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    const-string v12, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    .line 477
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->MAJOR_META:[Ljava/lang/String;

    .line 564
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 574
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$EmptyMediaMetadata$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$EmptyMediaMetadata$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->EmptyMediaMetadata$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMetadata;)V
    .locals 1

    const-string v0, "meta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/media/MediaMetadata;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/media/MediaMetadata;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->access$getEmptyMediaMetadata$p(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;)Landroid/media/MediaMetadata;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lkotlin/Lazy;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Empty$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getEmptyMediaMetadata$cp()Lkotlin/Lazy;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->EmptyMediaMetadata$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final changeAttribute(Landroid/media/MediaMetadata;Ljava/lang/String;J)Landroid/media/MediaMetadata;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->changeAttribute(Landroid/media/MediaMetadata;Ljava/lang/String;J)Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final convertAudioId(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final getMajorMetaString()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->MAJOR_META:[Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getMetaString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    if-nez v1, :cond_0

    const-string p1, "No data"

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:[Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 305
    :cond_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:[Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 310
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().run {\n  \u2026\n        toString()\n    }"

    .line 297
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic queueType$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 281
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.metadata.MusicMetadata"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final getAlbum()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.ALBUM"

    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAlbumArtist()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAlbumId()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.ARTIST"

    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArtistId()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.ARTIST_ID"

    .line 51
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.app.music.metadata.CHANNEL_ID"

    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCompilation()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.COMPILATION"

    .line 40
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCpAttrs()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGenre()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.GENRE"

    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMediaId()J
    .locals 2

    .line 32
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMetadata()Landroid/media/MediaMetadata;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method public final getPlayDirection()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayingUri()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getQueuePosition()J
    .locals 2

    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getQueueSize()J
    .locals 2

    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getQueueType()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    return v0
.end method

.method public final getSoundQuality()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.app.music.metadata.SOURCE_ID"

    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.TITLE"

    .line 35
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasSameMajorMetaValues(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 295
    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMajorMetaString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMajorMetaString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAdvertisement()Z
    .locals 1

    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->isAdvertisement$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final isCeleb()Z
    .locals 1

    .line 72
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->isCeleb$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final isEditedMetadata()Z
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayDirection()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    const-string v0, "empty song"

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 77
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isExplicit()Z
    .locals 1

    .line 75
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isExplicit$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final isLocal()Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result v0

    return v0
.end method

.method public final isMusic()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->isMusic(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final isNextControllable()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isOnline()Z
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result v0

    return v0
.end method

.method public final isPrivate()Z
    .locals 1

    .line 74
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->isPrivate$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final isRadio()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->isRadio(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final isSong()Z
    .locals 1

    .line 73
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->isSong$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 275
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->DEBUG:Z

    if-nez v0, :cond_0

    .line 276
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicMetadata > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->metadata:Landroid/media/MediaMetadata;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
