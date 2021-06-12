.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final COLUMN_ADDED_INDEX:Ljava/lang/String; = "addedIndex"

.field public static final COLUMN_AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final COLUMN_SOURCE_ID:Ljava/lang/String; = "source_audio_id"

.field public static final COLUMN_VIRTUAL:Ljava/lang/String; = "virtual_state"

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$Constants;

.field public static final META_TABLE_NAME:Ljava/lang/String; = "meta"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 369
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$Constants;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$Constants;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$Constants;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
