.class public abstract Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RestApiHistoryDatabase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistoryDao;
.end method
