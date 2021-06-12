.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dormancyController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dormancyController$2;->this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;
    .locals 2

    .line 16
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dormancyController$2;->this$0:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$dormancyController$2;->invoke()Lcom/samsung/android/app/music/service/metadata/uri/milk/DormancyController;

    move-result-object v0

    return-object v0
.end method
