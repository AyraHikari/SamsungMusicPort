.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$AppDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppDatabase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract streamingCacheDao()Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheRoom$StreamingCacheDao;
.end method
