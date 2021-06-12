.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenSharing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing$Share;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing$SharingMode;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing$DLNA;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing$WFD;
    }
.end annotation


# static fields
.field public static final EXTRA_MORE_PACKAGE_NAME:Ljava/lang/String; = "more_actions_package_name"

.field private static final FROM_SEP_2403:Z

.field private static final SUPPORT_CHROME_CAST:Z

.field public static final SUPPORT_LIST_SMART_VIEW:Z

.field private static final SUPPORT_SMART_VIEW_VOLUME_CONTROL:Z

.field public static final TYPE_MUSIC_CHN:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x316a2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->FROM_SEP_2403:Z

    .line 122
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->FROM_SEP_2403:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->SUPPORT_LIST_SMART_VIEW:Z

    .line 127
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->FROM_SEP_2403:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->SUPPORT_SMART_VIEW_VOLUME_CONTROL:Z

    .line 132
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->FROM_SEP_2403:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->SUPPORT_CHROME_CAST:Z

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    const-string v0, "android.hardware.display.SemScreenSharingConstants"

    const-string v1, "TYPE_MUSIC_CHN"

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 143
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->TYPE_MUSIC_CHN:I

    goto :goto_1

    :cond_1
    const-string v0, "android.hardware.display.ScreenSharingField"

    const-string v1, "SCREEN_SHARING_TYPE_MUSIC_CHN"

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 147
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->TYPE_MUSIC_CHN:I

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->SUPPORT_SMART_VIEW_VOLUME_CONTROL:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;->SUPPORT_CHROME_CAST:Z

    return v0
.end method
