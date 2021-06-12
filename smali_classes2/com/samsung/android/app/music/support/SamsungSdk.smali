.class public Lcom/samsung/android/app/music/support/SamsungSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/SamsungSdk$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final SUPPORT_SDL:Z

.field public static final SUPPORT_SEP:Z

.field public static final VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    xor-int/2addr v0, v1

    const v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    if-eqz v0, :cond_1

    const v0, 0x186a0

    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    :goto_1
    add-int/2addr v1, v0

    goto :goto_2

    :cond_1
    const v0, 0x30d40

    const v1, 0xf

    goto :goto_1

    :goto_2
    sput v1, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
