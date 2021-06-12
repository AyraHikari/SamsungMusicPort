.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/Job;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$rootJob$2;->invoke()Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/Job;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 502
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->a(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method
