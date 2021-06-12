.class Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarshmallowDisplayManagerCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$MarshmallowDisplayManagerCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I
    .locals 0

    .line 120
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->checkScreenSharingSupported()I

    move-result p1

    return p1
.end method

.method public isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z
    .locals 0

    .line 125
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result p1

    return p1
.end method
