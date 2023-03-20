.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
.super Ljava/lang/Object;
.source "MusicMetadata.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$MetaForRestore;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;

.field public static final c:Z

.field public static final d:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final o:Lkotlin/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/g<",
            "Landroid/media/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/media/MediaMetadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->b:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$b;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$b;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->d:Lkotlin/g;

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

    .line 2
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->e:[Ljava/lang/String;

    const-string v1, "android.media.metadata.DURATION"

    const-string v2, "com.samsung.android.app.music.metadata.ALBUM_ID"

    const-string v3, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    const-string v5, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    const-string v6, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    const-string v7, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    const-string v8, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    .line 4
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->f:[Ljava/lang/String;

    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->g:[Ljava/lang/String;

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

    .line 7
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->h:[Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$a;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$a;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$c;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$c;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o:Lkotlin/g;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMetadata;)V
    .locals 1

    const-string v0, "meta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->a:Landroid/media/MediaMetadata;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/media/MediaMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/media/MediaMetadata;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->b:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;->a(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;)Landroid/media/MediaMetadata;

    move-result-object p1

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->a:Landroid/media/MediaMetadata;

    return-void
.end method

.method public static final synthetic a()Lkotlin/g;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->d:Lkotlin/g;

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/g;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o:Lkotlin/g;

    return-object v0
.end method


# virtual methods
.method public final B()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->a:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;->b(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final K()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/d;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/d;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/d;->a(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final M()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final N()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;->d(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final O()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->t()J

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

.method public final P()Z
    .locals 2

    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty song"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final U()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/a;->b(I)Z

    move-result v0

    return v0
.end method

.method public final X()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/c;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/c;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/c;->b(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final Z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->K()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/a;->c(I)Z

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d0()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/b;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.v3.aidl.model.MusicMetadata"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->p()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->p()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f0()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/c;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/c;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/c;->c(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.ARTIST_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h0()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/d;->a:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/d;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/d;->b(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->a:Landroid/media/MediaMetadata;

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.app.music.metadata.CHANNEL_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->l()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/p;->a:Lcom/samsung/android/app/musiclibrary/ui/util/p;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/p;->n(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k0(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 2

    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.GENRE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o(Ljava/lang/String;)J
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->a:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()J
    .locals 2

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->b:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$d;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->a:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method public final t()J
    .locals 2

    const-string v0, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->o(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->c:Z

    const/16 v1, 0x5d

    const-string v2, " sourceId:"

    const-string v3, "MusicMetadata[mediaId:"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->p()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->p()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->a:Landroid/media/MediaMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.app.music.metadata.PLAYING_URI"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
