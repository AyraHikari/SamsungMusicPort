.class public Lcom/samsung/android/app/music/support/sdl/android/os/UserHandleSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OWNER:Landroid/os/UserHandle;

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_OWNER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/os/UserHandleSdlCompat;->OWNER:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final myUserId()I
    .locals 1

    .line 14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method
