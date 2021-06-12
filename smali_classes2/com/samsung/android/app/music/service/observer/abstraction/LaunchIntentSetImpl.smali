.class Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;


# static fields
.field private static final a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;
    .locals 1

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    return-object v0
.end method


# virtual methods
.method public getLaunchIntentLockScreen(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getLaunchIntentMusic(ZI)Landroid/content/Intent;
    .locals 0

    .line 23
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
