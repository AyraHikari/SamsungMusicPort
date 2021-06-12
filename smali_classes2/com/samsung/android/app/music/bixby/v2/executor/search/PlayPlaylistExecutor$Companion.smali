.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 0

    .line 305
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;

    invoke-direct {v1, p2, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
