.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Mode;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Value;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Shuffle;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;

.field public static final REPEAT:I = 0x1

.field public static final SHUFFLE:I = 0x2

.field public static final SORT_MODE:I = 0x4

.field public static final UNDEFINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
