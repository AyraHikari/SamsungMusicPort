.class synthetic Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 263
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->values()[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$4;->a:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$4;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->CONNECTED:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$4;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->MOBILE_DATA_USAGE_OFF:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$4;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->DISCONNECTED_ALL:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
