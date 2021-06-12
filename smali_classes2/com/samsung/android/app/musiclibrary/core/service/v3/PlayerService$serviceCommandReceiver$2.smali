.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$serviceCommandReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$serviceCommandReceiver$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;
    .locals 4

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$serviceCommandReceiver$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$getActiveMediaCenter$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;Landroid/util/SparseArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$serviceCommandReceiver$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;

    move-result-object v0

    return-object v0
.end method
