.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;

.field public static final PLAYER:I = 0x0

.field public static final RADIO:I = 0x1

.field public static final SPOTIFY:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
