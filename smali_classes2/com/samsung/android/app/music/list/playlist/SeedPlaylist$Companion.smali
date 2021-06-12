.class public final Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/database/Cursor;)Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;
    .locals 3

    const-string v0, "local"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;-><init>()V

    const/4 v1, 0x0

    .line 458
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local.getString(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->setTrackId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 459
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->setAudioType(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 460
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/playlist/SeedPlaylist;->setPlayType(I)V

    return-object v0
.end method
