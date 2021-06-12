.class public abstract Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocalPlayHistoryDatabase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom$LocalPlayHistoryDao;
.end method
