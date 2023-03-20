.class public final Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;
.super Ljava/lang/Object;
.source "QuickConnectManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

.field private final mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

.field private final mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    const-string v0, "quickconnect"

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/quickconnect/QuickConnectManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    return-object p0
.end method


# virtual methods
.method public registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x837

    .line 3
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/quickconnect/QuickConnectManager;->registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    return-void
.end method

.method public terminate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/quickconnect/QuickConnectManager;->unregisterListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V

    return-void
.end method
