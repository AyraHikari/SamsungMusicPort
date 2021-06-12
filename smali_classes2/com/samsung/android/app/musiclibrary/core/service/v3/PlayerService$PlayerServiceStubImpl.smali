.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService$Stub;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerServiceStubImpl"
.end annotation


# instance fields
.field private final playerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V
    .locals 1

    const-string v0, "playerService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;->playerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    return-void
.end method


# virtual methods
.method public getPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;->playerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$getPlayerParcels$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getService()Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;->playerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    return-object v0
.end method

.method public registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOnPlayerChangedCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;->playerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V

    return-void
.end method

.method public unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterOnPlayerChangedCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;->playerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->access$unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V

    return-void
.end method
