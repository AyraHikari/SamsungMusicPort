.class public Lcom/samsung/android/app/music/support/sdl/Sdl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/Sdl;->getSdlVersion()I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSdlVersion()I
    .locals 1

    .line 10
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
