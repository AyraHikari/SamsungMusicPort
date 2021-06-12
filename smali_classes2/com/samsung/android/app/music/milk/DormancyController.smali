.class public final Lcom/samsung/android/app/music/milk/DormancyController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/DormancyController$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/DormancyController$Companion;


# instance fields
.field private b:Lkotlinx/coroutines/Job;

.field private c:Z

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/DormancyController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/DormancyController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/DormancyController;->a:Lcom/samsung/android/app/music/milk/DormancyController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/DormancyController;->d:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/DormancyController;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/DormancyController;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/DormancyController;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/DormancyController;->c:Z

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/DormancyController;->b:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    .line 23
    :cond_0
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/music/milk/DormancyController$onUserInteraction$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/app/music/milk/DormancyController$onUserInteraction$1;-><init>(Lcom/samsung/android/app/music/milk/DormancyController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/DormancyController;->b:Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/DormancyController;->b:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->k()V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/DormancyController;->c:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/DormancyController;->c:Z

    :cond_1
    return-void
.end method
