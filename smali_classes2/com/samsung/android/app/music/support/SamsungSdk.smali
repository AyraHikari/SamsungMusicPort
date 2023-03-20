.class public Lcom/samsung/android/app/music/support/SamsungSdk;
.super Ljava/lang/Object;
.source "SamsungSdk.java"


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
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    xor-int/lit8 v1, v0, 0x1

    .line 2
    sput-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const v0, 0x186a0

    .line 3
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    goto :goto_1

    :cond_1
    const v0, 0x30d40

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SEM_INT:I

    :goto_1
    add-int/2addr v1, v0

    sput v1, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
