.class public final Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "quickconnect"

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    return-object p0
.end method


# virtual methods
.method public registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;)V
    .locals 2

    return-void
.end method

.method public terminate()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager;->terminate()V

    :cond_1
    return-void
.end method

.method public unregisterListener()V
    .locals 2

    return-void
.end method
