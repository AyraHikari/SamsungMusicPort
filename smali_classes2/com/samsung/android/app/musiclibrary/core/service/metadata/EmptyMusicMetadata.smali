.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 4

    .line 9
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_1

    .line 10
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;-><init>()V

    const-string v2, "android.media.metadata.MEDIA_ID"

    const-string v3, "empty song"

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method
