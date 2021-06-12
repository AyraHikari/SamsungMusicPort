.class public Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OWNER:Landroid/os/UserHandle;

.field public static final USER_CURRENT:I

.field public static final USER_OWNER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, -0x2

    sput v0, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_CURRENT:I

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_OWNER:I

    .line 16
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/os/UserHandleSdlCompat;->OWNER:Landroid/os/UserHandle;

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->OWNER:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final myUserId()I
    .locals 1

    .line 20
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    return v0

    .line 23
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/os/UserHandleSdlCompat;->myUserId()I

    move-result v0

    return v0
.end method
