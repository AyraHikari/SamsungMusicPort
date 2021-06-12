.class public final Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/SpotifyContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chart"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;

.field private static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a:Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;

    const-string v0, "content://com.sec.android.app.music/spotify/chart"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"${MusicConten\u2026ITY_SLASH}spotify/chart\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->b:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->b:Landroid/net/Uri;

    return-object v0
.end method
