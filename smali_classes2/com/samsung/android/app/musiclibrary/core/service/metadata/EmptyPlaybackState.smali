.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-object v0
.end method
