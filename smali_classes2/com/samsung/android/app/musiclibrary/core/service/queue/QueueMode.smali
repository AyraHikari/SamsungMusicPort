.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$SortMode;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$Union;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$Repeat;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$PlayMode;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ShufflePosition;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$Shuffle;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$Value;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$Mode;
    }
.end annotation


# static fields
.field public static final REPEAT:I = 0x1

.field public static final SHUFFLE:I = 0x2

.field public static final SORT_MODE:I = 0x4

.field public static final UNDEFINED:I = -0x1

.field public static final UNION_REPEAT_SHUFFLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
