.class public Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;
.super Ljava/lang/Object;
.source "GestureManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;
    }
.end annotation


# static fields
.field public static final GESTURE_IR_PROVIDER:Ljava/lang/String; = "ir_provider"

.field public static final GESTURE_TYPE_AIR_BROWSE:Ljava/lang/String; = "air_motion_turn"

.field public static final TAG:Ljava/lang/String; = "GestureManagerSdlCompat"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mIsConnected:Z

.field private mIsSupportLandscape:Z

.field private mNeedToRegister:Z

.field private mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsSupportLandscape:Z

    .line 5
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/service/gesture/GestureManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    return-object p0
.end method

.method private registerGestureListener()V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsSupportLandscape:Z

    const-string v3, "ir_provider"

    const-string v4, "air_motion_turn"

    .line 10
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public registerGestureEventChangedListener(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    return-void
.end method

.method public registerGestureListener(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsSupportLandscape:Z

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 4
    iget-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterGestureListener()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

    const-string v2, "ir_provider"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
