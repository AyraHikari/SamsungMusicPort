.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;

.field public static final UNDEFINED_AUDIO_SESSION:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
