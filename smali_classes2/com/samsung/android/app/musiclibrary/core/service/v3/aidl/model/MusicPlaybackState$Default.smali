.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Default;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final DEFAULT_PLAY_SPEED:F = 1.0f

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Default;

.field public static final MAX_BUFFERING_PERCENT:I = 0x64

.field public static final UNDEFINED_DURATION:J = -0x1L

.field public static final UNDEFINED_SEEK_POSITION:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Default;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Default;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Default;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Default;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
