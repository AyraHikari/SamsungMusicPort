.class final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;
    .locals 2

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 81
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;-><init>()V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;-><init>()V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$audioSession$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;

    move-result-object v0

    return-object v0
.end method
