.class public Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;
.super Ljava/lang/Object;
.source "QuickConnectManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;,
        Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;
    }
.end annotation


# instance fields
.field private final mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

.field private final mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    .line 4
    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    .line 6
    new-instance p1, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;-><init>(Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    :goto_0
    return-void
.end method


# virtual methods
.method public registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;->setListener(Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;)V

    return-void
.end method

.method public terminate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->terminate()V

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->unregisterListener()V

    return-void
.end method
