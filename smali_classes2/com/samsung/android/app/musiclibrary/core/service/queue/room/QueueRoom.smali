.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueRepository;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueItem;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final PRIMARY_DATABASE_NAME:Ljava/lang/String; = "queue"

.field private static final SUB_TAG:Ljava/lang/String; = "QueueRoom"

.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;

    return-void
.end method
