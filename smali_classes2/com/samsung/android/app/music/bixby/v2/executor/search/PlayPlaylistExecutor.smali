.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
