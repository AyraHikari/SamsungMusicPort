.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerParcels$2;
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
        "Ljava/util/List<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerParcels$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerParcels$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerParcels$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$getPlayers$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 276
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 277
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 64
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .line 65
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
