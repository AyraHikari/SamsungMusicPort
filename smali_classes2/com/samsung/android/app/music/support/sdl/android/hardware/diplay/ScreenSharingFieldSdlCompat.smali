.class public Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCREEN_SHARING_NOT_SUPPORT:I

.field public static final SCREEN_SHARING_STATE_PAUSED:I

.field public static final SCREEN_SHARING_STATE_RESUMED:I

.field public static final SCREEN_SHARING_SUPPORT_ALL:I

.field public static final SCREEN_SHARING_SUPPORT_DLNA:I

.field public static final SCREEN_SHARING_SUPPORT_MIRRORING:I

.field public static final SCREEN_SHARING_TYPE_IMAGE:I

.field public static final SCREEN_SHARING_TYPE_MUSIC:I

.field public static final SCREEN_SHARING_TYPE_VIDEO:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x17

    if-lt v0, v7, :cond_0

    .line 31
    sput v3, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_NOT_SUPPORT:I

    .line 32
    sput v2, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_STATE_PAUSED:I

    .line 33
    sput v1, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_STATE_RESUMED:I

    .line 34
    sput v6, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_ALL:I

    .line 35
    sput v5, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_DLNA:I

    .line 36
    sput v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_MIRRORING:I

    .line 37
    sput v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_IMAGE:I

    .line 38
    sput v5, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_MUSIC:I

    .line 39
    sput v6, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_VIDEO:I

    goto :goto_0

    .line 42
    :cond_0
    sput v3, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_NOT_SUPPORT:I

    .line 43
    sput v2, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_STATE_PAUSED:I

    .line 44
    sput v1, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_STATE_RESUMED:I

    .line 45
    sput v6, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_ALL:I

    .line 46
    sput v5, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_DLNA:I

    .line 47
    sput v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_MIRRORING:I

    .line 48
    sput v4, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_IMAGE:I

    .line 49
    sput v5, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_MUSIC:I

    .line 50
    sput v6, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_VIDEO:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
