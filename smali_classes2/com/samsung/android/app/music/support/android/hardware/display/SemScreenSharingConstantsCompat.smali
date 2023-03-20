.class public Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;
.super Ljava/lang/Object;
.source "SemScreenSharingConstantsCompat.java"


# static fields
.field public static final NOT_SUPPORT:I

.field public static final SUPPORT_ALL:I

.field public static final SUPPORT_DLNA:I

.field public static final SUPPORT_MIRRORING:I

.field public static final TYPE_IMAGE:I

.field public static final TYPE_MUSIC:I

.field public static final TYPE_VIDEO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->NOT_SUPPORT:I

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    const/4 v1, 0x2

    .line 4
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_DLNA:I

    const/4 v2, 0x1

    .line 5
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_MIRRORING:I

    .line 6
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_IMAGE:I

    .line 7
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    .line 8
    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_VIDEO:I

    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_NOT_SUPPORT:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->NOT_SUPPORT:I

    .line 10
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_ALL:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    .line 11
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_DLNA:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_DLNA:I

    .line 12
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_MIRRORING:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_MIRRORING:I

    .line 13
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_IMAGE:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_IMAGE:I

    .line 14
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_MUSIC:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    .line 15
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_VIDEO:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_VIDEO:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
