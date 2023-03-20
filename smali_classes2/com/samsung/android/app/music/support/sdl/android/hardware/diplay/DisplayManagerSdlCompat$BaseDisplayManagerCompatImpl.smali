.class Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;
.super Ljava/lang/Object;
.source "DisplayManagerSdlCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseDisplayManagerCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
