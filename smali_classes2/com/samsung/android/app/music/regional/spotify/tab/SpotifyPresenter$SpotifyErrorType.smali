.class final enum Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SpotifyErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

.field public static final enum NO_CONNECTION:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

.field public static final enum NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

.field public static final enum TIME_OUT:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;


# instance fields
.field private final mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 223
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    const-string v1, "NO_ERROR"

    const-string v2, "No error !!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    const-string v1, "TIME_OUT"

    const-string v2, "Time out !"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->TIME_OUT:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    const-string v1, "NO_CONNECTION"

    const-string v2, "No connection !!"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    const/4 v0, 0x3

    .line 222
    new-array v0, v0, [Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_ERROR:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->TIME_OUT:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->$VALUES:[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;
    .locals 1

    .line 222
    const-class v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;
    .locals 1

    .line 222
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->$VALUES:[Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter$SpotifyErrorType;->mMessage:Ljava/lang/String;

    return-object v0
.end method
