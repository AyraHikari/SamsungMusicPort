.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition$Companion;

.field public static final PLAY_ALL_POSITION:I = -0x2

.field public static final SELECTED_POSITION:I = 0x0

.field public static final SHUFFLE_ALL_POSITION:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ShufflePosition$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
