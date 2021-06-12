.class final enum Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

.field public static final enum CONNECTED:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

.field public static final enum DISCONNECTED_ALL:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

.field public static final enum MOBILE_DATA_USAGE_OFF:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 625
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    const-string v1, "DISCONNECTED_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->DISCONNECTED_ALL:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    const-string v1, "MOBILE_DATA_USAGE_OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->MOBILE_DATA_USAGE_OFF:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    const-string v1, "CONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->CONNECTED:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    const/4 v0, 0x3

    .line 624
    new-array v0, v0, [Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->DISCONNECTED_ALL:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->MOBILE_DATA_USAGE_OFF:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->CONNECTED:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->$VALUES:[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 630
    iput p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;
    .locals 1

    .line 624
    const-class v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;
    .locals 1

    .line 624
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->$VALUES:[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    return-object v0
.end method
