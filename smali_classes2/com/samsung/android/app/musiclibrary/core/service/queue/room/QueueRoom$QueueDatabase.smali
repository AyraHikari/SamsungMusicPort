.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QueueDatabase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMetaDao$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Meta$MetaDao;
.end method

.method public abstract getPlayListDao$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$PlayListDao;
.end method

.method public abstract getQueueDao$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$QueueDao;
.end method
