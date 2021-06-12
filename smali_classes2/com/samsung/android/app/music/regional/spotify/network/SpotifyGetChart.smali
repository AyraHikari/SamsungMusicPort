.class public final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;->a:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;

    .line 18
    const-class v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;->b:Ljava/lang/String;

    return-object v0
.end method
